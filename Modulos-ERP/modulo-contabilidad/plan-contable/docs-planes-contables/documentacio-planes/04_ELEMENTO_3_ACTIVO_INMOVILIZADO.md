# Elemento 3: Activo Inmovilizado

Agrupa los activos no monetarios permanentes destinados a la generación de rentas, producción, explotación o uso administrativo por más de un ejercicio económico: inversiones de largo plazo, inmuebles para renta, contratos de arrendamiento financiero, maquinaria y equipos, intangibles, activos biológicos, diferidos y las acumulaciones de depreciación y deterioro.

---

## 1. Cuenta 30: Inversiones Mobiliarias
**Origen**: `capturas/24-1.png` y `capturas/24-2.png` *(Flujo continuo explícito `24-1` -> `24-2`)*  
**Definición**: Inversiones en títulos valores de deuda (bonos) o instrumentos de patrimonio (acciones comunes, preferentes, cuotas de fondos y consorcios) mantenidos con fines de control corporativo o rentabilidad de largo plazo.

> [!CAUTION] **Error Crítico de Rotulado en el Árbol del Sistema ERP**:
> En la captura `capturas/24-1.png`, la cuenta raíz aparece denominada:  
> `30 INVERSIONES INMOBILIARIAS`  
> El contenido de todas sus subcuentas (`301`, `302`, `308`) corresponde inequívocamente a **INVERSIONES MOBILIARIAS** (títulos y acciones). Las verdaderas inversiones inmobiliarias (terrenos y edificios para renta) se ubican en la cuenta `31`.

### Estructura Literal del ERP:
* `30 INVERSIONES INMOBILIARIAS` (`capturas/24-1.png`)
  * `301 Inversiones a Ser Mantenidas Hasta el Vencimiento`
    * `3011 Instrumentos Financieros Representativos de Deuda`
      * `30111 Valores Emitidos o Garantizados por el Estado`
      * `30112 Valores Emitidos por el Sistema Financiero`
      * `30113 Valores Emitidos por las Empresas`
      * `30114 Valores Emitidos por Otras Entidades`
  * `302 Instrumentos Finan Repres de Derecho Patrimonial`
    * `3021 Certificados de Suscripción Preferente`
      * `30210 Certificados de Suscripción Preferente`
    * `3022 Acciones Represent de Capital Social - Comunes`
      * `30221 Acc Repres de Capital Social - Comun - Costo`
      * `30222 Acc Repres de Capital Social - Comun - Valor Razon`
      * `30223 Acc Repres de Capital Social - Comun - Part Patrim`
    * `3023 Acciones Represent de Capital Social - Preferentes`
      * `30231 Acc Repres de Cap Soc - Preferentes - Costo`
      * `30232 Acc Repres de Cap Soc - Preferentes - Valor Razona`
      * `30233 Acc Repres de Cap Soc - Preferentes - Partic Patri`
    * `3024 Acciones de Inversión`
      * `30241 Acciones de Inversión - Costo`
      * `30242 Acciones de Inversión - Valor Razonable`
      * `30243 Acciones de Inversión - Participación Patrimonial`
    * `3025 Certificados de Participación de Fondos de Inversi`
      * `30251 Cert de Part Fondos de Inv - Costo`
      * `30252 Cert de Part Fondos de Inv - Valor Razonable`
    * `3026 Certificados de Participación de Fondos Mutuos`
      * `30261 Cert de Part de Fondos de Mutuos - Costo`
      * `30262 Cert de Part de Fondos de Mutuos - Valor Razonable`
    * `3027 Particip en Asociaciones en Particip y Consorcios`
      * `30271 Part en Asoc en Part y Consorcios - Costo`
      * `30272 Part en Asoc en Part y Consorcios - Valor Razonabl`
      * `30273 Part en Asoc en Part y Consorcios - Particip Patri`
    * `3028 Otros títulos Representativos de Patrimonio`
      * `30281 Otros Titulos Represent de Patrimonio - Costo`
      * `30282 Otros Titulos Represent de Patrimonio - Valor Razo`
  * `308 Inversiones Mobiliarias - Acuerdo de Compra` (`capturas/24-2.png`)
    * `3081 Inv a Ser Mantenidas Hasta Vto - Acuerdo de Comp`
      * `30810 Inv a Ser Mantenidas Hasta Vto - Acuerdo de Comp`
    * `3082 Inst Finan Represent de Der Patri - Acuerdo Comp`
      * `30820 Inst Finan Represent de Der Patri - Acuerdo Comp`

---

## 2. Cuenta 31: Inversiones Inmobiliarias
**Origen**: `capturas/25.png`  
**Definición**: Bienes inmuebles (terrenos o edificaciones) que la empresa posee para obtener rentas por alquiler o plusvalías por apreciación de capital (NIC 40), y no para uso administrativo ni venta inmediata.

### Estructura Literal del ERP:
* `31 INVERSIONES INMOBILIARIAS`
  * `311 Inversiones en Terrenos`
    * `3111 Inversiones en Terrenos Urbanos`
      * `31111 Inversiones Terrenos Urbanos a Valor Razonable`
      * `31112 Inversiones Terrenos Urbanos al Costo`
      * `31113 Inversiones Terrenos Urbanos Revaluación`
    * `3112 Inversiones en Terrenos Rurales`
      * `31121 Inversiones Terrenos Rurales a Valor Razonable`
      * `31122 Inversiones Terrenos Rurales al Costo`
      * `31123 Inversiones Terrenos Rurales Revaluación`
  * `312 Inversiones en Edificaciones`
    * `3121 Inversiones en Edificaciones`
      * `31211 Inversiones Edificaciones a Valor Razonable`
      * `31212 Inversiones Edificaciones al Costo`
      * `31213 Inversiones Edificaciones Revaluación`
      * `31214 Costo de Financiación Inversiones Inmobiliarias`

---

## 3. Cuenta 32: Activos Adquiridos en Arrendamiento Financiero
**Origen**: `capturas/25.png`  
**Definición**: Bienes sobre los cuales la empresa ejerce el control sustancial de los riesgos y beneficios bajo contratos de leasing financiero (NIIF 16 / NIC 17), con opción de compra pactada.

### Estructura Literal del ERP:
* `32 ACTIVOS ADQUIRIDOS EN ARRENDAMIENTO FINANCIERO`
  * `321 Inversiones Inmobiliarias Arrendamiento Financiero`
    * `3211 Inversiones Terrenos Arrendamiento Financiero`
      * `32110 Inversiones Terrenos Arrendamiento Financiero`
    * `3212 Inversiones Edificaciones Arrendamiento Financiero`
      * `32120 Inversiones Edificaciones Arrendamiento Financiero`
  * `322 Inmuebles, Maq y Equipo Arrendamiento Financiero`
    * `3221 Terrenos Arrendamiento Financiero`
      * `32210 Terrenos Arrendamiento Financiero`
    * `3222 Edificaciones Arrendamiento Financiero`
      * `32220 Edificaciones Arrendamiento Financiero`
    * `3223 Maq y Equipo de Explot Arrendamiento Financiero`
      * `32230 Maq y Equipo de Explot Arrendamiento Financiero`
    * `3224 Equipo de Transporte Arrendamiento Financiero`
      * `32241 Equipo de Transporte - Motorizado`
      * `32243 CAMIONETAS`
    * `3225 Muebles y Enseres Arrendamiento Financiero`
      * `32250 Muebles y Enseres Arrendamiento Financiero`
    * `3226 Equipos Diversos Arrendamiento Financiero`
      * `32260 Equipos Diversos Arrendamiento Financiero`
    * `3227 Herram y Unid de Reemp Arrendamiento Financiero`
      * `32270 Herram y Unid de Reemp Arrendamiento Financiero`

---

## 4. Cuenta 33: Inmuebles, Maquinaria y Equipo
**Origen**: `capturas/26-1.png`, `capturas/26-2.png` y `capturas/26-3.png` *(Flujo continuo explícito `26-1` -> `26-2` -> `26-3`)*  
**Definición**: Activos tangibles utilizados en la producción de bienes, prestación de servicios, arrendamiento a terceros o propósitos administrativos, cuya vida útil supera un año (NIC 16).

### Estructura Literal del ERP:
* `33 INMUEBLES, MAQUINARIA Y EQUIPO` (`capturas/26-1.png`)
  * `331 Terrenos`
    * `3311 Terrenos`
      * `33111 Terrenos al Costo`
      * `33112 Terrenos Revaluación`
  * `332 Edificaciones`
    * `3321 Edificaciones Administrativos`
      * `33211 Edific Adminst Costo de Adquisición o Producción`
      * `33212 Edific Adminst Costo Revaluación`
      * `33213 Edific Adminst Costo de Financiación`
    * `3322 Almacenes`
      * `33221 Almacenes Costo de Adquisición o Producción`
      * `33222 Almacenes Revaluación`
      * `33223 Almacenes Costo de Financiación`
    * `3323 Edificaciones Para Producción`
      * `33231 Edific Para Prod Costo de Adquisición o Producción`
      * `33232 Edific Para Prod Revaluación`
      * `33233 Edificación Para Prod Costo de Financiación`
    * `3324 Instalaciones`
      * `33241 Instalaciones Costo de Adquisición o Producción`
      * `33242 Instalaciones Revaluación`
      * `33243 Instalaciones Costo de Financiación`
  * `333 Maquinarias y Equipos de Explotación`
    * `3331 Maquinaria y Equipos de Explotación`
      * `33311 Maq y Eq de Exp Costo de Adquisición o Producción`
      * `33312 Maq y Eq de Exp Revaluación`
      * `33313 Maq y Eq de Exp Costo de Financiación`
  * `334 Unidades de Transporte`
    * `3341 Vehículos Motorizados`
      * `33411 Vehículos Motorizados al Costo`
      * `33412 Vehículos Motorizados Revaluación`
    * `3342 Vehículos no Motorizados`
      * `33421 Vehículos no Motorizados al Costo`
      * `33422 Vehículos no Motorizados Revaluación`
  * `335 Muebles y Enseres` (`capturas/26-2.png`)
    * `3351 Muebles`
      * `33511 Muebles al Costo`
      * `33512 Muebles Revaluación`
    * `3352 Enseres`
      * `33521 Enseres al Costo`
      * `33522 Enseres Revaluación`
  * `336 Equipos Diversos` (`capturas/26-2.png`)
    * `3361 Equipos Para Proceso de Información (Cómputo)`
      * `33611 Equipo Para Proc de Información al Costo`
      * `33612 Equipo Para Proc de Información Revaluación`
    * `3362 Equipo de Comunicación`
      * `33621 Equipo de Comunicación al Costo`
      * `33622 Equipo de Comunicación Revaluación`
    * `3363 Equipo de Seguridad`
      * `33631 Equipo de Seguridad al Costo`
      * `33632 Equipo de Seguridad Revaluación`
    * `3369 Otros Equipos`
      * `33691 Otros Equipos al Costo`
      * `33692 Otros Equipos Revaluación`
  * `337 Herramientas y Unidades de Reemplazo` (`capturas/26-2.png`)
    * `3371 Herramientas`
      * `33711 Herramientas al Costo`
      * `33712 Herramientas Revaluación`
    * `3372 Unidades de Reemplazo`
      * `33721 Unidades de Reemplazo al Costo`
      * `33722 Unidades de Reemplazo Revaluación`
  * `338 Unidades por Recibir` (`capturas/26-2.png`)
    * `3381 Maquinaria y Equipo de Explotación por Recibir`
      * `33810 Maquinaria y Equipo de Explotación por Recibir`
    * `3382 Equipo de Transporte por Recibir`
      * `33820 Equipo de Transporte por Recibir`
    * `3383 Muebles y Enseres por Recibir`
      * `33830 Muebles y Enseres por Recibir`
    * `3386 Equipos Diversos por Recibir`
      * `33860 Equipos Diversos por Recibir`
    * `3387 Herramientas y Unidades de Reemplazo por Recibir`
      * `33870 Herramientas y Unidades de Reemplazo por Recibir`
  * `339 Construcciones y Obras en Curso` (`capturas/26-3.png`)
    * `3391 Adaptación de Terrenos`
      * `33910 Adaptación de Terrenos`
    * `3392 Construcciones en Curso`
      * `33920 Construcciones en Curso`
    * `3393 Maquinaria en Montaje`
      * `33930 Maquinaria en Montaje`
    * `3394 Inversión Inmobiliaria en Curso`
      * `33940 Inversión Inmobiliaria en Curso`
    * `3397 Costo de Financiación Inv Inmob en Curso`
      * `33971 Costo de Financiación Edificaciones en Curso`
    * `3398 Costo de Financiación Inm Maq y Eq en Curso`
      * `33981 Costo de Financiación Edificaciones en Curso`
      * `33982 Costo de Financiación Maq y Eq de Exp en Curso`
    * `3399 Otros Activos en Curso`
      * `33990 Otros Activos en Curso`

---

## 5. Cuenta 34: Intangibles
**Origen**: `capturas/27-1.png` y `capturas/27-2.png` *(Flujo continuo explícito `27-1` -> `27-2`)*  
**Definición**: Activos identificables, de carácter no monetario y sin sustancia física, derivados de derechos legales o contractuales (NIC 38).

### Estructura Literal del ERP:
* `34 INTANGIBLES`
  * `341 Concesiones, Licencias y Otros Derechos` (`capturas/27-1.png`)
    * `3411 Concesiones`
      * `34111 Concesiones al Costo`
      * `34112 Concesiones Revaluación`
    * `3412 Licencias`
      * `34121 Licencias al Costo`
      * `34122 Licencias Revaluación`
    * `3419 Otros Derechos`
      * `34191 Otros Derechos al Costo`
      * `34192 Otros Derechos Revaluación`
  * `342 Patentes y Propiedad Industrial` (`capturas/27-1.png`)
    * `3421 Patentes`
      * `34211 Patentes al Costo`
      * `34212 Patentes Revaluación`
    * `3422 Marcas`
      * `34221 Marcas al Costo`
      * `34222 Marcas Revaluación`
  * `343 Programas de Computadora (Software)` (`capturas/27-1.png`)
    * `3431 Aplicaciones Informáticas`
      * `34311 Aplicaciones Informáticas al Costo`
      * `34312 Aplicaciones Informáticas Revaluación`
  * `344 Costo de Exploración y Desarrollo` (`capturas/27-1.png`)
    * `3441 Costos de Exploración`
      * `34411 Costo de Exploración al Costo`
      * `34412 Costo de Exploración Revaluación`
      * `34413 Costo de Exploración Costo de Financiación`
    * `3442 Costo de Desarrollo`
      * `34421 Costo de Desarrollo al Costo`
      * `34422 Costo de Desarrollo Revaluación`
      * `34423 Costo de Desarrollo Costo de Financiación`
  * `345 Fórmulas, Diseños y Prototipos` (`capturas/27-1.png`)
    * `3451 Fórmulas`
      * `34511 Fórmulas al Costo`
      * `34512 Fórmulas Revaluación`
    * `3452 Diseños y Prototipos`
      * `34521 Diseños y Prototipos al Costo`
      * `34522 Diseños y Prototipos Revaluación`
  * `346 Reservas de Productos Extraibles` (`capturas/27-2.png`)
    * `3461 Reservas de Minerales`
      * `34611 Reserva de Minerales al Costo`
      * `34612 Reserva de Minerales Revaluación`
    * `3462 Reservas de Petróleo y Gas`
      * `34621 Reservas de Petróleo y Gas al Costo`
      * `34622 Reservas de Petróleo y Gas Revaluación`
    * `3463 Reservas de Madera`
      * `34631 Reservas de Madera al Costo`
      * `34632 Reservas de Madera Revaluación`
    * `3469 Reservas de Otros Productos Extraibles`
      * `34691 Reservas de Otros Prod Extraibles al Costo`
      * `34692 Reservas de Otros Prod Extraibles Revaluación`
  * `347 Plusvalía Mercantil` (`capturas/27-2.png`)
    * `3471 Plusvalía Mercantil`
      * `34710 Plusvalía Mercantil`
  * `349 Otros Activos Intangibles` (`capturas/27-2.png`)
    * `3491 Otros Activos Intangibles`
      * `34911 Otros Activos Intangibles al Costo`
      * `34912 Otros Activos Intangibles Revaluación`

---

## 6. Cuenta 35: Activos Biológicos
**Origen**: `capturas/28.png`  
**Definición**: Animales vivos o plantas cultivadas gestionados en actividades agropecuarias para su cosecha o producción continuada (NIC 41).

### Estructura Literal del ERP:
* `35 ACTIVOS BIOLOGICOS`
  * `351 Activos Biologicos en Producción`
    * `3511 Activos en Producción de Origen Animal`
      * `35111 Activos en Prod de Origen Animal a Valor Razonable`
      * `35112 Activos en Prod de Origen Animal al Costo`
      * `35113 Activos en Prod de Origen Animal Costo de Financia`
    * `3512 Activos en Producción de Origen Vegetal`
      * `35121 Activos en Prod de Origen Vegetal Valor Razonable`
      * `35122 Activos en Prod de Origen Vegetal al Costo`
      * `35123 Activos en Prod de Origen Vegetal Costo de Financ`
  * `352 Activos Biológicos en Desarrollo`
    * `3521 Activos en Desarrollo de Origen Animal`
      * `35211 Activos en Desa de Origen Animal a Valor Razonable`
      * `35212 Activos en Desa de Origen Animal al Costo`
      * `35213 Activos en Desa de Origen Animal Costo de Finan`
    * `3522 Activos en Desarrollo de Origen Vegetal`
      * `35221 Activos en Desa de Origen Vegetal a Valor Razonabl`
      * `35222 Activos en Desa de Origen Vegetal al Costo`
      * `35223 Activos en Desa de Origen Vegetal Costo de Finan`

---

## 7. Cuenta 36: Desvalorización de Activos Inmovilizados
**Origen**: `capturas/28.png`, `capturas/29-1.png` y `capturas/30.png`  
*(Flujo continuo híbrido: inicia en 28.png, continúa en 29-1.png y concluye en 30.png sin sufijo `-x`).*  
**Definición**: Pérdidas por deterioro acumuladas cuando el valor contable de un activo inmovilizado supera su importe recuperable (NIC 36).

### Estructura Literal del ERP:
* `36 DESVALORIZACIÓN DE ACTIVOS INMOVILIZADOS`
  * `361 Desvalorización Inversiones Inmobiliarias` (`capturas/28.png`)
    * `3611 Desvalorización Inversiones Inmobiliarias Terrenos`
      * `36110 Desvalorización Inversiones Inmobiliarias Terrenos`
    * `3612 Desvalorización Inversiones Edificaciones`
      * `36121 Desvalorización Inv Edificaciones Costo Construcc`
      * `36122 Desvalorización Inv Edificaciones Costo Finan`
  * `363 Desvalorización Inmuebles, Maquinaria y Equipo` (`capturas/29-1.png`)
    * `3631 Desvalorización Terrenos`
      * `36310 Desvalorización Terrenos`
    * `3632 Desvalorización Edificaciones`
      * `36321 Desvalorización Edificaciones Costo Construcción`
      * `36322 Desvalorización Edificaciones Costo Financiación`
    * `3633 Desvalorización Maquinaria y Equipo de Explotación`
      * `36331 Desvalorización Maq y Eq de Explot Costo Construcc`
      * `36332 Desvalorización Maq y Eq de Explot Costo Financiac`
    * `3634 Desvalorización Equipo de Transporte`
      * `36340 Desvalorización Equipo de Transporte`
    * `3635 Desvalorización Muebles y Enseres`
      * `36350 Desvalorización Muebles y Enseres`
    * `3636 Desvalorización Equipos Diversos`
      * `36360 Desvalorización Equipos Diversos`
    * `3637 Desvalorización Herramientas y Unidades Reemplazo`
      * `36370 Desvalorización Herramientas y Unidades Reemplazo`
  * `364 Desvalorización de Intangibles` (`capturas/29-1.png`)
    * `3641 Desvalorización Concesiones, Licencias y Otros Der`
      * `36410 Desvalorización Concesiones, Licencias y Otros Der`
    * `3642 Desvalorización Patentes y Propiedad Industrial`
      * `36420 Desvalorización Patentes y Propiedad Industrial`
    * `3643 Desvalorización Programas de Computadora (Software)`
      * `36430 Desvalorización Programas de Computadora (Software)`
    * `3644 Desvalorización Costos de Exploración y Desarrollo`
      * `36441 Desval Costos de Explor y Desarrollo al Costo`
      * `36442 Desval Costos de Explor y Desarrollo Costo de Fina`
    * `3645 Desvalorización Fórmulas, Diseños y Prototipos`
      * `36450 Desvalorización Fórmulas, Diseños y Prototipos`
    * `3647 Desvalorización de Plusvalia Mercantil`
      * `36470 Desvalorización de Plusvalia Mercantil`
    * `3649 Desvalorización Otros Activos Intangibles`
      * `36490 Desvalorización Otros Activos Intangibles`
  * `365 Desvalorización Activos Biológicos` (`capturas/30.png`)
    * `3651 Desvalorización Activos Biológicos en Producción`
      * `36511 Desvalorización Act Biológ Producción al Costo`
      * `36512 Desvalorización Act Biológ Producción Costo Finan`
    * `3652 Desvalorización Activos Biológicos en Desarrollo`
      * `36521 Desvalorización Act Biológ Desarrollo Costo`
      * `36522 Desvalorización Act Biológ Desarrollo Costo Finan`
  * `366 Desvalorización de Inversiones Mobiliarias` (`capturas/30.png`)
    * `3661 Desvalor Inver a Ser Mant Hasta Vencimiento`
      * `36610 Desvalor Inver a Ser Mant Hasta Vencimiento`
    * `3662 Desvalor Inv Finan Represent Derecho Patrimonial`
      * `36620 Desvalor Inv Finan Represent Derecho Patrimonial`

---

## 8. Cuenta 37: Activos Diferidos
**Origen**: `capturas/31.png`  
**Definición**: Activos por impuestos a la renta diferidos (NIC 12), participaciones laborales diferidas e intereses no devengados por transacciones crediticias o fraccionamientos.

### Estructura Literal del ERP:
* `37 ACTIVOS DIFERIDOS`
  * `371 Impuesto a la Renta Diferido`
    * `3711 Impuesto a la Renta Diferido - Patrimonio`
      * `37110 Impuesto a la Renta Diferido - Patrimonio`
    * `3712 Impuesto a la Renta Diferido - Resultados`
      * `37120 Impuesto a la Renta Diferido - Resultados`
  * `372 Participaciones de los Trabajadores Diferidas`
    * `3721 Participac de Trabajadores Diferidas - Patrimonio`
      * `37210 Participac de Trabajadores Diferidas - Patrimonio`
    * `3722 Participac de Trabajadores Diferidas - Resultados`
      * `37220 Participac de Trabajadores Diferidas - Resultados`
  * `373 Intereses Diferidos`
    * `3731 Intereses no Devengados Transacciones con Terceros`
      * `37310 Intereses no Devengados Transacciones con Terceros`
    * `3732 Intereses no Devengados Medición a Valor Descontad`
      * `37320 Intereses no Devengados Medición a Valor Descontad`
    * `3733 INTERESES FRACCIONAMIENTO TRIBUTARIO`
      * `37330 INTERESES DE FRACCIONAMIENTO TRIBUTARIO`
    * `3739 INTERESES POR FRACCIONAMIENTO TRIBUTARIO`
      * `37390 INTERESES POR FRACCIONAMIENTO TRIBUTARIO`
  * `374 Percepciones - Diferidas`
    * `3741 Percepciones - Diferidas`
      * `37410 Percepciones - Diferidas`
  * `375 Otros Activos - Diferidas`
    * `3751 Otros Activos - Diferidas`
      * `37510 Otros Activos - Diferidas`

---

## 9. Cuenta 38: Otros Activos
**Origen**: `capturas/32-1.png`  
**Definición**: Obras de arte, bibliotecas, bienes entregados en comodato y activos recibidos en adjudicación o dación en pago pendientes de liquidación.

### Estructura Literal del ERP:
* `38 OTROS ACTIVOS`
  * `381 Bienes de Arte o Cultura`
    * `3811 Obras de Arte`
      * `38110 Obras de Arte`
    * `3812 Biblioteca`
      * `38120 Biblioteca`
    * `3813 Otras Obras de Arte y Cultura`
      * `38130 Otras Obras de Arte y Cultura`
  * `382 Otros Activos Diversos`
    * `3821 Monedas y Joyas`
      * `38210 Monedas y Joyas`
    * `3822 Bienes Entregados en Comodato`
      * `38220 Bienes Entregados en Comodato`
    * `3823 Bienes Recibidos en Pago (Adjudicados y Realizable`
      * `38230 Bienes Recibidos en Pago (Adjudicados y Realizable`
    * `3829 Otros Activos Diversos`
      * `38290 Otros Activos Diversos`

---

## 10. Cuenta 39: Depreciación, Amortización y Agotamiento Acumulado
**Origen**: `capturas/32-1.png` y `capturas/32-2.png` *(Flujo continuo explícito `32-1` -> `32-2`)*  
**Definición**: Cuenta correctora de activo (saldo acreedor) que acumula el desgaste sistemático por uso, paso del tiempo u obsolescencia de los activos tangibles e intangibles.

### Estructura Literal del ERP:
* `39 DEPRECIACION, AMORTIZACION Y AGOTAMIENTO ACUMULADO`
  * `391 Depreciación Acumulada` (`capturas/32-1.png` y `32-2.png`)
    * `3911 Dep Acum Inversiones Inmobiliarias` (`capturas/32-1.png`)
      * `39111 Dep Acum Inv Inmob Edificaciones Costo Adquisición`
      * `39112 Dep Acum Inv Inmob Edificaciones Revaluación`
      * `39113 Dep Acum Inv Inmob Edificaciones Costo Finan`
    * `3912 Dep Acum Adquiridos en Arrendamiento Financiero` (`capturas/32-1.png`)
      * `39121 Dep Acum Adq Arrend Finan Inv Inmob Edificaciones`
      * `39122 Dep Acum Adq Arrend Finan Edificaciones`
      * `39123 Dep Acum Adq Arrend Finan Maq y Equipo de Explot`
      * `39124 Dep Acum Adq Arrend Finan Equipo de Transporte`
      * `39126 Dep Acum Adq Arrend Finan Equipos Diversos`
    * `3913 Dep Acum Inmuebles, Maquinaria y Equipo al Costo` (`capturas/32-1.png`)
      * `39131 Dep Acum Edificaciones al Costo`
      * `39132 Dep Acum Maquinaria y Equipo de Explot al Costo`
      * `39133 Dep Acum Equipo de Transporte al Costo`
      * `39134 Dep Acum Muebles y Enseres al Costo`
      * `39135 Dep Acum Equipos Diversos al Costo`
      * `39136 Dep Acum Herramientas y Unid de Reemplazo al Costo`
    * `3914 Dep Acum Inmuebles, Maquinaria y Equipo Revaluació` (`capturas/32-2.png`)
      * `39141 Dep Acum Edificaciones Revaluación`
      * `39142 Dep Acum Maquinaria y Equipo de Explot Revaluación`
      * `39143 Dep Acum Equipos de Transporte Revaluación`
      * `39144 Dep Acum Muebles y Enseres Revaluación`
      * `39145 Dep Acum Equipos Diversos Revaluación`
      * `39146 Dep Acum Herramientas y Unidades Reemplazo Revalua`
    * `3915 Dep Acum Inmuebles, Maquinaria y Equipo Costo Fab` (`capturas/32-2.png`)
      * `39151 Dep Acum Inm Maq y Eq Costo Fab Edificaciones`
      * `39152 Dep Acum Inm Maq y Eq Costo Fab Maq y Eq Explot`
    * `3916 Dep Acum Activos Biológicos en Producción Costo` (`capturas/32-2.png`)
      * `39161 Dep Acum Activos Biológicos Origen Animal Costo`
      * `39162 Dep Acum Activos Biológicos Origen Vegetal Costo`
    * `3917 Dep Acum Activos Biológicos en Prod Costo Finan` (`capturas/32-2.png`)
      * `39171 Dep Acum Activos Biológ Origen Animal Costo Finan`
      * `39172 Dep Acum Activos Biológ Origen Vegetal Costo Finan`
  * `392 Amortización Acumulada` (`capturas/32-2.png`)
    * `3921 Amortización Acumulada Intangibles al Costo`
      * `39211 Amort Acum Conces Licen y Otros Derechos Costo`
      * `39212 Amort Acum Patentes y Propiedad Industrial Costo`
      * `39213 Amort Acum Programas Computadora (Software) Costo`
      * `39214 Amort Acum Costos Exploración y Desarrollo Costo`
      * `39215 Amort Acum Fórmulas, Diseños y Prototípos Costo`
      * `39219 Amort Acum Otros Activos Costo`
    * `3922 Amortización Acumulada Intangibles Revaluación`
      * `39221 Amort Acum Conces Licen y Otros Derechos Revaluaci`
      * `39222 Amort Acum Patentes y Propiedad Industrial Revalua`
      * `39223 Amort Acum Programas Computadora (Software) Revalu`
      * `39224 Amort Acum Costos Exploración y Desarrollo Revalua`
      * `39225 Amort Acum Fórmulas, Diseños y Prototípos Revalua`
      * `39229 Amort Acum Otros Activos Revaluación`
    * `3923 Amortización Acumulada Intangibles Costo de Finan`
      * `39234 Amort Acum Costos de Explor y Desa Costo de Finan`
