<#
.SYNOPSIS
    Convierte automticamente un archivo Markdown (.md) a Word (.docx)
    aplicando el estilo corporativo oficial de ERP Dialyma / Clnica La Luz.

.PARAMETER MarkdownPath
    Ruta del archivo Markdown de entrada.

.PARAMETER ReferenceDocxPath
    Ruta del archivo Word base / plantilla de referencia.

.PARAMETER OutputDocxPath
    Ruta del archivo Word de salida resultante.

.PARAMETER SubmoduleName
    Nombre del submdulo para encabezado y ttulo (por defecto: 'Maestros').
#>

param(
    [string]$MarkdownPath = "c:\Users\user\Documents\documentacion\Modulos-ERP\modulo-cuentas-por-pagar\maestros\paquete_de_documentaci_n_maestros_cxp.md",
    [string]$ReferenceDocxPath = "c:\Users\user\Documents\documentacion\Modulos-ERP\modulo-cuentas-por-pagar\maestros\Maestros- Paquete de documentacin.docx",
    [string]$OutputDocxPath = "c:\Users\user\Documents\documentacion\Modulos-ERP\modulo-cuentas-por-pagar\maestros\Maestros- Paquete de documentacin.docx",
    [string]$ModuleName = "Cuentas por Pagar",
    [string]$SubmoduleName = "Maestros"
)

$ErrorActionPreference = "Stop"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " AUTOMATIZACIN: CONVERSIN DE MARKDOWN A WORD CORPORATIVO " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Resolver rutas exactas (manejando acentos y caracteres especiales)
$folder = Split-Path $MarkdownPath -Parent
if (-not (Test-Path -LiteralPath $MarkdownPath)) {
    $mdFound = (Get-ChildItem $folder -Filter "*.md" | Select-Object -First 1)
    if ($mdFound) { $MarkdownPath = $mdFound.FullName }
}
if (-not (Test-Path -LiteralPath $ReferenceDocxPath)) {
    $docxFound = (Get-ChildItem $folder -Filter "*.docx" | Where-Object { $_.Name -notmatch "backup" } | Select-Object -First 1)
    if ($docxFound) { $ReferenceDocxPath = $docxFound.FullName }
}

Write-Host "Markdown de origen: $MarkdownPath"
Write-Host "Plantilla Word base: $ReferenceDocxPath"

# 2. Respaldar el archivo Word original si coincide con la salida
if ((Test-Path -LiteralPath $OutputDocxPath) -and ($OutputDocxPath -eq $ReferenceDocxPath)) {
    $backupPath = [System.IO.Path]::Combine($folder, "$([System.IO.Path]::GetFileNameWithoutExtension($ReferenceDocxPath)).backup.docx")
    if (-not (Test-Path -LiteralPath $backupPath)) {
        Copy-Item -LiteralPath $ReferenceDocxPath -Destination $backupPath -Force
        Write-Host "Respaldo del Word original creado en: $backupPath" -ForegroundColor Green
    }
}

# 3. Preparar directorio temporal
$runId = [System.Guid]::NewGuid().ToString("N").Substring(0, 8)
$tempDir = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "md_word_conversion_$runId")
if (-not (Test-Path $tempDir)) { New-Item -ItemType Directory -Path $tempDir -Force | Out-Null }

$tempMd = [System.IO.Path]::Combine($tempDir, "input_clean.md")
$tempRef = [System.IO.Path]::Combine($tempDir, "template.docx")
$tempOut = [System.IO.Path]::Combine($tempDir, "intermediate.docx")

Copy-Item -LiteralPath $ReferenceDocxPath -Destination $tempRef -Force

# 4. Preprocesar Markdown: transformar callouts (> [!NOTE], > [!IMPORTANT]) en tablas 1x1 estéticas
Write-Host "Preprocesando estructura de Markdown y notas..." -ForegroundColor Yellow
$mdLines = Get-Content -LiteralPath $MarkdownPath -Encoding UTF8

$processedLines = [System.Collections.Generic.List[string]]::new()
$inCallout = $false
$calloutType = ""
$calloutLines = [System.Collections.Generic.List[string]]::new()

foreach ($line in $mdLines) {
    if ($line -match "^>\s*\[!(NOTE|IMPORTANT|TIP|WARNING|CAUTION)\]") {
        $inCallout = $true
        $calloutType = $matches[1]
        $calloutLines.Clear()
        continue
    }
    
    if ($inCallout) {
        if ($line -match "^>\s?(.*)") {
            $calloutLines.Add($matches[1])
            continue
        } else {
            # Fin del callout: construir tabla 1x1
            $inCallout = $false
            $badge = switch ($calloutType) {
                "NOTE"      { " **NOTA INFORMATIVA:**" }
                "IMPORTANT" { " **CONSIDERACIN IMPORTANTE:**" }
                "WARNING"   { " **ADVERTENCIA:**" }
                default     { " **NOTA:**" }
            }
            $calloutContent = ($calloutLines -join "<br>") -replace "\|", "&#124;"
            $processedLines.Add("")
            $processedLines.Add("| $badge<br>$calloutContent |")
            $processedLines.Add("| :--- |")
            $processedLines.Add("")
        }
    }
    
    $processedLines.Add($line)
}

if ($inCallout) {
    $badge = switch ($calloutType) {
        "NOTE"      { " **NOTA INFORMATIVA:**" }
        "IMPORTANT" { " **CONSIDERACIN IMPORTANTE:**" }
        default     { " **NOTA:**" }
    }
    $calloutContent = ($calloutLines -join "<br>") -replace "\|", "&#124;"
    $processedLines.Add("")
    $processedLines.Add("| $badge<br>$calloutContent |")
    $processedLines.Add("| :--- |")
    $processedLines.Add("")
}

# Guardar Markdown limpio
[System.IO.File]::WriteAllLines($tempMd, $processedLines, [System.Text.Encoding]::UTF8)

# 5. Ejecutar Pandoc para transformar Markdown a DOCX base
$pandocExe = "C:\Users\user\AppData\Local\Pandoc\pandoc.exe"
if (-not (Test-Path $pandocExe)) {
    $pandocExe = (Get-Command pandoc -ErrorAction SilentlyContinue).Source
}

Write-Host "Ejecutando Pandoc con documento de referencia..." -ForegroundColor Yellow
if (Test-Path $tempOut) { Remove-Item $tempOut -Force }

& $pandocExe "$tempMd" --reference-doc="$tempRef" -o "$tempOut"

if (-not (Test-Path $tempOut)) {
    throw "Error: Pandoc no pudo generar el archivo intermedio."
}

Write-Host "Pandoc gener la estructura base con xito!" -ForegroundColor Green

# 6. Post-procesar con Word COM Automation para aplicar maquetacin y estilos exactos
Write-Host "Aplicando estilos visuales corporativos en Word..." -ForegroundColor Yellow

$word = New-Object -ComObject Word.Application
$word.Visible = $false
$word.DisplayAlerts = 0

try {
    $doc = $word.Documents.Open($tempOut)
    
    # 6.1 Mrgenes de pgina: 20 mm exactos
    $doc.PageSetup.TopMargin = 56.7
    $doc.PageSetup.BottomMargin = 56.7
    $doc.PageSetup.LeftMargin = 56.7
    $doc.PageSetup.RightMargin = 56.7
    
    # 6.2 Encabezado oficial con lnea azul inferior
    $section = $doc.Sections.Item(1)
    $header = $section.Headers.Item(1)
    $header.Range.Text = "ERP Dialyma  $ModuleName  $SubmoduleName  Paquete de documentacin"
    $header.Range.Font.Name = "Calibri"
    $header.Range.Font.Size = 9
    $header.Range.Font.Color = 0x806B56 # #566B80
    $header.Range.ParagraphFormat.Borders.Item(-3).LineStyle = 1
    $header.Range.ParagraphFormat.Borders.Item(-3).LineWidth = 6
    $header.Range.ParagraphFormat.Borders.Item(-3).Color = 0xD37500 # #0075D3
    
    # 6.3 Pie de pgina oficial con nmero dinmico
    $footer = $section.Footers.Item(1)
    $footer.Range.Text = "CLINICA LA LUZ SAC  Pgina "
    $footer.Range.Font.Name = "Calibri"
    $footer.Range.Font.Size = 9
    $footer.Range.Font.Color = 0x806B56
    $footer.Range.ParagraphFormat.Alignment = 2 # Derecha
    $footerRange = $footer.Range
    $footerRange.Collapse(0)
    $doc.Fields.Add($footerRange, 33) | Out-Null
    
    # 6.4 Configurar estilos nativos rpidamente
    try {
        $st1 = $doc.Styles.Item("Ttulo 1")
        $st1.Font.Name = "Cambria"
        $st1.Font.Size = 15
        $st1.Font.Bold = 1
        $st1.Font.Color = 0x633A12 # Navy #123A63
        $st1.ParagraphFormat.SpaceBefore = 14
        $st1.ParagraphFormat.SpaceAfter = 6
        $st1.ParagraphFormat.KeepWithNext = -1
    } catch {}
    
    try {
        $st2 = $doc.Styles.Item("Ttulo 2")
        $st2.Font.Name = "Cambria"
        $st2.Font.Size = 12.5
        $st2.Font.Bold = 1
        $st2.Font.Color = 0xD37500 # Royal Blue #0075D3
        $st2.ParagraphFormat.SpaceBefore = 12
        $st2.ParagraphFormat.SpaceAfter = 4
        $st2.ParagraphFormat.KeepWithNext = -1
    } catch {}
    
    try {
        $st3 = $doc.Styles.Item("Ttulo 3")
        $st3.Font.Name = "Cambria"
        $st3.Font.Size = 11
        $st3.Font.Bold = 1
        $st3.Font.Color = 0x633A12
        $st3.ParagraphFormat.SpaceBefore = 10
        $st3.ParagraphFormat.SpaceAfter = 3
        $st3.ParagraphFormat.KeepWithNext = -1
    } catch {}

    # 6.5 Ajustar los prrafos iniciales de portada/encabezado
    if ($doc.Paragraphs.Count -ge 3) {
        $p1 = $doc.Paragraphs.Item(1)
        $p1.Range.Text = "PAQUETE DE DOCUMENTACIN`r"
        $p1.Style = $doc.Styles.Item("Normal")
        $p1.Range.Font.Name = "Calibri"
        $p1.Range.Font.Size = 11
        $p1.Range.Font.Bold = 1
        $p1.Range.Font.Color = 0x2E10C8 # Crimson #C8102E
        $p1.Range.ParagraphFormat.SpaceBefore = 24
        $p1.Range.ParagraphFormat.SpaceAfter = 4

        $p2 = $doc.Paragraphs.Item(2)
        $p2.Range.Text = "$SubmoduleName`r"
        $p2.Style = $doc.Styles.Item("Normal")
        $p2.Range.Font.Name = "Cambria"
        $p2.Range.Font.Size = 28
        $p2.Range.Font.Bold = 1
        $p2.Range.Font.Color = 0x633A12 # Navy #123A63
        $p2.Range.ParagraphFormat.SpaceBefore = 0
        $p2.Range.ParagraphFormat.SpaceAfter = 6

        $p3 = $doc.Paragraphs.Item(3)
        $p3.Range.Text = "Mdulo de $ModuleName  ERP Dialyma (Sistema SAMI)`r"
        $p3.Style = $doc.Styles.Item("Normal")
        $p3.Range.Font.Name = "Calibri"
        $p3.Range.Font.Size = 13
        $p3.Range.Font.Bold = 0
        $p3.Range.Font.Color = 0xD37500 # #0075D3
        $p3.Range.ParagraphFormat.SpaceBefore = 0
        $p3.Range.ParagraphFormat.SpaceAfter = 16
    }
    
    # 6.6 Formatear todas las tablas
    Write-Host "Formateando $($doc.Tables.Count) tablas con diseo profesional..." -ForegroundColor Yellow
    for ($t = 1; $t -le $doc.Tables.Count; $t++) {
        $tbl = $doc.Tables.Item($t)
        
        $borderColor = 0xEFCAA4 # #A4CAEF (celeste pastel suave)
        try {
            $tbl.Borders.OutsideLineStyle = 1
            $tbl.Borders.OutsideLineWidth = 4
            $tbl.Borders.OutsideColor = $borderColor
        } catch {}
        
        if ($tbl.Rows.Count -gt 1 -or $tbl.Columns.Count -gt 1) {
            try {
                $tbl.Borders.InsideLineStyle = 1
                $tbl.Borders.InsideLineWidth = 4
                $tbl.Borders.InsideColor = $borderColor
            } catch {}
        }
        
        $tbl.PreferredWidthType = 3
        $tbl.PreferredWidth = 482
        
        # Caso A: Tabla 1 (Metadatos del documento)
        if ($t -eq 1 -and $tbl.Columns.Count -eq 2) {
            $tbl.Columns.Item(1).PreferredWidth = 130
            $tbl.Columns.Item(2).PreferredWidth = 352
            
            for ($r = 1; $r -le $tbl.Rows.Count; $r++) {
                $c1 = $tbl.Cell($r, 1)
                $c1.Shading.BackgroundPatternColor = 0xFBEFE4 # #E4EFFB
                $c1.Range.Font.Name = "Calibri"
                $c1.Range.Font.Size = 10
                $c1.Range.Font.Bold = 1
                $c1.Range.ParagraphFormat.SpaceAfter = 2
                
                $c2 = $tbl.Cell($r, 2)
                $c2.Shading.BackgroundPatternColor = 0xFFFFFF
                $c2.Range.Font.Name = "Calibri"
                $c2.Range.Font.Size = 10
                $c2.Range.ParagraphFormat.SpaceAfter = 2
            }
        }
        # Caso B: Tabla 1x1 (Cajas de Notas / Advertencias)
        elseif ($tbl.Columns.Count -eq 1 -and $tbl.Rows.Count -eq 1) {
            $cell = $tbl.Cell(1, 1)
            $cellText = $cell.Range.Text
            if ($cellText -match "IMPORTANTE|ADVERTENCIA") {
                $cell.Shading.BackgroundPatternColor = 0xDDFAFF # Crema suave para alertas
            } else {
                $cell.Shading.BackgroundPatternColor = 0xFBEFE4 # Azul tenue para notas
            }
            $cell.Range.Font.Name = "Calibri"
            $cell.Range.Font.Size = 10
            $cell.Range.ParagraphFormat.SpaceAfter = 3
        }
        # Caso C: Tablas de datos estndar
        else {
            # Encabezado oscuro institucional
            $headerRow = $tbl.Rows.Item(1)
            $headerRow.HeadingFormat = -1 # Repetir encabezado en cada pgina
            
            for ($c = 1; $c -le $tbl.Columns.Count; $c++) {
                $cell = $tbl.Cell(1, $c)
                $cell.Shading.BackgroundPatternColor = 0x633A12 # Navy #123A63
                $cell.Range.Font.Name = "Calibri"
                $cell.Range.Font.Size = 10
                $cell.Range.Font.Bold = 1
                $cell.Range.Font.Color = 0xFFFFFF
                $cell.Range.ParagraphFormat.SpaceAfter = 2
            }
            
            # Filas de datos
            for ($r = 2; $r -le $tbl.Rows.Count; $r++) {
                for ($c = 1; $c -le $tbl.Columns.Count; $c++) {
                    $cell = $tbl.Cell($r, $c)
                    $cell.Range.Font.Name = "Calibri"
                    $cell.Range.Font.Size = 10
                    $cell.Range.ParagraphFormat.SpaceAfter = 2
                    
                    if ($c -eq 1 -and $cell.Range.Text -match "(DOC-|CP-|INT-|PR-|Metadato|●|[0-9]+)") {
                        $cell.Range.Font.Bold = 1
                    }
                }
            }
        }
    }
    
    # 6.7 Guardar en la ruta de salida definitiva
    $destPath = [System.IO.Path]::GetFullPath($OutputDocxPath)
    Write-Host "Guardando documento definitivo en: $destPath" -ForegroundColor Green
    $doc.SaveAs([ref]$destPath)
    $doc.Close()
}
finally {
    $word.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
    [System.GC]::Collect()
    [System.GC]::WaitForPendingFinalizers()
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host " XITO: Documento Word generado con estilos idnticos!     " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
