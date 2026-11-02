# Elemento 7: Ingresos

Agrupa las cuentas que registran los incrementos en los beneficios económicos producidos a lo largo del periodo contable, en forma de entradas o incrementos de valor de los activos, o bien como decrementos de los pasivos, que dan como resultado aumentos del patrimonio neto, distintos de las aportaciones realizadas por los accionistas.

---

## 1. Cuenta 70: Ventas
**Origen**: `capturas/54-2.png`, `capturas/55-3.png` y `capturas/55-4.png` *(Flujo continuo explícito `54-2` -> `55-3` -> `55-4`)*  
**Definición**: Ingresos brutos derivados de la entrega de bienes comerciales, productos manufacturados o prestación de servicios acordados en contratos con clientes en el curso ordinario del negocio (NIIF 15).

### Estructura Literal del ERP:
* `70 VENTAS` (`capturas/54-2.png`)
  * `701 Ventas de Mercaderías` (`capturas/54-2.png` y `55-3.png`)
    * `7011 Ventas Mercaderías Manufacturadas`
      * `70111 Ventas Mercaderías Manufacturadas Terceros`
      * `70112 Ventas Mercaderías Manufacturadas Relacionadas`
    * `7012 Ventas Mercaderías de Extracción`
      * `70121 Ventas Mercaderías de Extracción Terceros`
      * `70122 Ventas Mercaderías de Extracción Relacionadas`
    * `7013 Ventas Mercaderías Agropecuarias y Piscícolas`
      * `70131 Ventas Mercaderías Agropec y Piscíc Terceros`
      * `70132 Ventas Mercaderías Agropec y Piscíc Relacionadas`
    * `7014 Ventas Mercaderías Inmuebles` (`capturas/55-3.png`)
      * `70141 Ventas Mercaderías Inmuebles Terceros`
      * `70142 Ventas Mercaderías Inmuebles Relacionadas`
    * `7015 Ventas Mercaderías Otras` (`capturas/55-3.png`)
      * `70151 Ventas Mercaderías Otras Terceros`
      * `70152 Ventas Mercaderías Otras Relacionadas`
  * `702 Ventas de Productos Terminados` (`capturas/55-3.png`)
    * `7021 Ventas Productos Manufacturados Terminados`
      * `70211 Ventas Prod Manufacturados Terminados Terceros`
      * `70212 Ventas Prod Manufacturados Terminados Relacionadas`
    * `7022 Ventas Productos de Extracción Terminados`
      * `70221 Ventas Prod de Extracción Terminados Terceros`
      * `70222 Ventas Prod de Extracción Terminados Relacionadas`
    * `7023 Ventas Productos Agropec y Piscícolas Terminados`
      * `70231 Ventas Prod Agropec y Piscíc Terminados Terceros`
      * `70232 Ventas Prod Agropec y Piscíc Terminados Relacionad`
    * `7024 Ventas Productos Inmuebles Terminados`
      * `70241 Ventas Prod Inmuebles Terminados Terceros`
      * `70242 Ventas Prod Inmuebles Terminados Relacionadas`
    * `7025 Ventas Existencias de Servicios Terminados`
      * `70251 Ventas Existencias Serv Terminados Terceros`
      * `70252 Ventas Existencias Serv Terminados Relacionadas`
  * `703 Ventas Subproductos, Desechos y Desperdicios` (`capturas/55-3.png`)
    * `7031 Ventas Subproductos`
      * `70311 Ventas Subproductos Terceros`
      * `70312 Ventas Subproductos Relacionadas`
    * `7032 Ventas Desechos y Desperdicios`
      * `70321 Ventas Desechos y Desperdicios Terceros`
      * `70322 Ventas Desechos y Desperdicios Relacionadas`
  * `704 Prestación de Servicios` (`capturas/55-3.png`)
    * `7041 Prestación de Servicios - Servicios externos`
      * `70410 Prestación de Servicios - Servicios externos`
    * `7042 CAMBIAR LA DESCRIPCION`
      * `70420 CAMBIAR DESCRIPCION`
  * `709 Devolución Sobre Ventas` (`capturas/55-4.png`)
    * `7091 Devoluciones Sobre Ventas Mercaderías Terceros`
      * `70911 Devol Ventas Merc Manufacturadas Terceros`
      * `70912 Devol Ventas Merc de Extracción Terceros`
      * `70913 Devol Ventas Merc Agropec y Piscícolas Terceros`
      * `70914 Devol Ventas Merc Inmuebles Terceros`
      * `70915 Devol Ventas Merc Otras Terceros`
    * `7092 Devoluciones Sobre Ventas Mercaderías Relacionadas`
      * `70921 Devol Ventas Merc Manufacturadas Relacionadas`
      * `70922 Devol Ventas Merc de Extracción Relacionadas`
      * `70923 Devol Ventas Merc Agrope y Piscícolas Relacionadas`
      * `70924 Devol Ventas Merc Inmuebles Relacionadas`
      * `70925 Devol Ventas Merc Otras Relacionadas`
    * `7093 Devoluciones Sobre Ventas Prod Terminados Terceros`
      * `70931 Dev Vtas Prod Terminados Manufacturados Terceros`
      * `70932 Dev Vtas Prod Terminados de Extracción Terceros`
      * `70933 Dev Vtas Prod Terminados Agropec y Piscíc Terceros`
      * `70934 Dev Vtas Prod Terminados Inmuebles Terceros`
      * `70935 Dev Vtas Existencias Servicios Terminaods Terceros`
    * `7094 Devoluciones Ventas Prod Terminados Relacionadas`
      * `70941 Dev Vtas Prod Termin Manufacturados Relacionadas`
      * `70942 Dev Vtas Prod Termin de Extracción Relacionadas`
      * `70943 Dev Vtas Prod Termin Agro y Piscíco Relacionadas`
      * `70944 Dev Vtas Prod Termin Inmuebles Relacionadas`
      * `70945 Dev Vtas Existencias Serv Termin Relacionadas`
    * `7095 Devoluciones Ventas Subprod Dese y Desper Terceros`
      * `70951 Dev Sobre Ventas Subproductos Terceros`
      * `70952 Dev Sobre Ventas Desechos y Desper Terceros`
    * `7096 Devoluciones Vtas Subprod Dese y Desp Relacionadas`
      * `70961 Dev Sobre Ventas Subproductos Relacionadas`
      * `70962 Dev Sobre Ventas Desechos y Desper Relacionadas`

---

## 2. Cuenta 71: Variación de la Producción Almacenada
**Origen**: `capturas/56.png` y `capturas/57.png` *(Continuidad implícita: 711-714 en 56.png y 715 en 57.png)*  
**Definición**: Mide la variación de existencias (incremento o decremento) de productos manufacturados, subproductos, productos en proceso y servicios terminados elaborados por la entidad.

### Estructura Literal del ERP:
* `71 VARIACION DE LA PRODUCCION ALMACENADA` (`capturas/56.png`)
  * `711 Variación de Productos Terminados`
    * `7111 Variación Productos Manufacturados Terminados`
      * `71110 Variación Productos Manufacturados Terminados`
    * `7112 Variación Productos de Extracción Terminados`
      * `71120 Variación Productos de Extracción Terminados`
    * `7113 Variación Productos Agropec y Piscícolas Terminado`
      * `71130 Variación Productos Agropec y Piscícolas Terminado`
    * `7114 Variación Productos Inmuebles Terminados`
      * `71140 Variación Productos Inmuebles Terminados`
    * `7115 Variación Existencias de Servicios Terminados`
      * `71150 Variación Existencias de Servicios Terminados`
  * `712 Variación Subproductos Desechos y Desperdicios`
    * `7121 Variación de Subproductos`
      * `71210 Variación de Subproductos`
    * `7122 Variación de Desechos y Desperdicios`
      * `71220 Variación de Desechos y Desperdicios`
  * `713 Variación de Productos en Proceso`
    * `7131 Variación Prod en Proceso de Manufactura`
      * `71310 Variación Prod en Proceso de Manufactura`
    * `7132 Variación Prod Extraidos en Proceso de Transform`
      * `71320 Variación Prod Extraidos en Proceso de Transform`
    * `7133 Variación Prod Agropec y Piscícolas en Proceso`
      * `71330 Variación Prod Agropec y Piscícolas en Proceso`
    * `7134 Variación Prod Inmuebles en Proceso`
      * `71340 Variación Prod Inmuebles en Proceso`
    * `7135 Variación Existencias de Servicios en Proceso`
      * `71350 Variación Existencias de Servicios en Proceso`
    * `7138 Variación Otros Productos en Proceso`
      * `71380 Variación Otros Productos en Proceso`
  * `714 Variación de Envases y Embalajes`
    * `7141 Variación de Envases`
      * `71410 Variación de Envases`
    * `7142 Variación de Embalajes`
      * `71420 Variación de Embalajes`
  * `715 Variación de Existencias de Servicios` (`capturas/57.png`)
    * `7150 Variación de Existencias de Servicios`
      * `71500 Variación de Existencias de Servicios`

---

## 3. Cuenta 72: Producción de Activos Inmovilizados
**Origen**: `capturas/57.png` y `capturas/58.png` *(Continuidad implícita: 721-7253 en 57.png y 7254 en 58.png)*  
**Definición**: Trabajos realizados por la propia empresa para sus propios activos inmovilizados (construcción de edificios, montaje de maquinaria, desarrollo de software, cría de biológicos) y capitalización de intereses (NIC 23).

### Estructura Literal del ERP:
* `72 PRODUCCION DE ACTIVOS INMOVILIZADOS` (`capturas/57.png`)
  * `721 Producción Inversiones Inmobiliarias`
    * `7211 Prod de Inversiones Inmobiliarias Edificaciones`
      * `72110 Prod de Inversiones Inmobiliarias Edificaciones`
  * `722 Producción Inmuebles Maquinaria y Equipo`
    * `7221 Producción Edificaciones`
      * `72210 Producción Edificaciones`
    * `7222 Prod Maquinarias y Otros Equipos de Explotación`
      * `72220 Prod Maquinarias y Otros Equipos de Explotación`
    * `7223 Prod Equipos de Transporte`
      * `72230 Prod Equipos de Transporte`
    * `7224 Prod Muebles y Enseres`
      * `72240 Prod Muebles y Enseres`
    * `7225 Prod Equipos Diversos`
      * `72250 Prod Equipos Diversos`
  * `723 Producción de Intangibles`
    * `7231 Prod Programas de Computadora (Software)`
      * `72310 Prod Programas de Computadora (Software)`
    * `7232 Prod Costo de Explotación y Desarrollo`
      * `72320 Prod Costo de Explotación y Desarrollo`
    * `7233 Prod Fórmulas Diseños y Prototipos`
      * `72330 Prod Fórmulas Diseños y Prototipos`
  * `724 Producción Activos Biológicos`
    * `7241 Prod Act Biológicos en Desarrollo Origen Animal`
      * `72410 Prod Act Biológicos en Desarrollo Origen Animal`
    * `7242 Prod Act Biológicos en Desarrollo Origen Vegetal`
      * `72420 Prod Act Biológicos en Desarrollo Origen Vegetal`
  * `725 Producción Costo de Financiación Capitalizados` (`capturas/57.png` y `58.png`)
    * `7251 Prod Costo Financiación Inversiones Inmobiliarias`
      * `72511 Prod Costo Finan Inver Inmobiliarias Edificaciones`
    * `7252 Prod Costo Finan Inmuebles Maquinaria y Equipo`
      * `72521 Prod Costo Finan Edificaciones`
      * `72522 Prod Costo Finan Maquinaria y Otros Equipos de Exp`
    * `7253 Prod Costo Finan Intangibles`
      * `72530 Prod Costo Finan Intangibles`
    * `7254 Prod Costo Finan Activos Biológicos en Desarrollo` (`capturas/58.png`)
      * `72541 Prod Costo Fianan Act Biológ de Origen Animal`
      * `72542 Prod Costo Fianan Act Biológ de Origen Vegetal`

---

## 4. Cuenta 73: Descuentos, Rebajas y Bonificaciones Obtenidos
**Origen**: `capturas/58.png`  
**Definición**: Ingresos financieros u operacionales provenientes de bonificaciones comerciales o descuentos fuera de factura concedidos por proveedores.

### Estructura Literal del ERP:
* `73 DESCUENTOS REBAJAS Y BONIFICACIONES OBTENIDOS`
  * `731 Descuentos Rebajas y Bonificaciones Obtenidos`
    * `7311 Descuentos Rebajas y Bonific Obtenidos Terceros`
      * `73110 Descuentos Rebajas y Bonific Obtenidos Terceros`
    * `7312 Descuentos Rebajas y Bonif Obtenidos Relacionadas`
      * `73120 Descuentos Rebajas y Bonif Obtenidos Relacionadas`

---

## 5. Cuenta 74: Descuentos, Rebajas y Bonificaciones Concedidos
**Origen**: `capturas/58.png`  
**Definición**: Deducción directa de las ventas brutas generada por rebajas o bonificaciones comerciales otorgadas a clientes fuera de comprobante (saldo deudor).

### Estructura Literal del ERP:
* `74 DESCUENTOS REBAJAS Y BONIFICACIONES CONCEDIDOS`
  * `741 Descuentos Rebajas y Bonificaciones Concedidos`
    * `7411 Descuentos Rebajas y Bonif Concedidos Terceros`
      * `74110 Descuentos Rebajas y Bonif Concedidos Terceros`
    * `7412 Descuentos Rebajas y Bonif Concedidos Relacionadas`
      * `74120 Descuentos Rebajas y Bonif Concedidos Relacionadas`

---

## 6. Cuenta 75: Otros Ingresos de Gestión
**Origen**: `capturas/58.png` y `capturas/59.png` *(Continuidad implícita: 751-754 en 58.png y 755-759 en 59.png)*  
**Definición**: Ingresos corrientes o atípicos no derivados del objeto principal: alquileres, comisiones, indemnizaciones del seguro, recuperación de provisiones y venta de activo inmovilizado.

### Estructura Literal del ERP:
* `75 OTROS INGRESOS DE GESTION` (`capturas/58.png`)
  * `751 Servicios en Beneficio del Personal`
    * `7510 Servicios en Beneficio del Personal`
      * `75100 Servicios en Beneficio del Personal`
  * `752 Comisiones y Corretajes`
    * `7520 Comisiones y Corretajes`
      * `75200 Comisiones y Corretajes`
  * `753 Regalias`
    * `7530 Regalias`
      * `75300 Regalias`
  * `754 Alquileres`
    * `7541 Alquiler de Terrenos`
      * `75410 Alquiler de Terrenos`
    * `7542 Alquiler de Edificaciones`
      * `75420 Alquiler de Edificaciones`
    * `7543 Alquiler de Maquinarias y Equipos de Explotación`
      * `75430 Alquiler de Maquinarias y Equipos de Explotación`
    * `7544 Alquiler de Equipos de Transporte`
      * `75440 Alquiler de Equipos de Transporte`
    * `7545 Alquiler de Equipos Diversos`
      * `75450 Alquiler de Equipos Diversos`
  * `755 Recuperación de Cuentas de Valuación` (`capturas/59.png`)
    * `7551 Recuperación Cuentas de Cobranza Dudosa`
      * `75510 Recuperación Cuentas de Cobranza Dudosa`
    * `7552 Recuperación Desvalorización de Existencias`
      * `75520 Recuperación Desvalorización de Existencias`
    * `7553 Recuperación Desvalorización Inversiones Mobiliari`
      * `75530 Recuperación Desvalorización Inversiones Mobiliari`
  * `756 Enajenación de Activos Inmovilizados` (`capturas/59.png`)
    * `7561 Enajenación Inversiones Mobiliarias`
      * `75610 Enajenación Inversiones Mobiliarias`
    * `7562 Enajenación Inversiones Inmobiliarias`
      * `75620 Enajenación Inversiones Inmobiliarias`
    * `7563 Enajenación Act Adq en Arrendamiento Financiero`
      * `75630 Enajenación Act Adq en Arrendamiento Financiero`
    * `7564 Enajenación Inmuebles Maquinaria y Equipo`
      * `75640 Enajenación Inmuebles Maquinaria y Equipo`
    * `7565 Enajenación Intangibles`
      * `75650 Enajenación Intangibles`
    * `7566 Enajenación Activos Biológicos`
      * `75660 Enajenación Activos Biológicos`
  * `757 Recuperación de Deterioro de Ctas de Act Inmovili` (`capturas/59.png`)
    * `7571 Recuperación de Deterioro de Inv Inmobiliarias`
      * `75710 Recuperación de Deterioro de Inv Inmobiliarias`
    * `7572 Recuperación de Deterioro de Inmueb, Maq y Equipo`
      * `75720 Recuperación de Deterioro de Inmueb, Maq y Equipo`
    * `7573 Recuperación de Deterioro de Intangibles`
      * `75730 Recuperación de Deterioro de Intangibles`
    * `7574 Recuperación de Deterioro de Activos Biológicos`
      * `75740 Recuperación de Deterioro de Activos Biológicos`
  * `759 Otros Ingresos de Gestión` (`capturas/59.png`)
    * `7591 Subsidios Gubernamentales`
      * `75910 Subsidios Gubernamentales`
    * `7592 Reclamos al Seguro`
      * `75920 Reclamos al Seguro`
    * `7593 Donaciones`
      * `75930 Donaciones`
    * `7599 Otros Ingresos de Gestión`
      * `75990 Otros Ingresos de Gestión`

---

## 7. Cuenta 76: Ganancias por Medición de Activos No Financieros al Valor Razonable
**Origen**: `capturas/60.png`  
**Definición**: Incrementos patrimoniales reconocidos en resultados derivados de la medición a valor razonable de mercaderías, productos agropecuarios o inversiones inmobiliarias (NIC 40, NIC 41).

### Estructura Literal del ERP:
* `76 GANANCIAS X MEDICION DE ACT NO FINAN A VALOR RAZON` (`capturas/60.png`)
  * `761 Ganan x Medición Act Realizables a Valor Razonable`
    * `7611 Ganan x Medición Mercaderías a Valor Razonable`
      * `76110 Ganan x Medición Mercaderías a Valor Razonable`
    * `7612 Ganan x Medición Prod Terminados a Valor Razonable`
      * `76120 Ganan x Medición Prod Terminados a Valor Razonable`
    * `7613 Ganan x Medición Act No Ctes Man x Vta al Val Razo`
      * `76131 Ganan x Medición Inv Inmob para Vta al Val Razo`
      * `76132 Ganan x Medición Inm Maq y Eq para Vta al Val Razo`
      * `76133 Ganan x Medición Intangibles para Vta al Val Razo`
      * `76134 Ganan x Medición Act Biológ para Vta al Val Razo`
  * `762 Ganan x Medición Act Inmovil a Valor Razonable`
    * `7621 Ganan x Medición Inv Inmobil a Valor Razonable`
      * `76210 Ganan x Medición Inv Inmobil a Valor Razonable`
    * `7622 Ganan x Medición Act Biológicos a Valor Razonable`
      * `76220 Ganan x Medición Act Biológicos a Valor Razonable`
  * `763 Part en Result de Subsid Asoc Bajo Mét de Valor Pa`
    * `7630 Part en Result de Subsid Asoc Bajo Mét de Valor Pa`
      * `76300 Part en Result de Subsid Asoc Bajo Mét de Valor Pa`
  * `764 Ingresos por Participaciones en Negocios Conjuntos`
    * `7640 Ingresos por Participaciones en Negocios Conjuntos`
      * `76400 Ingresos por Participaciones en Negocios Conjuntos`

---

## 8. Cuenta 77: Ingresos Financieros
**Origen**: `capturas/60.png` y `capturas/61.png` *(Continuidad implícita: 771-772 en 60.png y 773-779 en 61.png)*  
**Definición**: Rentas devengadas por depósitos bancarios, intereses de préstamos y clientes, ganancias por diferencia de cambio, dividendos percibidos y valoración de inversiones negociables.

### Estructura Literal del ERP:
* `77 INGRESOS FINANCIEROS` (`capturas/60.png`)
  * `771 Ganancias por Instrumentos Financieros Derivados`
    * `7710 Ganancias por Instrumentos Financieros Derivados`
      * `77100 Ganancias por Instrumentos Financieros Derivados`
  * `772 Rendimientos Ganados`
    * `7721 Rendimiento Depósitos en Instituciones Financieras`
      * `77210 Rendimiento Depósitos en Instituciones Financieras`
    * `7722 Rendimiento Cuentas por Cobrar Comerciales`
      * `77220 Rendimiento Cuentas por Cobrar Comerciales`
    * `7723 Rendimiento Préstamos Otorgados`
      * `77230 Rendimiento Préstamos Otorgados`
    * `7724 Rendimiento Inv a ser Mantenidas Hasta el Vencimie`
      * `77240 Rendimiento Inv a ser Mantenidas Hasta el Vencimie`
    * `7725 Rendimiento Instrum Finan Represent de Derecho Pat`
      * `77250 Rendimiento Instrum Finan Represent de Derecho Pat`
  * `773 Dividendos` (`capturas/61.png`)
    * `7730 Dividendos`
      * `77300 Dividendos`
  * `774 Ingresos en Operaciones de Factoraje (Factoring)` (`capturas/61.png`)
    * `7740 Ingresos en Operaciones de Factoraje (Factoring)`
      * `77400 Ingresos en Operaciones de Factoraje (Factoring)`
  * `775 Descuentos Obtenidos por Pronto Pago` (`capturas/61.png`)
    * `7750 Descuentos Obtenidos por Pronto Pago`
      * `77500 Descuentos Obtenidos por Pronto Pago`
  * `776 Ganancia en Diferencia de Cambio` (`capturas/61.png`)
    * `7760 Ganancia en Diferencia de Cambio`
      * `77600 Ganancia en Diferencia de Cambio`
  * `777 Ganancia x Medición de Act y Pas Finan Valor Razon` (`capturas/61.png`)
    * `7771 Ganancia x Medición de Inv Mant Para Nego Val Raz`
      * `77710 Ganancia x Medición de Act y Pas Finan Valor Razon`
    * `7772 Ganancia x Medición de Inv Disp Para Vta Val Raz`
      * `77720 Ganancia x Medición de Inv Disp Para Vta Val Raz`
    * `7773 Ganancia x Medición Otros Act Val Raz`
      * `77730 Ganancia x Medición Otros Act Val Raz`
  * `778 Participación en Resultados de Entidades Relaciona` (`capturas/61.png`)
    * `7781 Part en Result de Subsid y Asoc Bajo Met Valor Pat`
      * `77810 Part en Result de Subsid y Asoc Bajo Met Valor Pat`
    * `7782 Ingresos por Participaciones en Negocios Conjuntos`
      * `77820 Ingresos por Participaciones en Negocios Conjuntos`
  * `779 Otros Ingresos Financieros` (`capturas/61.png`)
    * `7792 Ingresos Finan en Medición a Valor Descontado`
      * `77920 Ingresos Finan en Medición a Valor Descontado`

---

## 9. Cuenta 78: Cargas Cubiertas por Provisiones
**Origen**: `capturas/61.png`  
**Definición**: Cuenta de transferencia para compensar en el ejercicio gastos cubiertos mediante provisiones previamente constituidas en la cuenta 68 / 48.

### Estructura Literal del ERP:
* `78 CARGAS CUBIERTAS POR PROVISIONES`
  * `781 Cargas Cubiertas por Provisiones`
    * `7810 Cargas Cubiertas por Provisiones`
      * `78100 Cargas Cubiertas por Provisiones`

---

## 10. Cuenta 79: Cargas Imputables a Cuentas de Costos y Gastos
**Origen**: `capturas/61.png`  
**Definición**: Cuenta puente de enlace que permite trasladar los gastos registrados por su naturaleza en el Elemento 6 hacia las cuentas de costos y gastos por su función en el Elemento 9 (Administración, Ventas, Servicio, CIF).

### Estructura Literal del ERP:
* `79 Cargas Imputables a Cuentas de Costos y Gastos`
  * `791 Cargas Imputables a Cuentas de Costos y Gastos`
    * `7910 Cargas Imputables a Cuentas de Costos y Gastos`
      * `79100 Cargas Imputables a Cuentas de Costos y Gastos`
  * `792 Gastos Financieros Imputables a Ctas de Existencia`
    * `7920 Gastos Financieros Imputables a Ctas de Existencia`
      * `79200 Gastos Financieros Imputables a Ctas de Existencia`
