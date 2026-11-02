# LEVANTAMIENTO TÉCNICO Y REVISIÓN DE PANTALLAS
### Submódulo: Movimientos (Cuentas por Pagar)
**ERP Dialyma · Sistema SAMI | Clínica La Luz SAC**

| Metadato | Detalle |
| :--- | :--- |
| **Módulo** | Cuentas por Pagar |
| **Submódulo** | Movimientos (12 ítems del menú) |
| **Fecha de revisión** | 30/10/2026 |
| **Objetivo del documento** | Registrar de manera exhaustiva el inventario funcional y técnico, ventanas reales, discrepancias de nomenclatura, campos, botones, modales y flujos de las 12 opciones del submódulo Movimientos. |
| **Estado** | **100% Auditado y Verificado** (Base técnica para la futura documentación oficial). |

---

## 1. Mapa General de Opciones: Menú SAMI vs. Ventana Real

Se detectaron discrepancias de nomenclatura donde el nombre del menú en el árbol lateral difiere del título oficial de la ventana ejecutada:

| Opción en Menú SAMI | Título Real de la Ventana en ERP | Arquitectura / Tipo de Pantalla | Comportamiento Clave del Sistema |
| :--- | :--- | :--- | :--- |
| **1. Recepcion de Documentos** | `Recepción de documentos` | Grilla de control con filtros y modal de registro | Punto de partida del circuito físico (Mesa de partes / Archivo). |
| **2. Provision Documentos** | `Provisión de dctos.` | Pantalla de doble pestaña (`Provisión` y `Asiento Contable`) | Motor neurálgico de compras; enlace contable directo. |
| **3. Registro Letras** | `Registro de Letras por Pagar` | Maestro-Detalle con doble sub-grilla | Canje de facturas por letras comerciales a plazo. |
| **4. Obligaciones De Pago** | `Obligaciones de Pago` | Grilla interactiva masiva ($\ge 156,000$ registros) | Reprogramación y auditoría de fechas de vencimiento. |
| **5. Liquidaciones caja** | **`Liquidación de Fondo Fijo`** | Grilla de liquidaciones con generación de voucher | Exclusivo para Caja Chica; genera asiento contable. |
| **6. Fondo de pago** | **`Fondo de Pago`** | Maestro paramétrico de fondos y cuentas de caja | Define las cajas chicas que luego se liquidan. |
| **7. Provision de recibos por honorarios**| `Provisión de dctos.` | Idéntica a Provisión Documentos | Especializada en honorarios médicos (`RH`) y retención de 4ta categoría. |
| **8. Provisión de otros documentos** | `Provisión de dctos.` | Idéntica a Provisión Documentos | Manejo de Servicios Públicos (`SP`), Notas de Crédito (`NC`), etc. |
| **9. Ordenes de Pago** | **`Orden de Pago`** | Grilla con filtro de usuario y formulario de pago | Emisión de autorizaciones de pago y anticipos. |
| **10. Reg. Anticipos Proveedores** | **`Regularización de Anticipos a Proveedores`** | Formulario de cruce y compensación | Amortiza facturas pendientes contra anticipos previos. |
| **11. Liq. Rendir Cuentas** | **`Specify Retrieval Arguments`** (Incidencia) | Modal de error de PowerBuilder / SAMI | Bloqueo por falta de pase del argumento `as_empresa`. |
| **12. Provision no Domiciliados** | `Provisión de dctos.` | Idéntica a Provisión Documentos | Proveedores extranjeros (`FE`) y retención de renta a no domiciliados. |

---

## 2. Levantamiento Técnico Detallado por Pantalla

### 2.1 Recepción de Documentos
* **Propósito:** Registro primario del ingreso de comprobantes físicos a la clínica antes de que sean contabilizados o aprobados.
* **Filtros superiores:**
  * Opciones radio: `(o) Pendientes` / `( ) Provisionados`.
  * Rango de fechas: `Desde: [DD/MM/AAAA]` y `Hasta: [DD/MM/AAAA]`, accionado con botón `[ Filtrar ]`.
* **Grilla de datos:**
  * Columnas: `Codigo`, `Proveedor`, `Documento`, `Nº documento`, `S/.`, `US$`, `Fecha Doc.`, `Estado`, `Descripcion recepcion`, `Usuario`.
* **Menú contextual (Clic Derecho):**
  * `Nuevo... (Ctrl+U)` | `Editar (F3)` | `Consultar... (F4)` | `Eliminar (F12)` | `Imprimir... (F5)` | `Importar Excel` | `Cerrar (Ctrl+F4)`.
* **Formulario de Registro (`Recepción de documentos - Nuevo`):**
  * **Sección Proveedor:** `Nº :` (autonumérico de recepción), `Fecha Recepción:` (por defecto fecha actual), `Código :` con botón selector `[...]` que abre el modal **`Buscando Proveedores...`** (búsqueda por *Nombre ó Razon social*, *RUC* o *Código*), `Nombre :`.
  * **Sección Documento:** `Tipo:` (ej. FACTURA POR PAGAR), `Serie/Num :` [Serie] [Número], `Moneda :` [SOLES/DOLARES], `Descripción :` [glosa libre], `Tipo Cambio:` (ej. 3.452), `Fecha :` [Fecha del comprobante], `Importe :` [,00], `Tipo Pago:`, `Observacion:`.
  * **Sección Custodia y Destino:** `Destino:` (combo desplegable con las áreas del maestro `Ubicación de Documentos`), `Responsable:` (combo con el custodio del área física asignada).
  * **Asociación Logística:** Selector radio: `(o) Orden de Compra` con botón `[...]` para vincular O/C, `( ) Requerimiento`, `( ) Otros`.

---

### 2.2 Provisión Documentos
* **Propósito:** Registro fiscal y formal de las facturas de proveedores con imputación contable automática en el Registro de Compras.
* **Grilla principal (`Provisión de dctos.`):**
  * Columnas: `Nº Provision`, `R.U.C.`, `Código`, `Proveedor`, `Nº Documento`, `Fec. Dcto.`, `Monto`, `Estado`, `Usuario`, `Descripción de la provisión`.
  * Menú contextual: `Nuevo... (F2)`, `Consultar... (F4)`, `Extornar (F12)`, `Imprimir... (F5)`, `Distribución Orden Taller`, `Anula Comprobantes sin contabilizar`, `Documento de Referencia`, `Cerrar (F10)`.
* **Formulario de Registro (`Provisión de dctos. - Nuevo`):**
  * **Cabecera General:** `Nº provisión :`, `Dcto.:`, `Moneda:`, `Nº serie dcto.:`, `Nº dcto.:`, `Monto:`.
  * **Botones de Enlace Superior:**
    1. `[ Dctos. Recepcionados .. ]`: Abre el buscador de facturas ya ingresadas en Recepción para no redigitar datos.
    2. `[ Dctos. Liquidados ... ]`: Abre el buscador de comprobantes rendidos en fondos de Caja Chica.
  * **Pestaña 1 - `Provisión`:**
    * Datos base: `Nº`, `Fecha`, `Estado: Provisionado`, `Orden/Compra:` con botones `[.....]` y `[Detalles...]`.
    * Proveedor: `Proveedor :` [Código] [Razón Social], casilla `Automático [X]`.
    * Datos de crédito: `Glosa :`, `Tipo :`, `Fec.-Rec:`, `Días:`, `Fec.Venc:`, `Moneda :`, `Operación :`, `Tipo Cambio:`.
    * Desglose Bimonetario: Columnas paralelas para `Soles` y `Dolares` con filas: `Total :`, `Imponible :`, `Exonerado:`, `Ajuste :`.
    * Bloque `Impuestos`: Sub-grilla interactiva con `Descripcion`, `%`, `Impuesto S/.` (aplica las reglas configuradas en el maestro de Impuestos).
    * Bloque `Detracción`: Check `Detracción: [ ]` que activa los campos de `Constancia` y `Fecha` de depósito Banco de la Nación.
  * **Pestaña 2 - `Asiento Contable`:**
    * Enlace por plantilla: Selector `Concepto : Código` y botón `[ Plantilla ]` (conecta con las plantillas del maestro *Concepto de Contrapartida*).
    * Sub-grilla contable (Estructura completa de 9 columnas compartida por todos los tipos de provisión):
      1. `Cod Cuenta`: Código de la cuenta contable del PCGE.
      2. `D - H`: Indicador de Debe o Haber.
      3. `Imp Soles`: Importe imputado en moneda nacional.
      4. `Imp Dolares`: Importe imputado en moneda extranjera.
      5. `Linea Negocio`: Centro de imputación por línea asistencial/unidad clínica.
      6. `Código Actividades`: Clasificador funcional de actividad hospitalaria.
      7. `Descripción contrapartida`: Glosa analítica descriptiva de la línea contable.
      8. `Tipo dcto.`: Código del tipo de comprobante de sustento.
      9. `N° dcto`: Serie y numeración del documento asociado.
      * Resumen inferior con `Total debe`, `Total haber` y `Diferencia` (control estricto de partida doble y cuadre 0.00).
    * Modal de alta manual (`Nuevo` en grilla): Permite ingresar línea por línea con `Cuenta` (abre modal `Buscador de Cuentas`), `Linea Negocios`, `Centro costo`, `Auxiliar`, `Centro Gasto`, `Tipo Doc`, `Nro Dcto`, `Moneda`, `Fecha Vencimiento`, `Imp. Debe`, `Imp. Haber` y check de `Ajuste Manual`.

---

### 2.3 Registro de Letras
* **Propósito:** Operación financiera de canje de facturas comerciales por letras de cambio con fechas de vencimiento diferidas.
* **Grilla principal (`Registro de Letras por Pagar`):**
  * Columnas: `# Canje`, `Proveedor`, `Moneda`, `Tipo. Cambio`, `# Letras`, `Estado`, `Fecha`.
  * Opciones: `Nuevo... (F2)`, `Consultar... (F4)`, `Anular`, `Imprimir... (F5)`, `Cerrar (F10)`.
* **Formulario de Canje (`Registro de Letras por Pagar - Nuevo`):**
  * **Cabecera:** `Nº de Canje :`, `Fecha de Proceso :`, Radio `( ) Compra  (o) Venta`, `Tipo Cambio`, `Cantidad Letras :`, `Moneda :` [SOLES/DOLARES], `Proveedor :` (con modal `Buscador de tipos de auxiliares`), `Elegir Centro de Costos :` (ej. VENTAS/ADMINISTRACION).
  * **Sub-grilla Superior (`Documento(s) por Pagar`):**
    * Columnas: `Nº documento`, `Moneda`, `Importe Canje S/.`, `Importe Canje $`.
    * Botón `[ Adicionar ]`: Despliega el modal **`Documentos x Pagar Cliente`** para seleccionar qué facturas se están amortizando.
  * **Sub-grilla Inferior (`Letra(s) por Pagar`):**
    * Columnas: `Nº Letras`, `F. Vencimiento`, `Estado`, `Capital S/.`, `Capital US$`.
    * Botones: `[ Adicionar ]`, `[ Eliminar ]` para generar cada una de las letras del fraccionamiento.
  * **Contabilización del Canje:** Selector inferior `Seleccione una plantilla : Concepto : Código` para generar el voucher contable automático de reclasificación (Cta. 4212 a Cta. 4231).

---

### 2.4 Obligaciones de Pago
* **Propósito:** Monitor masivo de auditoría y control de vencimientos de todas las obligaciones exigibles de la clínica.
* **Características de la grilla:**
  * Maneja un volumen masivo ($\ge 156,000$ registros históricos y activos).
  * Columnas: `Nº Documento`, `Auxiliar`, `Moneda`, `Monto Soles`, `Monto Dolar`, `Fec Venc.`, `Documento` (Boletas, Facturas, Honorarios).
  * Menú contextual: `Grabar`, `Imprimir... (F5)`, `Cerrar (F10)`.
  * Funcionalidad operativa: Permite a Tesorería y CxP modificar directamente sobre la grilla la fecha de vencimiento (`Fec Venc.`) acordada o reprogramada con el proveedor y guardarla con la opción `Grabar`.

---

### 2.5 Liquidación de Caja
* **Discrepancia en título:** En el menú figura como `Liquidaciones caja`, pero la ventana oficial del sistema se titula **`Liquidación de Fondo Fijo`**.
* **Propósito:** Rendición de cuentas y registro estructurado de comprobantes menores pagados en efectivo a través de las cajas chicas institucionales de la clínica.
* **Grilla principal (`Liquidación de Fondo Fijo`):**
  * Columnas: `Mes`, `Liquidacion`, `Descripción`, `Moneda`, `Total Importe`, `Estado`, `Comp File`, `Nº Voucher`, `Auxiliar`, `Observaciones`, `Fec.Proceso`.
  * Menú contextual clave (Clic Derecho): `Nuevo... (F2)`, `Editar (F3)`, `Consultar... (F4)`, `Anular (F12)`, `Imprimir... (F5)`, **`Generar voucher`** (genera el asiento contable de gasto en Contabilidad), **`Revertir Voucher`** (extorno contable), `Cerrar (F10)`.

* **Estructura y Flujo de Alta de Liquidación:**
  La operación se desarrolla en una interacción articulada en dos niveles (`Nivel 1: Registro general` y `Nivel 2: Asignación contable`):

  #### Nivel 1: Formulario General (`Liquidación de Fondo Fijo - Nuevo`)
  * **Restricción operativa fija:** En la esquina superior derecha muestra la advertencia mandatoria del sistema: `Nota : Registro de Liquidaciones de Caja Chica unicamente`.
  * **Campos de Cabecera:**
    * `Nro. Liquidación :` Caja numérica para el código o número correlativo de la liquidación.
    * `Total Importe :` Campo acumulador que totaliza automáticamente la suma de los comprobantes ingresados (formato `,00`).
    * `Fondo Caja Chica :` Selector desplegable (*combobox*) que lista los fondos predeterminados creados en la pantalla *Fondo de Pago* (ej. `CAJA CHICA TESORERIA`).
    * `Moneda Liq. :` Selector desplegable de moneda (`SOLES`).
    * `Tipo Cambio :` Campo numérico editable con el tipo de cambio oficial del día (ej. `3,4520`).
    * `Glosa :` Caja de texto horizontal amplia para la justificación o detalle descriptivo del reembolso de caja chica.
  * **Grilla de Detalle de Comprobantes Rendidos:**
    * Columnas: `Item`, `Cuenta`, `Linea de Negocios`, `Actividades`, `Tipo Doc.`, `Fec.Doc.` (formato fecha `00/00/0000`), `Tipo cambio`, `Nro Serie`, `Nro. Documento`, `Moneda Origen`, `Imp Soles` (`,00`), `Imp Dólares`.
  * **Botonera inferior de control de la grilla:**
    * `[ Nuevo ]`: Inicia el registro de una nueva línea de gasto y despliega automáticamente la ventana modal `Buscador de Cuentas`.
    * `[ Editar ]`: Permite modificar la cuenta o montos de una fila previamente añadida.
    * `[ Eliminar ]`: Quita la fila de gasto seleccionada y descuenta su valor del `Total Importe`.

  #### Nivel 2: Ventana Modal `Buscador de Cuentas`
  * **Disparador:** Se abre inmediatamente al presionar el botón `[ Nuevo ]` de la grilla en el Nivel 1.
  * **Parámetros de Búsqueda:**
    * `Por :` Selector desplegable con tres criterios de filtro:
      1. `Todos`: Muestra la lista íntegra del catálogo contable.
      2. `Código`: Permite buscar por el prefijo o código numérico de la cuenta contable.
      3. `Descripción`: Permite buscar por el texto o nombre de la cuenta.
    * `Valor :` Caja de texto para ingresar el criterio específico a filtrar.
    * Botón `[ Buscar ]`: Ejecuta la consulta contra el Plan Contable General Empresarial (PCGE).
  * **Grilla de Resultados:**
    * Columnas: `Código` y `Descripción`.
    * Despliega las cuentas imputables y subdivisionarias del PCGE (ej. `01 BIENES Y VALORES ENTREGADOS`, `011 Bienes en Préstamo Custodia y No Capitalizables`, etc.).
  * **Acciones:**
    * `[ Aceptar ]`: Asigna la cuenta seleccionada a la columna `Cuenta` de la nueva línea de la liquidación y regresa al formulario general para completar los datos del comprobante físico (Tipo Doc, Serie, Número, Fecha e Importe).
    * `[ Cancelar ]`: Aborta la inserción de la línea y cierra la ventana de búsqueda.

---

### 2.6 Fondo de Pago
* **Propósito:** Creación, parametrización y control de las cajas chicas y fondos fijos institucionales de la clínica, estableciendo la vinculación entre la cuenta contable de tesorería y el custodio responsable.
* **Grilla principal (`Fondo de Pago`):**
  * Columnas: `Código` (ej. `0001`), `Cuenta` (ej. `10200101`), `Caja` (ej. `CAJA CHICA TESORERIA`).
  * Menú contextual (Clic Derecho): `Nuevo... (F2)`, `Editar (F3)`, `Consultar... (F4)`, `Eliminar (F12)`, `Imprimir... (F5)`, `Cerrar (F10)`.

* **Estructura y Flujo de Alta de Fondo de Pago:**
  El registro de un fondo se articula a través de un formulario principal con acceso a dos ventanas modales de búsqueda paramétrica:

  #### Formulario Principal (`Fondo de Pago (Nuevo)`):
  * `Codigo :` Caja de texto para el código numérico identificador del fondo (ej. `0001`).
  * `Cuenta :` Caja de texto para el código de cuenta contable del fondo fijo, acompañada del botón de búsqueda `[...]` que abre la ventana modal **`Buscador de Cuentas`**, y una caja horizontal adyacente donde se visualiza automáticamente el nombre o descripción de la cuenta contable seleccionada.
  * `Auxiliar :` Caja de texto para el código del custodio o responsable del dinero, acompañada del botón de búsqueda `[...]` que abre la ventana modal **`Buscando Auxiliares..`**, y una caja horizontal adyacente donde se muestra la razón social o nombre completo del custodio.
  * `Caja :` Caja de texto libre para ingresar la denominación formal del fondo institucional (ej. `CAJA CHICA TESORERIA`).

  #### Ventana Modal 1: `Buscador de Cuentas` (Accionada desde `Cuenta [...]`):
  * **Disparador:** Botón `[...]` ubicado junto al campo `Cuenta`.
  * **Parámetros de Búsqueda:**
    * `Por :` Selector desplegable con opciones de filtro (`Código`, `Descripción`, `Todos`).
    * `Valor :` Campo de texto para ingresar el término de búsqueda.
    * Botón `[ Buscar ]`: Consulta y filtra el Plan Contable General Empresarial (PCGE).
  * **Resultados:** Despliega el catálogo de cuentas con columnas `Código` y `Descripción`.
  * **Acciones:**
    * `[ Aceptar ]`: Retorna el código y la descripción de la cuenta contable (ej. cuentas del rubro 102 Fondos Fijos) al formulario principal.
    * `[ Cancelar ]`: Cierra la búsqueda sin realizar cambios.

  #### Ventana Modal 2: `Buscando Auxiliares..` (Accionada desde `Auxiliar [...]`):
  * **Disparador:** Botón `[...]` ubicado junto al campo `Auxiliar`.
  * **Parámetros de Búsqueda:**
    * `Auxiliar :` Caja de texto para ingresar el nombre, apellido, código o número de documento del empleado custodio.
    * Botón `[ Buscar ]`: Ejecuta la consulta contra el padrón general de auxiliares/personal del ERP.
  * **Resultados:** Grilla con columnas `Código`, `Descripción` y `Nº RUC` (o documento de identidad).
  * **Acciones:**
    * `[ Aceptar ]`: Transfiere el código y nombre del responsable al campo `Auxiliar` del formulario principal.
    * `[ Cancelar ]`: Cierra la ventana modal sin asignar auxiliar.

---

### 2.7 Provisión de Recibos por Honorarios
* **Características operativas:** Comparte la misma estructura de interfaz que la ventana general de Provisión de Documentos, pero configurada específicamente para:
  * Documento `RH` (Recibo por Honorarios).
  * Cálculo de retención del Impuesto a la Renta de Cuarta Categoría (8%).
  * Imputación a cuentas del elemento 63 (Servicios prestados por terceros / Médicos especialistas).

---

### 2.8 Provisión de Otros Documentos
* **Comportamiento en el sistema:** Utiliza la misma ventana `Provisión de dctos.`.
* **Diferenciador operativo:**
  * Al pulsar `[ Dctos. Recepcionados .. ]`, abre el buscador con comprobantes no comerciales estándar (Servicios Públicos `SP` como *ELECTROSUR S.A.*, *EPS TACNA S.A.*, y Notas de Crédito `NC`).
  * Al pulsar `[ Dctos. Liquidados ... ]`, permite vincular facturas que ya fueron rendidas en liquidaciones de caja chica para formalizar su crédito fiscal en el Registro de Compras.
* **Propósito:** Registro y provisión contable de comprobantes no comerciales estándar o de naturaleza especial (servicios públicos, importaciones, notas de crédito, pólizas o compras con tributos arancelarios).
* **Comportamiento en el sistema:** Aunque utiliza la misma ventana base `Provisión de dctos.`, presenta **diferencias estructurales significativas** frente a la provisión comercial común:

  #### Diferencias Clave en el Formulario de Registro:
  1. **Estructura del Desglose Monetario (Bloques `Soles` y `Dolares`):**
     * En la provisión comercial regular (opción 2.2), los campos son: `Total`, `Imponible`, `Exonerado`, `Ajuste`.
     * En **Provisión de Otros Documentos**, el desglose bimonetario se especializa con variables de importación, servicios y cargos fiscales adicionales:
       * **`Total :`** Importe total bruto del comprobante.
       * **`Ad Valorem :`** Arancel aduanero e impuestos a la importación.
       * **`Otros :`** Cargos, comisiones bancarias, tasas administrativas o conceptos no gravados.
       * **`Igv :`** Impuesto General a las Ventas correspondiente al documento.
  2. **Estructura de la Sub-grilla de Impuestos:**
     * Incorpora la columna interactiva **`Afecto`** (con casilla checkbox por fila) para determinar qué rubros aplican a la base imponible del cálculo fiscal, junto con las columnas `Descripcion`, `%` e `Impuesto S/.`.
  3. **Comportamiento de los Botones de Enlace Superior:**
     * **`[ Dctos. Recepcionados .. ]`:** Abre el modal de búsqueda con comprobantes especiales pendientes de provisión, filtrando recibos de servicios públicos (`SP` como *ELECTROSUR S.A.*, *EPS TACNA S.A.*), pólizas y notas de crédito (`NC`).
     * **`[ Dctos. Liquidados ... ]`:** Abre el modal de búsqueda para vincular documentos rendidos en liquidaciones de caja chica, permitiendo buscar específicamente por `Campo :` (`Proveedor` o `Nº documento`) para formalizar comprobantes rendidos con crédito fiscal en el Registro de Compras.

---

### 2.9 Órdenes de Pago
* **Propósito:** Generación de la autorización formal de desembolso para cancelar comprobantes o entregar anticipos a proveedores.
* **Filtros superiores:** `Usuario: ADMINISTRADOR 1` (desplegable de usuarios del ERP).
* **Grilla principal (`Orden de Pago`):**
  * Columnas: `Codigo`, `Auxiliar`, `Descripción del Auxiliar`, `Imp. Soles`, `Imp. Dolares`, `Estado`, `Regularizado`, `Usuario`, `Glosa`.
  * Menú contextual (Clic Derecho): `Nuevo... (F2)`, `Editar (F3)`, `Consultar... (F4)`, `Imprimir... (F5)`, `Anular (F12)`, `Cerrar (F10)`.

* **Estructura y Flujo de Alta de Orden de Pago:**
  El registro se desarrolla mediante un formulario principal de autorización de desembolso articulado con la ventana modal corporativa de búsqueda de auxiliares:

  #### Formulario Principal (`Orden de Pago (Nuevo)`):
  * **Campos de Cabecera:**
    * `Orden de pago :` Caja numérica para el código correlativo de la orden.
    * `Fecha :` Campo con fecha de emisión de la orden (por defecto fecha de trabajo, ej. `30/10/2026`).
    * `Tipo Cambio :` Selector radio para el tipo de cambio aplicable (`(o) Venta  ( ) Compra`).
    * `Moneda :` Selector desplegable (`SOLES` o `DOLARES`).
    * `Imp Soles :` / `Imp Dolares :` Cajas de importe bimonetario para registrar el valor total del pago o anticipo.
    * `Beneficiario :` Campo de código numérico (ej. `179854`) acompañado del botón selector `[...]` que abre la ventana modal **`Buscando Auxiliares...`**, y caja de texto adyacente donde se despliega automáticamente el nombre completo o razón social del beneficiario (ej. `arbildo espinoza Luz yajaira`).
    * `Glosa :` Caja de texto horizontal para el concepto o justificación de la orden.
    * Botón `[ Anticipos/Remesas ]`: Permite clasificar la orden como una entrega a cuenta previa a la recepción formal del comprobante.
  * **Grilla de Detalle Contable y Financiero:**
    * Columnas: `Item`, `Cuenta`, `Actividades`, `L. Negocios`, `Debe/Haber`, `Imp. Soles`, `Imp.Dolares`, `Saldo Soles`, `Saldo Dolares`.
    * Botonera inferior: `[ Nuevo ]`, `[ Editar ]`, `[ Eliminar ]`.

  #### Ventana Modal `Buscando Auxiliares...` (Accionada desde `Beneficiario [...]`):
  * **Disparador:** Botón `[...]` situado junto al campo `Beneficiario`.
  * **Parámetros de Búsqueda:**
    * `Por :` Selector desplegable con criterios de filtro:
      1. `Nombre ó Razon social`
      2. `RUC`
      3. `Código Interno`
    * `Valor :` Campo de texto para digitar el nombre, RUC o código a consultar.
    * Botón `[ Buscar ]`: Ejecuta la consulta contra el padrón general de auxiliares/proveedores.
  * **Grilla de Resultados:**
    * Columnas: `Código`, `Descripción` (Razón Social o Nombre) y `Nº RUC`.
  * **Acciones:**
    * `[ Aceptar ]`: Retorna el código y el nombre del beneficiario seleccionado al formulario principal.
    * `[ Cancelar ]`: Cierra la ventana de búsqueda sin asignar ningún beneficiario.

---

### 2.10 Regularización de Anticipos a Proveedores
* **Discrepancia en título:** En el menú figura como `Reg. Anticipos Proveedores`, pero la ventana oficial del sistema se titula **`Regularización de Anticipos a Proveedores Año : 2026 Mes : 10`**.
* **Propósito:** Compensación contable y financiera entre los desembolsos entregados previamente como anticipo y las facturas definitivas recibidas del proveedor, amortizando la deuda pendiente.
* **Grilla principal (`Regularización de Anticipos a Proveedores`):**
  * Columnas: `Fec. Proc.`, `Nº Orden`, `Nombre o Razón Social`, `Estado`, `Imp. Soles`, `Imp. Dólares`, `Usuario`, `Diario - File - Comprob.`.
  * Menú contextual (Clic Derecho): `Nuevo... (F2)`, `Consultar... (F4)`, `Imprimir... (F5)`, `Anular`, `Cerrar (F10)`.

* **Estructura y Flujo de Operación de Cruce de Anticipos:**
  La regularización se desarrolla a través de un formulario principal de compensación articulado con tres ventanas modales de búsqueda e inserción:

  #### Formulario Principal (`Regularización de Anticipos a Proveedores - Nuevo`):
  * **Campos de Cabecera:**
    * `Número :` Caja numérica para el correlativo de la transacción de regularización.
    * `Fecha :` Fecha contable de aplicación (por defecto fecha actual, ej. `30/10/2026`).
    * `Tipo de Cambio :` Selector radio (`( ) Compra  (o) Venta`) con el valor de tipo de cambio oficial (ej. `3.431`).
    * `S/.` / `$/.` : Cajas de total acumulado que reflejan la suma de los documentos compensados en moneda nacional y extranjera.
    * `Codigo :` Código del proveedor (ej. `184070`), acompañado del botón selector `[...]` que abre la ventana modal **`Buscando Proveedores...`**, y caja de texto contigua con la razón social (ej. `CLINICA LA LUZ JAEN S.A.C.`).
    * `Glosa :` Justificación descriptiva del cruce de cuentas.
  * **Doble Grilla de Compensación:**
    1. **Grilla Superior (`Documentos a Cancelar`):**
       * Columnas: `Item`, `Cuenta`, `No Documento`, `Monto Orig.`, `Moneda`, `Monto S/`, `Monto $`, `D / H`.
       * Botón **`[ Doc. x Pagar ]`**: Dispara la ventana modal para seleccionar las facturas pendientes.
       * Botón `[ Eliminar ]`: Quita un comprobante cargado a la grilla.
    2. **Grilla Inferior (`Orden de Pago`):**
       * Columnas: `Item`, `Cuenta`, `Año-Mes-Nº Orden`, `Moneda`, `Saldo Soles`, `Saldo Dólares`, `Glosa`.
       * Botón **`[ Orden de Pago ]`**: Dispara la ventana modal para seleccionar los anticipos disponibles.
       * Botón `[ Eliminar ]`: Quita una orden de anticipo seleccionada.

  #### Ventana Modal 1: `Buscando Proveedores...` (Accionada desde `Codigo [...]`):
  * **Disparador:** Botón `[...]` situado junto al campo `Codigo`.
  * **Parámetros de Búsqueda:**
    * `Por :` Selector desplegable (`Nombre ó Razon social`, `RUC`, `Código Interno`).
    * `Valor :` Término a buscar y botón `[ Buscar ]`.
  * **Resultados:** Grilla con `Código`, `Descripción` (Razón Social), `Nº RUC` y estado.
  * **Acciones:**
    * `[ Aceptar ]`: Asigna el proveedor a la cabecera del formulario de regularización.
    * `[ Cancelar ]`: Cierra la ventana modal sin asignar proveedor.

  #### Ventana Modal 2: `Documentos x Pagar` (Accionada desde el botón `[ Doc. x Pagar ]`):
  * **Disparador:** Botón `[ Doc. x Pagar ]` ubicado a la derecha de la grilla superior.
  * **Parámetros de Búsqueda:**
    * `Sucursal :` Selector desplegable con las sedes de la clínica (ej. `Av. Manuel A. Odría 702, Tacna`).
    * Botón `[ Buscar ]`: Consulta los comprobantes pendientes de pago asociados al proveedor seleccionado en esa sede.
  * **Grilla de Comprobantes:**
    * Columnas: `Número de Documento`, `Moneda`, `Monto Soles`, `Monto Dolar`, `Monto Original`, `Fec Venc.`, `Documento` (Factura, Boleta, etc.).
  * **Acciones:**
    * `[ Aceptar ]`: Transfiere el comprobante seleccionado a la grilla superior de `Documentos a Cancelar`.
    * `[ Cancelar ]`: Cierra la ventana sin agregar comprobantes.

  #### Ventana Modal 3: `Ordenes de Pago` (Accionada desde el botón `[ Orden de Pago ]`):
  * **Disparador:** Botón `[ Orden de Pago ]` ubicado a la derecha de la grilla inferior.
  * **Cabecera y Filtros:**
    * Título interno: `Seleccione Orden de Pago`.
    * Casilla de control inferior: `[X] Todas las ordenes de pago` (permite visualizar todo el padrón o solo las del proveedor activo).
  * **Grilla de Anticipos Disponibles:**
    * Columnas: `Año`, `Mes`, `N° Op.`, `Nombre o Razón social`, `Glosa`, `Moneda`, `Saldo Soles`, `Saldo Dólares`, `Soles`, `Dolares`.
    * Lista los giros de pago registrados previamente como anticipo (`NIPRO MEDICAL CORP`, `ADARGAR-TACNA S.R.L.`, `MEDANES S.R.L.`, `VIZCARRA LLAPA PAU`, etc.) mostrando el saldo disponible a favor de la clínica.
  * **Acciones:**
    * `[ Aceptar ]`: Carga la orden de pago de anticipo a la grilla inferior para saldar el importe de la factura seleccionada en la grilla superior.
    * `[ Cancelar ]`: Cierra la selección de anticipos.

---

### 2.11 Liquidación por Rendir Cuentas
* **Incidencia de Software Observada:** Al invocar la opción del menú, la ventana principal no carga de forma directa y arroja la ventana modal interna de PowerBuilder:
  * **Título modal:** `Specify Retrieval Arguments`
  * **Parámetro exigido:** `Position: 1`, `Name: as_empresa`, `Type: String`, `Value: [ ] [X] Null`.
  * **Botones:** `[ OK ]`, `[ Cancel ]`, `[ Cancel All ]`.
* **Diagnóstico técnico:** Error nativo en el llamado del menú SAMI: no se está inyectando la variable global de empresa activa a la DataWindow subyacente. Debe documentarse como alerta técnica y advertencia operativa.

---

### 2.12 Provisión No Domiciliados
* **Propósito:** Registro y contabilización de comprobantes mercantiles emitidos por proveedores del exterior (`FE` - Factura del Exterior), contratos internacionales o servicios especializados prestados por profesionales y empresas no domiciliadas en el país, sujetos a retención del Impuesto a la Renta de No Domiciliados según la normativa tributaria SUNAT.
* **Comportamiento en el sistema:** Comparte la arquitectura estándar de dos pestañas de la ventana `Provisión de dctos.` presente en las demás provisiones (Facturas comerciales, Recibos por Honorarios y Otros Documentos):

  #### Estructura y Validación Operativa:
  1. **Grilla Principal de Consulta (`Provisión de dctos.`):**
     * Muestra la relación histórica de provisiones registradas con las columnas: `Nº Provision`, `R.U.C.`, `Código`, `Proveedor`, `Nº Documento`, `Fec. Dcto.`, `Monto`, `Estado`, `Provisionado por:` (o `Usuario`) y `Descripción de la provisión`.
     * Identifica el responsable administrativo que procesó el comprobante del no domiciliado.
  2. **Pestaña `Asiento Contable` (Estructura Estándar de 9 Columnas):**
     * Se confirma que la sub-grilla contable comparte de forma universal las **9 columnas completas** con las demás ventanas de provisión (visibles en su totalidad al ajustar el ancho de columnas):
       * `Cod Cuenta`, `D - H`, `Imp Soles`, `Imp Dolares`, `Linea Negocio`, `Código Actividades`, `Descripción contrapartida`, `Tipo dcto.`, `N° dcto`.
     * En No Domiciliados, los campos `Tipo dcto.` y `N° dcto` son esenciales para asociar la serie y numeración internacional del comprobante mercantil extranjero a la cuenta de pasivo (4212 / 4213) y a la cuenta de retención de renta no domiciliada (40173).
  3. **Comportamiento de los Modales de Búsqueda y Enlace:**
     * **`[ Dctos. Recepcionados .. ]`:** Despliega los comprobantes previamente recepcionados en Mesa de Partes (como facturas de proveedores internacionales o servicios con serie `E001-...` clasificadas como `Otros`), permitiendo su importación directa sin redigitación.
     * **`[ Dctos. Liquidados ... ]`:** Despliega el modal de búsqueda con columnas detalladas (`Liq.`, `Item`, `Auxiliar`, `Descripcion`, `Doc.`, `Serie`, `Numero`), permitiendo vincular comprobantes extranjeros o gastos con sujetos no domiciliados sustentados a través de fondos fijos de caja chica.

---

## 3. Síntesis y Macroflujo de Conexión entre Pantallas (Propuesta Técnica Preliminar)

> [!IMPORTANT]
> **DECLARACIÓN DE ALCANCE Y ADVERTENCIA METODOLÓGICA:**  
> El macroflujo operativo y la matriz de interconectividad descritos en esta sección constituyen una **propuesta técnica e inferencia preliminar** basada exclusivamente en la exploración de las pantallas, botones de comando (`[ Dctos. Recepcionados .. ]`, `[ Dctos. Liquidados ... ]`, `[ Doc. x Pagar ]`, `[ Orden de Pago ]`) y controles observados en el ERP SAMI.  
> **No representa la versión final ni el flujo oficial definitivo de la clínica.** Este modelo se formula como base de trabajo borrador para someterse a revisión, validación y ajuste con la Jefatura de Contabilidad, Tesorería y Administración de Clínica La Luz SAC, quienes definirán la secuencia formal obligatoria de la institución.

### 3.1 Estructura del Macroflujo Operativo por Etapas (Modelo Deducido)

A partir de la arquitectura observada, se plantea la siguiente estructuración preliminar en 4 etapas:

| Etapa | Ítems Involucrados | Nombre de Pantalla Real | Propósito Operativo en el Circuito |
| :--- | :--- | :--- | :--- |
| **Etapa 1: Origen y Sustento del Gasto** | **1** | `Recepción de documentos` | Control de ingreso físico de comprobantes mercantiles en Mesa de Partes/Almacén; validación preliminar con Orden de Compra (`O/C`). |
| | **6** | `Fondo de Pago` | Parametrización y definición de las cajas chicas y fondos fijos institucionales (asignación de cuentas contables y custodios). |
| | **5** | `Liquidación de Fondo Fijo` | Rendición y liquidación operativa de comprobantes gastados con caja chica; asignación de cuentas de gasto y generación de voucher contable. |
| | **11** | *Liq. Rendir Cuentas* (Incidencia) | Rendición de fondos institucionales entregados a rendir cuenta (*pendiente de corrección técnica del parámetro `as_empresa`*). |
| **Etapa 2: Provisión, Registro Fiscal y Asiento Contable** | **2** | `Provisión de dctos.` (Facturas) | Registro tributario en el Registro de Compras, cálculo de IGV, detracción y generación del asiento contable de compra (PCGE). |
| | **7** | `Provisión de dctos.` (Honorarios) | Registro de Recibos por Honorarios médicos/profesionales con retención de impuesto a la renta de 4ta categoría (8%). |
| | **8** | `Provisión de dctos.` (Otros Dctos.) | Registro de comprobantes especiales (Servicios Públicos, Notas de Crédito/Débito) con desglose de *Ad Valorem*, otros tributos y afectaciones. |
| | **12** | `Provisión de dctos.` (No Domiciliados) | Registro de comprobantes del exterior (`FE`) y contratos internacionales con retención de renta a no domiciliados. |
| **Etapa 3: Gestión de Cartera y Reestructuración de Deuda** | **4** | `Obligaciones de Pago` | Monitor maestro consolidado de cartera por pagar ($\ge 156,000$ registros); auditoría de saldos exigibles y reprogramación de vencimientos. |
| | **3** | `Registro de Letras por Pagar` | Canje y refinanciamiento de facturas por letras comerciales a fecha fija; asiento contable de reclasificación (Cta. 4212 $\rightarrow$ Cta. 4231). |
| **Etapa 4: Desembolso, Compensación y Cierre de Pasivos** | **9** | `Orden de Pago` | Emisión de autorizaciones de pago para cancelación de facturas o giros de anticipo a proveedores (conexión con Tesorería/Bancos). |
| | **10** | `Regularización de Anticipos a Proveedores` | Compensación contable de doble vía: amortiza facturas comerciales pendientes contra saldos de órdenes de anticipo previamente emitidas. |

> [!NOTE]
> **Arquitectura Unificada de Provisión (Ítems 2, 7, 8 y 12):**  
> Las cuatro pantallas de provisión comparten la ventana base `Provisión de dctos.` y la misma **sub-grilla contable universal de 9 columnas** en la pestaña *Asiento Contable* (`Cod Cuenta`, `D - H`, `Imp Soles`, `Imp Dolares`, `Linea Negocio`, `Código Actividades`, `Descripción contrapartida`, `Tipo dcto.` y `N° dcto.`). Su diferenciación radica en la naturaleza tributaria del comprobante, el cálculo impositivo aplicado y las cuentas contables de contrapartida imputadas.

---

### 3.2 Matriz de Interconectividad de Datos y Modales entre Pantallas (Hipótesis Técnica de Enlaces)

La siguiente matriz plantea las rutas técnicas de interoperabilidad observadas a través de los botones y modales del software, sujetas a la confirmación de las políticas de uso de la clínica:

| Pantalla Emisora / Origen | Pantalla Receptora / Destino | Control / Botón / Modal de Conexión | Flujo de Datos y Acción Operativa Resultante |
| :--- | :--- | :--- | :--- |
| **6. Fondo de Pago** | **5. Liquidaciones caja** | Selector de Caja / `Buscador de Cuentas` | Define las cajas chicas disponibles y valida que la liquidación se impute contra la cuenta de fondos fijos (Cta. 102) configurada. |
| **1. Recepción de Documentos** | **2, 7, 8, 12 Provisiones** | Botón `[ Dctos. Recepcionados .. ]` | Importa automáticamente número de serie, correlativo, proveedor, fecha, moneda e importe del comprobante sin redigitación. |
| **5. Liquidaciones caja** | **2, 7, 8, 12 Provisiones** | Botón `[ Dctos. Liquidados ... ]` | Carga comprobantes rendidos por caja chica para incorporarlos al Registro de Compras formal y validar el crédito fiscal. |
| **2, 7, 8, 12 Provisiones** | **4. Obligaciones de Pago** | Motor de base de datos (Post-grabación) | Cada provisión aprobada actualiza en tiempo real la cartera general de pasivos exigibles de la clínica con su fecha de vencimiento. |
| **2, 7, 8, 12 Provisiones** | **3. Registro de Letras** | Botón `[ Adicionar ]` $\rightarrow$ Modal `Documentos x Pagar Cliente` | Permite seleccionar facturas comerciales pendientes para ser canjeadas y fraccionadas en letras de cambio. |
| **2, 7, 8, 12 Provisiones** | **10. Reg. Anticipos Proveedores** | Botón `[ Doc. x Pagar ]` $\rightarrow$ Modal `Documentos x Pagar` por Sucursal | Carga las facturas pendientes del proveedor seleccionado a la grilla superior (`Documentos a Cancelar`). |
| **9. Órdenes de Pago** | **10. Reg. Anticipos Proveedores** | Botón `[ Orden de Pago ]` $\rightarrow$ Modal `Ordenes de Pago` | Carga las órdenes de pago giradas en calidad de anticipo a la grilla inferior para saldar el monto de las facturas por pagar. |
| **10. Reg. Anticipos Proveedores** | **Contabilidad General / PCGE** | Botón `[ Guardar ]` | Genera el asiento contable de compensación (Cta. 4212 vs. Cta. 422 - Anticipos a Proveedores), cancelando el pasivo y extinguiendo el anticipo. |

---
*Este levantamiento queda registrado como inventario y análisis técnico preliminar de pantallas para someterse a validación operativa previa a la redacción del Paquete Oficial de Documentación de Movimientos.*
