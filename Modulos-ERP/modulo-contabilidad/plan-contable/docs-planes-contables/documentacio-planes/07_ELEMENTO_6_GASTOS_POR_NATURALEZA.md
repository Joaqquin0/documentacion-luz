# Elemento 6: Gastos por Naturaleza

Comprende las cuentas de gestión que registran los consumos de existencias, las cargas de personal, servicios prestados por terceros, tributos, otros gastos de gestión, pérdidas por medición a valor razonable, gastos financieros, valuación y deterioro de activos y provisiones, y el costo de ventas. Al cierre se transfieren a la contabilidad analítica de explotación (Elemento 9) mediante la cuenta 79.

---

## 1. Cuenta 60: Compras
**Origen**: `capturas/42-1.png` y `capturas/42-2.png` *(Flujo continuo explícito `42-1` -> `42-2`)*  
**Definición**: Adquisiciones a título oneroso de mercaderías, materias primas, materiales auxiliares, suministros y envases que ingresarán a los almacenes de la entidad, junto con sus costos vinculados de transporte, seguros y derechos de aduana.

### Estructura Literal del ERP:
* `60 COMPRAS` (`capturas/42-1.png`)
  * `601 Compra Mercaderías`
    * `6011 Compra Mercaderías Manufacturadas`
      * `60110 Compra Mercaderías Manufacturadas`
    * `6012 Compra Mercaderías de Extracción`
      * `60120 Compra Mercaderías de Extracción`
    * `6013 Compra Mercaderías Agropecuarias y Piscícolas`
      * `60130 Compra Mercaderías Agropecuarias y Piscícolas`
    * `6014 Compra Mercaderías Inmuebles`
      * `60140 Compra Mercaderías Inmuebles`
    * `6018 Compra Otras Mercaderías`
      * `60180 Compra Otras Mercaderías`
  * `602 Compra Materias Primas`
    * `6021 Compra Materias Primas Para Prod Manufacturados`
      * `60210 Compra Materias Primas Para Prod Manufacturados`
    * `6022 Compra Materias Primas Para Prod de Extracción`
      * `60220 Compra Materias Primas Para Prod de Extracción`
    * `6023 Compra Materias Primas Para Prod Agropec y Piscíc`
      * `60230 Compra Materias Primas Para Prod Agropec y Piscíc`
    * `6024 Compra Materias Primas Para Prod Inmuebles`
      * `60240 Compra Materias Primas Para Prod Inmuebles`
  * `603 Compra Materiales Auxil, Suminist y Repuestos`
    * `6031 Compra Materiales Auxiliares`
      * `60310 Compra Materiales Auxiliares`
    * `6032 Compra Suministros`
      * `60320 Compra Suministros`
      * `60321 Compra de Combustibles`
      * `60322 Compra de Lubricantes`
      * `60323 Compra de Energia`
      * `60324 Compra Llantas y Cámaras`
      * `60325 Materiales para Mant. de Carrocería`
      * `60329 Compra de Otros Suministros`
    * `6033 Compra Repuestos y Accesorios`
      * `60330 Compra Repuestos y Accesorios`
  * `604 Compra Envases y Embalajes` (`capturas/42-2.png`)
    * `6041 Compra Envases`
      * `60410 Compra Envases`
    * `6042 Compra Embalajes`
      * `60420 Compra Embalajes`
  * `609 Costos Vinculados con las Compras` (`capturas/42-2.png`)
    * `6091 Costos Vinculados con las Compras de Mercaderías`
      * `60911 Transporte de Mercadería`
      * `60912 Seguros de Mercadería`
      * `60913 Derechos Aduaneros de Mercadería`
      * `60914 Comisiones de Mercadería`
      * `60919 Otros Costos Vinculados con Compras de Mercadería`
    * `6092 Costo Vinc con Compra de Mat Prima Mat Sum y Rpst`
      * `60921 Transporte Mat Prima Materiales Suminst Repuestos`
      * `60922 Seguros Mat Prima Materiales Suminst Repuestos`
      * `60923 Derechos Ad Mat Prima Materiales Suminst Repuestos`
      * `60924 Comisiones Mat Prima Materiales Suminst Repuestos`
      * `60925 Otros Costos Mat Prima Materiales Suminst Repuest`
    * `6093 Costos Vinc con Comp de Mater, Sumin y Repuestos`
      * `60931 Transporte de Materiales, suministros y Repuestos`
      * `60932 Seguros de Materiales, suministros y Repuestos`
      * `60933 Derechos de Materiales, suministros y Repuestos`
      * `60934 Comisiones de Materiales, suministros y Repuestos`
      * `60935 Otros Costo de Materiales, suministros y Repuestos`
    * `6094 Costos Vinculados con Compras de Envases y Embalaj`
      * `60941 Transporte de Envases y Embalajes`
      * `60942 Seguros Envases y embalajes`
      * `60943 Derechos de Envases y Embalajes`
      * `60944 Comisiones Envases y Embalajes`
      * `60945 Otros Costos Vinculados Envases y Embalajes`

---

## 2. Cuenta 61: Variación de Existencias
**Origen**: `capturas/42-2.png` y `capturas/43-1.png` *(Flujo continuo explícito `42-2` -> `43-1`)*  
**Definición**: Refleja las variaciones cuantitativas y cualitativas de los inventarios comprados al cierre del periodo económico.

### Estructura Literal del ERP:
* `61 VARIACION DE EXISTENCIAS` (`capturas/42-2.png` y `43-1.png`)
  * `611 Variación Mercaderías`
    * `6111 Variación Mercaderías Manufacturadas`
      * `61110 Variación Mercaderías Manufacturadas`
    * `6112 Variación Mercaderías de Extracción`
      * `61120 Variación Mercaderías de Extracción`
    * `6113 Variación Mercaderías Agropecuaria y Piscícola`
      * `61130 Variación Mercaderías Agropecuaria y Piscícola`
    * `6114 Variación Mercaderías Inmuebles` (`capturas/43-1.png`)
      * `61140 Variación Mercaderías Inmuebles`
    * `6115 Variación Otras Mercaderías` (`capturas/43-1.png`)
      * `61150 Variación Otras Mercaderías`
  * `612 Variación Materias Primas` (`capturas/43-1.png`)
    * `6121 Variación Mat Primas Para Prod Manufacturados`
      * `61210 Variación Mat Primas Para Prod Manufacturados`
    * `6122 Variación Mat Primas Para Prod de Extracción`
      * `61220 Variación Mat Primas Para Prod de Extracción`
    * `6123 Variación Mat Primas Para Prod Agropec y Piscícola`
      * `61230 Variación Mat Primas Para Prod Agropec y Piscícola`
    * `6124 Variación Mat Primas Para Prod Inmuebles`
      * `61240 Variación Mat Primas Para Prod Inmuebles`
  * `613 Variación Materiales Auxil Suministros y Repuestos` (`capturas/43-1.png`)
    * `6131 Variación de Materiales Auxiliares`
      * `61310 Variación de Materiales Auxiliares`
    * `6132 Variación de Suministros`
      * `61320 Variación de Suministros`
    * `6133 Variación de Repuestos`
      * `61330 Variación de Repuestos`
  * `614 Envases y Embalajes` (`capturas/43-1.png`)
    * `6141 Variación Envases`
      * `61410 Variación Envases`
    * `6142 Variación Embalajes`
      * `61420 Variación Embalajes`

---

## 3. Cuenta 62: Gastos de Personal, Directores y Gerentes
**Origen**: `capturas/44-1.png` y `capturas/45-1.png` *(Flujo continuo explícito `44-1` -> `45-1`)*  
**Definición**: Gastos devengados por retribuciones laborales, beneficios sociales de ley, atenciones al personal, aportaciones a la seguridad social y dietas al directorio.

### Estructura Literal del ERP:
* `62 GASTOS DE PERSONAL, DIRECTORES Y GERENTES` (`capturas/44-1.png`)
  * `621 Remuneraciones`
    * `6211 Sueldos y Salarios`
      * `62110 Sueldos y Salarios`
    * `6212 Comisiones`
      * `62120 Comisiones`
    * `6213 Remuneraciones en Especie`
      * `62130 Remuneraciones en Especie`
    * `6214 Gratificaciones`
      * `62140 Gratificaciones`
    * `6215 Vacaciones`
      * `62150 Vacaciones`
  * `622 Otras Remuneraciones`
    * `6220 Otras Remuneraciones`
      * `62200 Otras Remuneraciones`
  * `623 Indemnizaciones al Personal`
    * `6230 Indemnizaciones al Personal`
      * `62300 Indemnizaciones al Personal`
  * `624 Capacitación`
    * `6240 Capacitación`
      * `62400 Capacitación`
  * `625 Atención al Personal`
    * `6250 Atención al Personal`
      * `62500 Atención al Personal`
  * `626 Gerentes`
    * `6260 Gerentes`
      * `62600 Gerentes`
  * `627 Seguridad y Previsión Social`
    * `6271 Régimen de Prestación de Salud`
      * `62710 Régimen de Prestación de Salud`
    * `6272 Régimen de Pensiones`
      * `62720 Régimen de Pensiones`
    * `6273 Seguro Comp Trabajo de Riesgo Acc Trab y Enf Prof`
      * `62730 Seguro Comp Trabajo de Riesgo Acc Trab y Enf Prof`
    * `6274 Seguro de Vida`
      * `62740 Seguro de Vida`
    * `6275 Seguros Particulares de Prest de Salud EPS y Otros` (`capturas/45-1.png`)
      * `62750 Seguros Particulares de Prest de Salud EPS y Otros`
    * `6276 Caja de Beneficios Seguridad Social del Pescador` (`capturas/45-1.png`)
      * `62760 Caja de Beneficios Seguridad Social del Pescador`
    * `6277 Contribuciones al SENCICO y el SENATI` (`capturas/45-1.png`)
      * `62770 Contribuciones al SENCICO y el SENATI`
  * `628 Remuneraciones al Directorio` (`capturas/45-1.png`)
    * `6280 Remuneraciones al Directorio`
      * `62800 Remuneraciones al Directorio`
  * `629 Beneficios Sociales de los Trabajadores` (`capturas/45-1.png`)
    * `6291 Compensación por Tiempo de Servicios`
      * `62910 Compensación por Tiempo de Servicios`
    * `6292 Pensiones y Jubilaciones`
      * `62920 Pensiones y Jubilaciones`
    * `6293 Otras Beneficios Post Empleo`
      * `62930 Otras Beneficios Post Empleo`

---

## 4. Cuenta 63: Gastos de Servicios Prestados por Terceros
**Origen**: `capturas/45-1.png`, `capturas/45-2.png`, `capturas/45-3.png` y `capturas/46-1.png` *(Flujo continuo explícito `45-1` -> `45-2` -> `45-3` -> `46-1`)*  
**Definición**: Servicios no laborales contratados con personas naturales o jurídicas para el desarrollo operativo, administrativo y comercial de la entidad.

### Estructura Literal del ERP:
* `63 GASTOS DE SERVICIOS PRESTADOS POR TERCEROS` (`capturas/45-1.png`)
  * `631 Transporte, Correos y Gastos de Viaje`
    * `6311 Transportes`
      * `63111 Transporte de Carga`
      * `63112 Transporte de Pasajeros`
    * `6312 Correos`
      * `63120 Correos`
    * `6313 Alojamiento`
      * `63130 Alojamiento`
    * `6314 Alimentación`
      * `63140 Alimentación`
    * `6315 Otros Gastos de Viaje`
      * `63150 Otros Gastos de Viaje`
  * `632 Asesoria y Consultoria` (`capturas/45-2.png`)
    * `6321 Asesoria y Consultoria Administrativa`
      * `63210 Asesoria y Consultoria Administrativa`
    * `6322 Asesoria y Consultoria Legal y Tributaria`
      * `63220 Asesoria y Consultoria Legal y Tributaria`
    * `6323 Asesoria y Consultoria Auditoria Contable`
      * `63230 Asesoria y Consultoria Auditoria Contable`
    * `6324 Asesoria y Consultoria Mercadotecnia`
      * `63240 Asesoria y Consultoria Mercadotecnia`
    * `6325 Asesoria y Consultoria Medioambiental`
      * `63250 Asesoria y Consultoria Medioambiental`
    * `6326 Asesoria y Consultoria Investigación y Desarrollo`
      * `63260 Asesoria y Consultoria Investigación y Desarrollo`
    * `6327 Asesoria y Consultoria Producción`
      * `63270 Asesoria y Consultoria Producción`
    * `6329 Asesoria y Consultoria Otros`
      * `63290 Asesoria y Consultoria Otros`
  * `633 Producción Encargada a Terceros` (`capturas/45-2.png`)
    * `6330 Producción Encargada a Terceros`
      * `63300 Producción Encargada a Terceros`
      * `63301 Servicios medicos- encargado por terceros`
      * `63302 servicios Encargada a Terceros`
      * `63303 Servicio de Estiba`
      * `63304 Tratamiento de Fumigacion`
  * `634 Mantenimiento y Reparaciones` (`capturas/45-2.png` y `45-3.png`)
    * `6341 Mant y Reparaciones Inversión Inmobiliaria`
      * `63410 Mant y Reparaciones Inversión Inmobiliaria`
    * `6342 Mant y Reparaciones Activos Adq en Arrendam Finan`
      * `63420 Mant y Reparaciones Activos Adq en Arrendam Finan`
    * `6343 Mant y Reparaciones Inmuebles Maquinaria y Equipo`
      * `63430 Mant y Reparaciones Inmuebles Maquinaria y Equipo`
      * `63434 Mant y Reparaciones - Unidades medicos`
      * `63435 Mant y Reparaciones - Muebles y Enseres`
      * `63436 Mant y Reparaciones - Equipos Diversos`
      * `63437 Mant y Reparaciones - Herramientas y Unidades de Reemplazo`
      * `63438 UNIDADES DE TRANSPORTE`
    * `6344 Mant y Reparaciones Intangibles` (`capturas/45-3.png`)
      * `63440 Mant y Reparaciones Intangibles`
    * `6345 Mant y Reparaciones Activos Biológicos` (`capturas/45-3.png`)
      * `63450 Mant y Reparaciones Activos Biológicos`
  * `635 Alquileres` (`capturas/45-3.png`)
    * `6351 Alquiler de Terrenos`
      * `63510 Alquiler de Terrenos`
    * `6352 Alquiler de Edificaciones`
      * `63520 Alquiler de Edificaciones`
    * `6353 Alquiler de Maquinaria y Equipo de Explotación`
      * `63530 Alquiler de Maquinaria y Equipo de Explotación`
    * `6354 Alquiler de Equipo de Transporte`
    * `6356 Alquiler de Equipos Diversos`
  * `636 Servicios Básicos` (`capturas/45-3.png`)
    * `6361 Energía Eléctrica`
      * `63610 Energía Eléctrica`
    * `6362 Gas`
      * `63620 Gas`
    * `6363 Agua`
      * `63630 Agua`
    * `6364 Teléfono`
      * `63640 Teléfono`
    * `6365 Internet`
      * `63650 Internet`
    * `6366 Radio`
      * `63660 Radio`
    * `6367 Cable`
      * `63670 Cable`
  * `637 Publicidad, Publicaciones, Relaciones Públicas` (`capturas/45-3.png`)
    * `6371 Publicidad`
      * `63710 Publicidad`
    * `6372 Publicaciones`
      * `63720 Publicaciones`
    * `6373 Relaciones Públicas`
      * `63730 Relaciones Públicas`
  * `638 Servicios de Contratistas` (`capturas/45-3.png`)
    * `6380 Servicios de Contratistas`
      * `63800 Servicios de Contratistas`
  * `639 Otros Servicios Prestados por Terceros` (`capturas/46-1.png`)
    * `6391 Gastos Bancarios`
      * `63910 Gastos Bancarios`
    * `6392 Gastos de Laboratorios`
      * `63920 Gastos de Laboratorios`
    * `6393 Revision Tecnica Vehicular`
      * `63930 Revision Tecnica Vehicular`
    * `6399 Otros Servicios prestados por terceros`
      * `63990 Otros Servicios prestados por terceros`

---

## 5. Cuenta 64: Gastos por Tributos
**Origen**: `capturas/46-1.png` y `capturas/46-2.png` *(Flujo continuo explícito `46-1` -> `46-2`)*  
**Definición**: Impuestos, tasas y contribuciones asumidas como gasto por mandato de la legislación tributaria.

### Estructura Literal del ERP:
* `64 GASTOS POR TRIBUTOS` (`capturas/46-1.png`)
  * `641 Gobierno Central`
    * `6411 Impuesto General a las Ventas y Selectivo al Consu`
      * `64110 Impuesto General a las Ventas y Selectivo al Consu`
    * `6412 Impuesto a las Transacciones Financieras`
      * `64120 Impuesto a las Transacciones Financieras`
    * `6413 Impuesto Temporal a los Activos Netos`
      * `64130 Impuesto Temporal a los Activos Netos`
    * `6414 Impuesto a los Juegos de Casino y Máquinas Tragamo`
      * `64140 Impuesto a los Juegos de Casino y Máquinas Tragamo`
    * `6415 Regalias Mineras`
      * `64150 Regalias Mineras`
    * `6416 Cánones`
      * `64160 Cánones`
    * `6419 Otros Tributos Gobierno Central`
      * `64190 Otros Tributos Gobierno Central`
  * `642 Gobierno Regional`
    * `6420 Gobierno Regional`
      * `64200 Gobierno Regional`
  * `643 Gobierno Local`
    * `6431 Impuesto Predial`
      * `64310 Impuesto Predial`
    * `6432 Arbitrios Municipales y Seguridad Ciudadana`
      * `64320 Arbitrios Municipales y Seguridad Ciudadana`
    * `6433 Impuesto al Patrimonio Vehicular`
      * `64330 Impuesto al Patrimonio Vehicular`
    * `6434 Licencia de Funcionamiento`
      * `64340 Licencia de Funcionamiento`
  * `644 Otros Gastos por Tributo` (`capturas/46-2.png`)
    * `6441 Contribución al SENATI`
      * `64410 Contribución al SENATI`
    * `6442 Contribución al SENCICO`
      * `64420 Contribución al SENCICO`
    * `6443 Otros Gastos por Tributos Varios`
      * `64430 Otros Gastos por Tributos Varios`
  * `645 GASTOS EN DEUDA TRIBUTARIA` (`capturas/46-2.png`)
    * `6451 INTERESES`
      * `64510 INTERESES`
    * `6452 INTERESES DE FRACCIONAMIENTO`
      * `64520 INTERESES DE FRACCIONAMIENTO`

---

## 6. Cuenta 65: Otros Gastos de Gestión
**Origen**: `capturas/46-2.png` y `capturas/47.png` *(Continuidad implícita: 651-655 en 46-2.png y 656-659 en 47.png)*  
**Definición**: Gastos corrientes diversos propios de la administración o gestión empresarial que no corresponden a cargas laborales ni servicios de terceros.

### Estructura Literal del ERP:
* `65 OTROS GASTOS DE GESTION` (`capturas/46-2.png`)
  * `651 Seguros`
    * `6510 Seguros`
      * `65100 Seguros`
  * `652 Regalias`
    * `6520 Regalias`
      * `65200 Regalias`
  * `653 Suscripciones`
    * `6530 Suscripciones`
      * `65300 Suscripciones`
  * `654 Licencias y Derechos de Vigencia`
    * `6540 Licencias y Derechos de Vigencia`
      * `65400 Licencias y Derechos de Vigencia`
  * `655 Costo Neto Enajenación Activos Inmov y Oper Discon`
    * `6551 Costo Neto de Enajenación de Activos Inmovilizados`
      * `65511 Costo Neto Inversiones Inmobiliarias`
      * `65512 Costo Neto ACtivos Adq en Arrendamiento Financiero`
      * `65513 Costo Neto Inmuebles, Maquinaria y Equipo`
      * `65514 Costo Neto Intangibles`
      * `65515 Costo Neto Activos Biológicos`
    * `6552 Operaciones Dicontinuadas - Abandono de Activos`
      * `65521 Oper Discont - Inversiones Inmobiliarias`
      * `65522 Oper Discont - Act Adq en Arrendam Financiero`
      * `65523 Oper Discont - Inmueb, Maquinaria y Equipo`
      * `65524 Oper Discont - Intangibles`
      * `65525 Oper Discont - Activos Biológicos`
  * `656 Suministros` (`capturas/47.png`)
    * `6560 Suministros`
      * `65600 Suministros`
      * `65601 Suministros - Unidades de Transporte - Adminstracion`
      * `65602 Suministros - Herramientas`
  * `658 Gestión Medioambiental` (`capturas/47.png`)
    * `6580 Gestión Medioambiental`
      * `65800 Gestión Medioambiental`
  * `659 Otros Gastos de Gestión` (`capturas/47.png`)
    * `6591 Donaciones`
      * `65910 Donaciones`
    * `6592 Sanciones Administrativas`
      * `65920 Sanciones Administrativas`
    * `6593 Otros Gastos de Gestion`
      * `65930 Otros Gastos de Gestion`
    * `6594 Gastos por Desvalorización - Productos en Proceso`
      * `65940 Gastos por Desvalorización - Productos en Proceso`
    * `6595 Reposicion de Mercaderias Robadas/Deterioradas`
      * `65950 Reposicion de Mercaderias Robadas/Deterioradas`

---

## 7. Cuenta 66: Pérdida por Medición de Activos No Financieros al Valor Razonable
**Origen**: `capturas/47.png`  
**Definición**: Disminución patrimonial reconocida en resultados por valuación hacia abajo de existencias o activos inmovilizados medidos a valor razonable (NIC 40, NIC 41).

### Estructura Literal del ERP:
* `66 PERDIDA X MEDICION ACTIVOS NO FINAN VALOR RAZON` (`capturas/47.png`)
  * `661 Pérdida por Medición Activo Realizable`
    * `6611 Pérdida por Medición Mercaderías`
      * `66110 Pérdida por Medición Mercaderías`
    * `6612 Pérdida por Medición Productos Terminados`
      * `66120 Pérdida por Medición Productos Terminados`
    * `6613 Pérdida por Medición Activos No Ctes Mant Para Vta`
      * `66131 Pérd x Med Act No Ctes Mant Para Vta Inv Inmobilia`
      * `66132 Pérd x Med Act No Ctes Mant Para Vta Inm, Maq y Eq`
      * `66133 Pérd x Med Act No Ctes Mant Para Vta Intangibles`
      * `66134 Pérd x Med Act No Ctes Mant Para Vta Activos Bioló`
  * `662 Pérdida por Medición Activo Inmovilizado`
    * `6621 Pérdida por Medición Inversiones Inmobiliarias`
      * `66210 Pérdida por Medición Inversiones Inmobiliarias`
    * `6622 Pérdida por Medición Activos Biológicos`
      * `66220 Pérdida por Medición Activos Biológicos`

---

## 8. Cuenta 67: Gastos Financieros
**Origen**: `capturas/48.png` y `capturas/49.png` *(Continuidad implícita: 671-675 en 48.png y 676-679 en 49.png)*  
**Definición**: Intereses devengados por financiamientos bancarios, pérdidas por diferencia de cambio y cargos por derivados financieros.

### Estructura Literal del ERP:
* `67 GASTOS FINANCIEROS` (`capturas/48.png`)
  * `671 Gastos en Operaciones de Endeudamiento y Otros`
    * `6711 Préstamos de Instituciones Financieras y Otras Ent`
      * `67110 Préstamos de Instituciones Financieras y Otras Ent`
    * `6712 Contratos de Arrendamiento Financiero`
      * `67120 Contratos de Arrendamiento Financiero`
    * `6713 Emisión y Colocación de Inst Repres de Deuda y Pat`
      * `67130 Emisión y Colocación de Inst Repres de Deuda y Pat`
    * `6714 Documentos Vendidos o Descontados`
      * `67140 Documentos Vendidos o Descontados`
  * `672 Pérdida por Instrumentos Financieros Derivados`
    * `6720 Pérdida por Instrumentos Financieros Derivados`
      * `67200 Pérdida por Instrumentos Financieros Derivados`
  * `673 Intereses por Préstamos y Otras Obligaciones`
    * `6731 Préstamos de Instituciones Finan y Otras Entidades`
      * `67311 Intereses por Préstamos de Instituciones Finan`
      * `67312 Intereses por Préstamos de Otras Entidades`
    * `6732 Intereses de Contratos de Arrendamiento Financiero`
      * `67320 Intereses de Contratos de Arrendamiento Financiero`
    * `6733 Intereses de Otros Instrumentos Financieros`
      * `67330 Intereses de Otros Instrumentos Financieros`
    * `6734 Intereses de Documentos Vendidos o Descontados`
      * `67340 Intereses de Documentos Vendidos o Descontados`
    * `6735 Intereses de Obligaciones Emitidas`
      * `67350 Intereses de Obligaciones Emitidas`
    * `6736 Intereses de Obligaciones Comerciales`
      * `67360 Intereses de Obligaciones Comerciales`
    * `6737 Intereses de Obligaciones Tributarias`
      * `67370 Intereses de Obligaciones Tributarias`
    * `6738 Obligaciones Laborales`
      * `67380 Obligaciones Laborales`
  * `674 Gastos en Operaciones de Factoraje (Factoring)`
    * `6741 Gastos x Menor Valor Oper de Factoraje (Factoring)`
      * `67410 Gastos x Menor Valor Oper de Factoraje (Factoring)`
  * `675 Descuentos Concedidos por Pronto Pago`
    * `6750 Descuentos Concedidos por Pronto Pago`
      * `67500 Descuentos Concedidos por Pronto Pago`
  * `676 Diferencia de Cambio` (`capturas/49.png`)
    * `6760 Diferencia de Cambio`
      * `67600 Diferencia de Cambio`
  * `677 Pérdida x Medición de Act y Pas Finan a Valor Razo` (`capturas/49.png`)
    * `6771 Inv Para Negociación Medición a Valor Razonable`
      * `67710 Inv Para Negociación Medición a Valor Razonable`
    * `6772 Inv Disp Para la Venta Medición a Valor Razonable`
      * `67720 Inv Disp Para la Venta Medición a Valor Razonable`
    * `6773 Otros Activos y Pasivos Medición a Valor Razonable`
      * `67730 Otros Activos y Pasivos Medición a Valor Razonable`
  * `679 Otros Gastos Financieros` (`capturas/49.png`)
    * `6791 Primas por Opciones`
      * `67910 Primas por Opciones`
    * `6792 Gastos Financieros en Medición a Valor Descontado`
      * `67920 Gastos Financieros en Medición a Valor Descontado`

---

## 9. Cuenta 68: Valuación y Deterioro de Activos y Provisiones
**Origen**: `capturas/50.png`, `capturas/51.png` y `capturas/52.png` *(Continuidad implícita continua de 3 capturas `50` -> `51` -> `52` sin sufijo `-x`)*  
**Definición**: Dotaciones del periodo por depreciación de activos fijos, amortización de intangibles, agotamiento, estimación de cobranza dudosa, desvalorización de inventarios, deterioro y provisiones para litigios.

### Estructura Literal del ERP:
* `68 VALUACION Y DETERIORO DE ACTIVOS Y PROVISIONES` (`capturas/50.png`)
  * `681 Depreciación`
    * `6811 Depreciación de Inversiones Inmobiliarias`
      * `68111 Deprec Inv Inmob Edificaciones Costo`
      * `68112 Deprec Inv Inmob Edificaciones Revaluación`
      * `68113 Deprec Inv Inmob Edificaciones Costo Financiación`
    * `6812 Dep de Act Adq en Arrend Finan Inv Inmob`
      * `68121 Dep de Act Adq en Arrend Finan Inv Inmob Edific`
    * `6813 Dep de Act Adq en Arrend Financiero`
      * `68131 Dep de Act Adq en Arrend Finan Edificaciones`
      * `68132 Dep de Act Adq en Arrend Finan Maq y Eq de Explot`
      * `68133 Dep de Act Adq en Arrend Finan Equipos Transporte`
      * `68134 Dep de Act Adq en Arrend Fin Equipos Diversos`
    * `6814 Dep de Inmuebles Maquinaria y Equipo Costo`
      * `68141 Dep Inm Maq y Eq Costo Edificaciones`
      * `68142 Dep Inm Maq y Eq Costo Maq y Equipo de Explot`
      * `68143 Dep Inm Maq y Eq Costo Equipo de Transporte`
      * `68144 Dep Inm Maq y Eq Costo Muebles y Enseres`
      * `68145 Dep Inm Maq y Eq Costo Equipos Diversos`
      * `68146 Dep Inm Maq y Eq Costo Herram y Unid de Reemplazo`
    * `6815 Dep de Inmuebles Maquinaria y Equipo Revaluación`
      * `68151 Dep Inm Maq y Eq Revaluación Edificaciones`
      * `68152 Dep Inm Maq y Eq Revaluación Maq y Eq de Explot`
      * `68153 Dep Inm Maq y Eq Revaluación Equipo Transporte`
      * `68154 Dep Inm Maq y Eq Revaluación Muebles y Enseres`
      * `68155 Dep Inm Maq y Eq Revaluación Equipos Diversos`
      * `68156 Dep Inm Maq y Eq Revaluación Herram y Unid de Reem`
    * `6816 Dep de Inmuebles Maquinaria y Equipo Costo de Fina`
      * `68161 Dep Inm Maq y Eq Costo de Finan Edificaciones`
      * `68162 Dep Inm Maq y Eq Costo de Finan Maq y Eq de Explot`
    * `6817 Dep de Activos Biológicos en Prod Costo`
      * `68171 Dep de Act Biológ en Prod Costo de Origen Animal`
      * `68172 Dep de Act Biológ en Prod Costo de Origen Vegetal`
    * `6818 Dep de Activos Biológicos en Prod Costo de Finan`
      * `68181 Dep de Act Biológ en Prod Costo Fin Origen Animal`
      * `68182 Dep de Act Biológ en Prod Costo Fin Origen Vegetal`
  * `682 Amortización de Intangibles` (`capturas/51.png`)
    * `6821 Amortización de Intangibles Adquiridos Costo`
      * `68211 Amort Conces, Licen y Otros Dere Adq Costo`
      * `68212 Amort Patentes y Propiedad Ind Adq Costo`
      * `68213 Amort Programa de Comput (Software) Adq Costo`
      * `68214 Amort Costos de Explorac y Desa Adq Costo`
      * `68215 Amort Fórmulas, Diseños y Prototípos Adq Costo`
      * `68219 Amort Otros Activos Intangibles Adq Costo`
    * `6822 Amortización de Intangibles Adquiridos Revaluación`
      * `68221 Amort Conces, Licen y Otros Dere Adq Revaluación`
      * `68222 Amort Patentes y Propiedad Ind Adq Revaluación`
      * `68223 Amort Programa Comput (Software) Adq Revaluación`
      * `68224 Amort Costos de Explorac y Desa Adq Revaluación`
      * `68225 Amort Fórmulas, Diseños Prototípos Adq Revaluación`
      * `68229 Amort Otros Activos Intangibles Adq Revaluación`
  * `683 Agotamiento` (`capturas/51.png`)
    * `6831 Agotamiento de Recursos Naturales Adquiridos`
      * `68310 Agotamiento de Recursos Naturales Adquiridos`
  * `684 Valuación de Activos` (`capturas/51.png`)
    * `6841 Estimación de Cuentas de Cobranza Dudosa`
      * `68411 Estimación Ctas por Cob Comerciales - Terceros`
      * `68412 Estimación Ctas por Cob Comerciales - Relacionadas`
      * `68413 Estimación Ctas x Cob Personal, Accio Direc y Gtes`
      * `68414 Estimación Ctas x cob Diversas - Terceros`
      * `68415 Estimación Ctas x cob Diversas - Relacionadas`
    * `6842 Desvalorización de Existencias`
      * `68420 Desvalorización de Existencias`
    * `6843 Desvalorización de Inversiones Mobiliarias`
      * `68431 Desvalorización Inv a Ser Mant Hasta el Vencimient`
      * `68432 Desvalorización Inst Finan Repres de Dercho Patrim`
  * `685 Deterioro del Valor de los Activos` (`capturas/51.png` y `52.png`)
    * `6851 Desvalorización de Inversiones Inmobiliarias`
      * `68511 Desvalorización de Inv Inmobiliarias Edificaciones`
    * `6852 Desvalorización de Inmuebles Maquinaria y Equipo` (`capturas/52.png`)
      * `68521 Desvalorización de Edificaciones`
      * `68522 Desvalorización de Maquinarias y Equipo de Explot`
      * `68523 Desvalorización de Equipo de Transporte`
      * `68524 Desvalorización de Muebles y Enseres`
      * `68525 Desvalorización de Equipos Diversos`
      * `68526 Desvalorización de Herram y Unidades de Reemplazo`
    * `6853 Desvalorización de Intangibles` (`capturas/52.png`)
      * `68531 Desvalorización Concesiones, Licencias y Otros Der`
      * `68532 Desvalorización Patentes y Propiedad Industrial`
      * `68533 Desvalorización de Programas de Comput (Software)`
      * `68534 Desvalorización Costo de Exploración y Desarrollo`
      * `68535 Desvalorización Fórmulas Diseños y Prototípos`
      * `68536 Desvalorización Otros Activos Intangibles`
      * `68537 Desvalorización Plusvalia Mercantil`
    * `6854 Desvalorización de Activos Biológicos en Prod` (`capturas/52.png`)
      * `68541 Desval Activos Biológicos en Prod Origen Aninal`
      * `68542 Desval Activos Biológicos en Prod Origen Vegetal`
  * `686 Provisiones` (`capturas/52.png`)
    * `6861 Provisiones Para Litigios`
      * `68611 Provisión Para Litigios Costo`
      * `68612 Provisión Para Litigios Actualización Financiera`
    * `6862 Prov Para Desmant Retiro o Inhabilitación de Inmov`
      * `68621 Prov Para Desmant Retiro o Inhabil de Inmov Costo`
      * `68622 Prov Para Desmant Retiro o Inhabil de Inmov Act Fi`
    * `6863 Provisión Para Reestructuraciones`
      * `68630 Provisión Para Reestructuraciones`
    * `6864 Prov Para Prot y Remediación del Medio Ambiente`
      * `68641 Prov Para Prot y Remed del Medio Amb Costo`
      * `68642 Prov Para Prot y Remed del Medio Amb Actual Finan`
    * `6866 Provisión Para Garantias`
      * `68661 Provisión Para Garantias - Costo`
      * `68662 Provisión Para Garantias - Actualización Financier`
    * `6869 Otras Provisiones`
      * `68690 Otras Provisiones`

---

## 10. Cuenta 69: Costo de Ventas
**Origen**: `capturas/53-1.png` y `capturas/54-2.png` *(Continuidad implícita: 691-692 en 53-1.png y 693-695 en 54-2.png)*  
**Definición**: Costo devengado de las mercaderías vendidas, productos terminados despachados o servicios prestados, así como las desvalorizaciones directas del costo comercial.

### Estructura Literal del ERP:
* `69 COSTO DE VENTAS` (`capturas/53-1.png`)
  * `691 Costo de Ventas Mercaderías`
    * `6911 Costo Mercaderías Manufacturadas`
      * `69111 Costo Mercaderías Manufacturadas Terceros`
      * `69112 Costo Mercaderías Manufacturadas Relacionadas`
    * `6912 Costo Mercaderías de Extracción`
      * `69121 Costo Mercaderías de Extracción Terceros`
      * `69122 Costo Mercaderías de Extracción Relacionadas`
    * `6913 Costo Mercaderías Agropecuarias y Piscícolas`
      * `69131 Costo Mercaderías Agropec y Piscícolas Terceros`
      * `69132 Costo Mercaderías Agropec y Piscícolas Relacionada`
    * `6914 Costo Mercaderías Inmuebles`
      * `69141 Costo Mercaderías Inmuebles Terceros`
      * `69142 Costo Mercaderías Inmuebles Relacionadas`
    * `6915 Costo Otras Mercaderías`
      * `69151 Costo Otras Mercaderías Terceros`
      * `69152 Costo Otras Mercaderías Relacionadas`
  * `692 Costo de Ventas Productos Terminados`
    * `6921 Costo Productos Manufacturados`
      * `69211 Costo Prod Manufacturados Terceros`
      * `69212 Costo Prod Manufacturados Relacionadas`
    * `6922 Costo Productos de Extracción Terminados`
      * `69221 Costo Prod de Extracción Terminados Terceros`
      * `69222 Costo Prod de Extracción Terminados Relacionadas`
    * `6923 Costo Productos Agropec y Piscícolas Terminados`
      * `69231 Costo Prod Agropec y Piscíc Terminados Terceros`
      * `69232 Costo Prod Agropec y Piscíc Terminados Relacionada`
    * `6924 Costo Productos Inmuebles Terminados`
      * `69241 Costo Prod Inmuebles Terminados Terceros`
      * `69242 Costo Prod Inmuebles Terminados Relacionadas`
    * `6925 Costo Existencias de Servicios Terminados`
      * `69251 Costo Existencias Serv Terminados Terceros`
      * `69252 Costo Existencias Serv Terminados Relacionadas`
    * `6926 Costo Financiación Productos Terminados`
      * `69261 Costo Financiación Prod Terminados Terceros`
      * `69262 Costo Financiación Prod Terminados Relacionadas`
  * `693 Costo Subproductos, Desechos y Desperdicios` (`capturas/54-2.png`)
    * `6931 Costo Subproductos`
      * `69311 Costo Subproductos Terceros`
      * `69312 Costo Subproductos Relacionadas`
    * `6932 Costo Desechos y Desperdicios`
      * `69321 Costo Desechos y Desperdicios Terceros`
      * `69322 Costo Desechos y Desperdicios Relacionadas`
  * `694 Costo de Servicios` (`capturas/54-2.png`)
    * `6941 Costo de Servicios Terceros`
      * `69410 Costo de Servicios Terceros`
    * `6942 Costo de Servicios Relacionadas`
      * `69420 Costo de Servicios Relacionadas`
  * `695 Gastos por Desvalorización de Existencias` (`capturas/54-2.png`)
    * `6951 Gastos por Desvalorización - Mercaderias`
      * `69510 Gastos por Desvalorización - Mercaderias`
    * `6952 Gastos por Desvalorización - Productos Terminados`
      * `69520 Gastos por Desvalorización - Productos Terminados`
    * `6953 Gastos por Desvalorización - Subprod Des y Desper`
      * `69530 Gastos por Desvalorización - Subprod Des y Desper`
    * `6955 Gastos por Desvalorización - Materias Primas`
      * `69550 Gastos por Desvalorización - Materias Primas`
    * `6956 Gastos por Desvalorización - Mat Aux, Sum y Rptos`
      * `69560 Gastos por Desvalorización - Mat Aux, Sum y Rptos`
    * `6957 Gastos por Desvalorización - Envases y Embalajes`
      * `69570 Gastos por Desvalorización - Envases y Embalajes`
    * `6958 Gastos por Desvalorización - Existencias x Recibir`
      * `69580 Gastos por Desvalorización - Existencias x Recibir`
