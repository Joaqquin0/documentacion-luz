# Elemento 4: Pasivo (Obligaciones Presentes)

Agrupa las obligaciones presentes que tiene la empresa resultantes de sucesos pasados, cuya cancelación se prevé que representará para la entidad una salida de recursos que incorporan beneficios económicos. Abarca tributos, remuneraciones, deudas comerciales con terceros y relacionadas, préstamos bancarios, pasivos por activos inmovilizados, provisiones y pasivos diferidos.

---

## 1. Cuenta 40: Tributos, Contraprestaciones y Aportes al Sistema de Pensiones y de Salud por Pagar
**Origen**: `capturas/33.png`, `capturas/34-1.png` y `capturas/34-2.png` *(Flujo continuo explícito `33` -> `34-1` -> `34-2`)*  
**Definición**: Obligaciones tributarias con el Estado (Gobierno Central, Regional y Local) y aportes a organismos previsionales y de salud por cuenta propia o retenidas a terceros.

### Estructura Literal del ERP:
* `40 TRIBUT CONTRAP Y APORT A SIST PENS Y SALUD X PAGAR` (`capturas/33.png`)
  * `401 Gobierno Central`
    * `4011 Impuesto General a las Ventas`
      * `40111 IGV Cuenta Propia`
      * `40112 IGV Servicios Prestados por No Domiciliados`
      * `40113 IGV Régimen de Percepciones`
      * `40114 IGV Régimen de Retenciones`
    * `4012 Impuesto Selectivo al Consumo`
      * `40120 Impuesto Selectivo al Consumo`
    * `4015 Derechos Aduaneros`
      * `40151 Derechos Arancelarios`
      * `40152 Derechos Aduaneros por Ventas`
    * `4017 Impuesto a la Renta`
      * `40171 Renta de Tercera Categoria`
      * `40172 Renta de Cuarta Categoría`
      * `40173 Renta de Quinta Categoría`
      * `40174 Renta de No Domiciliados`
      * `40175 Impuesto a la Renta Otras Retenciones`
    * `4018 Otros Impuestos y Contraprestaciones`
      * `40181 Impuesto a las Transacciones Financieras`
      * `40182 Impuesto a los Juegos de Casino y Tragamonedas`
      * `40183 Tasas por la Prestación de Servicios Públicos`
      * `40184 Regalias`
      * `40185 Impuesto a los Dividendos`
      * `40186 Impuesto Temporal a los Activos Netos`
      * `40189 Otros Impuestos por Pagar`
  * `402 Certificados Tributarios` (`capturas/33.png`)
    * `4020 Certificados Tributarios`
      * `40200 Certificados Tributarios`
  * `403 Instituciones Públicas` (`capturas/34-1.png`)
    * `4031 ESSALUD`
      * `40310 ESSALUD`
    * `4032 ONP`
      * `40320 ONP`
    * `4033 Contribución al SENATI`
      * `40330 Contribución al SENATI`
    * `4034 Contribución al SENCICO`
      * `40340 Contribución al SENCICO`
    * `4039 Otras Instituciones`
      * `40390 Otras Instituciones`
  * `405 Gobiernos Regionales` (`capturas/34-1.png`)
    * `4050 Gobiernos Regionales`
      * `40500 Gobiernos Regionales`
  * `406 Gobiernos Locales` (`capturas/34-1.png`)
    * `4061 Impuestos`
      * `40611 Impuesto al Patrimonio Vehicular`
      * `40612 Impuesto a las Apuestas`
      * `40613 Impuesto a los Juegos`
      * `40614 Impuesto de Alcabala`
      * `40615 Impuesto Predial`
      * `40616 Impuesto a los Espectaculos Públicos no Deportivos`
    * `4062 Contribuciones`
      * `40620 Contribuciones`
    * `4063 Tasas`
      * `40631 Licencia de Apertura de Establecimientos`
      * `40632 Transporte Público`
      * `40633 Estacionamiento de Vehículos`
      * `40634 Servicios Públicos o Arbitrios`
      * `40635 Servicios Administrativos o Derechos`
  * `407 Administradoras de Fondos de Pensiones` (`capturas/34-1.png`)
    * `4070 Administradoras de Fondos de Pensiones`
      * `40700 Administradoras de Fondos de Pensiones`
  * `408 Empresas Prestadoras de Servicios de Salud` (`capturas/34-2.png`)
    * `4081 Emp Pres de Serv de Salud - Cuenta Propia`
      * `40810 Emp Pres de Serv de Salud - Cuenta Propia`
    * `4082 Emp Pres de Serv de Salud - Cuenta de Terceros`
      * `40820 Emp Pres de Serv de Salud - Cuenta de Terceros`
  * `409 Otros Costos Administrativos e Intereses` (`capturas/34-2.png`)
    * `4090 Otros Costos Administrativos e Intereses`
      * `40900 Otros Costos Administrativos e Intereses`

---

## 2. Cuenta 41: Remuneraciones y Participaciones por Pagar
**Origen**: `capturas/34-2.png`  
**Definición**: Obligaciones laborales devengadas con los trabajadores de la empresa por sueldos, comisiones, gratificaciones, vacaciones, beneficios sociales y participaciones legales.

### Estructura Literal del ERP:
* `41 REMUNERACIONES Y PARTICIPACIONES POR PAGAR`
  * `411 Remuneraciones por Pagar`
    * `4111 Sueldos y Salarios por Pagar`
      * `41110 Sueldos y Salarios por Pagar`
    * `4112 Comisiones por Pagar`
      * `41120 Comisiones por Pagar`
    * `4113 Remuneraciones en Especie por Pagar`
      * `41130 Remuneraciones en Especie por Pagar`
    * `4114 Gratificaciones por Pagar`
      * `41140 Gratificaciones por Pagar`
    * `4115 Vacaciones por Pagar`
      * `41150 Vacaciones por Pagar`
  * `413 Participaciones de los Trabajadores por Pagar`
    * `4130 Participaciones de los Trabajadores por Pagar`
      * `41300 Participaciones de los Trabajadores por Pagar`
  * `415 Beneficios Sociales de los Trabajadores por Pagar`
    * `4151 Compensación por Tiempo de Servicios por Pagar`
      * `41510 Compensación por Tiempo de Servicios por Pagar`
    * `4152 Adelanto de Compensación por Tiempo de Servicios`
      * `41520 Adelanto de Compensación por Tiempo de Servicios`
    * `4153 Pensiones y Jubilciones por Pagar`
      * `41530 Pensiones y Jubilciones por Pagar`
  * `417 ADMINISTRADORA DE FONDOS DE PENSIONES`
    * `4170 ADMINISTRADORA DE FONDOS DE PENSIONES`
      * `41700 ADMINISTRADORA DE FONDOS DE PENSIONES`
  * `419 Otras Remuneraciones y Participaciones por Pagar`
    * `4190 Otras Remuneraciones y Participaciones por Pagar`
      * `41900 Otras Remuneraciones y Participaciones por Pagar`

---

## 3. Cuenta 42: Cuentas por Pagar Comerciales Terceros
**Origen**: `capturas/35-1.png`  
**Definición**: Obligaciones contraídas con proveedores independientes derivadas de adquisiciones de mercaderías, suministros o servicios para el giro ordinario de las operaciones.

### Estructura Literal del ERP:
* `42 CUENTAS POR PAGAR COMERCIALES TERCEROS`
  * `421 Facturas, Boletas y Otros Comprobantes por Pagar`
    * `4211 Facturas, Boletas y Otros Comp No Emitidos`
      * `42110 Facturas, Boletas y Otros Comp No Emitidos`
    * `4212 Facturas, Boletas y Otros Comp Emitidas`
      * `42120 Facturas, Boletas y Otros Comp Emitidas`
  * `422 Anticipos a Proveedores`
    * `4220 Anticipos a Proveedores`
      * `42200 Anticipos a Proveedores`
  * `423 Letras por Pagar`
    * `4230 Letras por Pagar`
      * `42300 Letras por Pagar`
  * `424 Honorarios por Pagar`
    * `4240 Honorarios por Pagar`
      * `42400 Honorarios por Pagar`

---

## 4. Cuenta 43: Cuentas por Pagar Comerciales Relacionadas
**Origen**: `capturas/35-1.png` y `capturas/35-2.png` *(Flujo continuo explícito `35-1` -> `35-2`)*  
**Definición**: Obligaciones comerciales contraídas con empresas del mismo grupo económico (matriz, subsidiarias, asociadas, sucursales y otras vinculadas).

### Estructura Literal del ERP:
* `43 CUENTAS POR PAGAR COMERCIALES RELACIONADAS`
  * `431 Fact Boletas y Otros Comp por Pagar Relacionadas` (`capturas/35-1.png`)
    * `4311 Facturas Por Pagar Relacionadas No Emitidas`
      * `43111 Facturas por Pagar No Emitidas - Matriz`
      * `43112 Facturas por Pagar No Emitidas - Subsidiarias`
      * `43113 Facturas por Pagar No Emitidas - Asociadas`
      * `43114 Facturas por Pagar No Emitidas - Sucursales`
      * `43115 Facturas por Pagar No Emitidas - Otros`
    * `4312 Facturas por Pagar Relacionadas Emitidas`
      * `43121 Facturas por Pagar Emitidas - Matriz`
      * `43122 Facturas por Pagar Emitidas - Subsidiarias`
      * `43123 Facturas por Pagar Emitidas - Asociadas`
      * `43124 Facturas por Pagar Emitidas - Sucursales`
      * `43125 Facturas por Pagar Emitidas - Otros`
  * `432 Anticipos Otorgados Relacionadas` (`capturas/35-1.png`)
    * `4321 Anticipos Otorgados Relacionadas`
      * `43211 Relacionadas Anticipos Otorgados - Matriz`
      * `43212 Relacionadas Anticipos Otorgados - Subsidiarias`
      * `43213 Relacionadas Anticipos Otorgados - Asociadas`
      * `43214 Relacionadas Anticipos Otorgados - Sucursales`
      * `43215 Relacionadas Anticipos Otorgados - Otros`
  * `433 Letras por Pagar Relacionadas` (`capturas/35-2.png`)
    * `4331 Letras por Pagar Relacionadas`
      * `43311 Relacionadas Letras por Pagar - Matriz`
      * `43312 Relacionadas Letras por Pagar - Subsidiarias`
      * `43313 Relacionadas Letras por Pagar - Asociadas`
      * `43314 Relacionadas Letras por Pagar - Sucursales`
      * `43315 Relacionadas Letras por Pagar - Otros`
  * `434 Honorarios por Pagar Relacionadas` (`capturas/35-2.png`)
    * `4341 Honorarios por Pagar Relacionadas`
      * `43411 Honorarios por Pagar - Matriz`
      * `43412 Honorarios por Pagar - Subsidiarias`
      * `43413 Honorarios por Pagar - Asociadas`
      * `43414 Honorarios por Pagar - Sucursales`
      * `43415 Honorarios por Pagar - Otros`

---

## 5. Cuenta 44: Cuentas por Pagar a los Accionistas (Socios), Directores y Gerentes
**Origen**: `capturas/35-2.png`  
**Definición**: Obligaciones financieras contraídas directamente con los accionistas (préstamos recibidos, dividendos acordados), directores (dietas) y gerentes.

### Estructura Literal del ERP:
* `44 CUENTAS X PAGAR A ACCIONISTAS, DIRECTORES Y GEREN`
  * `441 Cuentas por Pagar a Accionistas (o Socios)`
    * `4411 Préstamos por Pagar a Accionistas (o Socios)`
      * `44110 Préstamos por Pagar a Accionistas (o Socios)`
    * `4412 Dividendos por Pagar`
      * `44120 Dividendos por Pagar`
    * `4419 Otras Cuentas por Pagar a Accionistas (o Socios)`
      * `44190 Otras Cuentas por Pagar a Accionistas (o Socios)`
  * `442 Cuentas por Pagar a Directores`
    * `4421 Dietas por Pagar`
      * `44210 Dietas por Pagar`
    * `4429 Otras Cuentas por Pagar a Directores`
      * `44290 Otras Cuentas por Pagar a Directores`
  * `443 Cuentas por Pagar a Gerentes`
    * `4430 Cuentas por Pagar a Gerentes`
      * `44300 Cuentas por Pagar a Gerentes`

---

## 6. Cuenta 45: Obligaciones Financieras
**Origen**: `capturas/36-1.png` y `capturas/36-2.png` *(Flujo continuo explícito `36-1` -> `36-2`)*  
**Definición**: Deudas contratas con bancos e instituciones financieras por préstamos comerciales, contratos de arrendamiento financiero (leasing), emisión de bonos y papeles comerciales.

### Estructura Literal del ERP:
* `45 OBLIGACIONES FINANCIERAS` (`capturas/36-1.png`)
  * `451 Préstamos de Instituciones Finan y Otras Entidades`
    * `4511 Obligaciones Instituciones Financieras`
      * `45110 Obligaciones Instituciones Financieras`
    * `4512 Obligaciones a Otras Entidades`
      * `45120 Obligaciones a Otras Entidades`
  * `452 Contratos de Arrendamiento Financiero`
    * `4520 Contratos de Arrendamiento Financiero`
      * `45200 Contratos de Arrendamiento Financiero`
      * `45201 CONTRATOS LEASING BANCO SCOTIABANK PERU`
      * `45202 CONTRATOS LEASING BANCO BBVA CONTINENTAL`
      * `45203 CONTRATOS LEASING BANCO GNB PERU`
      * `45204 CONTRATOS LEASING BANCO INTERAMERICANO DE FINANZAS`
  * `453 Obligaciones Emitidas`
    * `4531 Bonos Emitidos`
      * `45310 Bonos Emitidos`
    * `4532 Bonos Titulizados`
      * `45320 Bonos Titulizados`
    * `4533 Papeles Comerciales`
      * `45330 Papeles Comerciales`
    * `4539 Otras Obligaciones`
      * `45390 Otras Obligaciones`
  * `454 Otras Instrumentos Financieros por Pagar`
    * `4541 Otros Instrum Finan por Pagar Letras`
      * `45410 Otros Instrum Finan por Pagar Letras`
    * `4542 Otros Instrum Finan por Pagar Papeles Comerciales`
      * `45420 Otros Instrum Finan por Pagar Papeles Comerciales`
    * `4543 Otros Instrum Finan por Pagar Bonos`
      * `45430 Otros Instrum Finan por Pagar Bonos`
    * `4544 Otros Instrum Finan por Pagar Pagarés`
      * `45440 Otros Instrum Finan por Pagar Pagarés`
    * `4545 Otros Instrum Finan por Pagar Fact Conformadas`
      * `45450 Otros Instrum Finan por Pagar Fact Conformadas`
    * `4549 Otras Obligaciones Financieras`
      * `45490 Otras Obligaciones Financieras`
  * `455 Costos de Financiación por Pagar` (`capturas/36-2.png`)
    * `4551 Costos Finan Préstamos de Instit Finan y Otras Ent`
      * `45511 Costos de Finan x Pagar Instituciones Financieras`
      * `45512 Costos de Finan x Pagar Otras Entidades`
    * `4552 Costos de Finan Contratos de Arrendamiento Finan`
      * `45520 Costos de Finan Contratos de Arrendamiento Finan`
    * `4553 Costos de Finan Obligaciones Emitidas`
      * `45531 Costos de Finan Bonos Emitidos`
      * `45532 Costos de Finan Bonos Titulizados`
      * `45533 Costos de Finan Papeles Comerciales`
      * `45539 Costos de Finan Otras Obligaciones`
    * `4554 Costos de Finan Otros Instrumentos Finan por Pagar`
      * `45541 Costos de Finan Letras por Pagar`
      * `45542 Costos de Finan Papeles Comerciales`
      * `45543 Costos de Finan Bonos`
      * `45544 Costos de Finan Pagarés`
      * `45545 Costos de Finan Facturas Conformadas`
      * `45549 Costos de Finan Otras Obligaciones Financieras`
  * `456 Préstamos con Compromiso de Recompra` (`capturas/36-2.png`)
    * `4560 Préstamos con Compromiso de Recompra`
      * `45600 Préstamos con Compromiso de Recompra`

---

## 7. Cuenta 46: Cuentas por Pagar Diversas Terceros
**Origen**: `capturas/37.png`  
**Definición**: Obligaciones no comerciales contraídas con terceros por adquisición de activos inmovilizados, pasivos por instrumentos financieros derivados, garantías recibidas y subvenciones.

### Estructura Literal del ERP:
* `46 CUENTAS POR PAGAR DIVERSAS TERCEROS`
  * `461 Reclamaciones de Terceros`
    * `4610 Reclamaciones de Terceros`
      * `46100 Reclamaciones de Terceros`
  * `464 Pasivos por Instrumentos Derivados`
    * `4641 Instrumentos Financieros Primarios`
      * `46410 Instrumentos Financieros Primarios`
    * `4642 Instrumentos Financieros Derivados`
      * `46421 Cartera de Negociación`
      * `46422 Instrumentos de Cobertura`
  * `465 Pasivos por Compra de Activo Inmovilizado`
    * `4651 Pasivo Por Compra Inversiones Mobiliarias`
      * `46510 Pasivo Por Compra Inversiones Mobiliarias`
    * `4652 Pasivo Por Compra Inversiones Inmobiliarias`
      * `46520 Pasivo Por Compra Inversiones Inmobiliarias`
    * `4653 Pasivos por Actvos Adq en Arrendamiento Financiero`
      * `46530 Pasivos por Actvos Adq en Arrendamiento Financiero`
    * `4654 Pasivo Por Compra Inmuebles Maquinaria y equipo`
      * `46540 Pasivo Por Compra Inmuebles Maquinaria y equipo`
    * `4655 Pasivo Por Compra Intangibles`
      * `46550 Pasivo Por Compra Intangibles`
    * `4656 Pasivo Por Compra Activos Biológicos`
      * `46560 Pasivo Por Compra Activos Biológicos`
  * `467 Depósitos Recibidos en Garantía`
    * `4670 Depósitos Recibidos en Garantía`
      * `46700 Depósitos Recibidos en Garantía`
  * `469 Otras Cuentas por Pagar Diversas`
    * `4691 Subsidios Gubernamentales`
      * `46910 Subsidios Gubernamentales`
    * `4692 Donaciones Condicionadas`
      * `46920 Donaciones Condicionadas`
    * `4699 Otras Cuentas por Pagar`
      * `46990 Otras Cuentas por Pagar`
      * `46999 CAMBIAR DESCRIPCION`

---

## 8. Cuenta 47: Cuentas por Pagar Diversas Relacionadas
**Origen**: `capturas/38-1.png`, `capturas/38-2.png` y `capturas/38-3.png` *(Flujo continuo explícito `38-1` -> `38-2` -> `38-3`)*  
**Definición**: Pasivos no comerciales mantenidos con empresas vinculadas del grupo económico por mutuos de dinero, financiamientos, regalías, dividendos por pagar y compras de activo inmovilizado.

### Estructura Literal del ERP:
* `47 CUENTAS POR PAGAR DIVERSAS RELACIONADAS` (`capturas/38-1.png`)
  * `471 Préstamos por Pagar Relacionadas`
    * `4711 Préstamos por Pagar Matriz`
      * `47110 Préstamos por Pagar Matriz`
    * `4712 Préstamos por Pagar Subsidiarias`
      * `47120 Préstamos por Pagar Subsidiarias`
    * `4713 Préstamos por Pagar Asociadas`
      * `47130 Préstamos por Pagar Asociadas`
    * `4714 Préstamos por Pagar Sucursales`
      * `47140 Préstamos por Pagar Sucursales`
    * `4715 Préstamos por Pagar Otras`
      * `47150 Préstamos por Pagar Otras`
  * `472 Costo de Financiación Relacionadas`
    * `4721 Costo de Financiación Matriz`
      * `47210 Costo de Financiación Matriz`
    * `4722 Costo de Financiación Subsidiarias`
      * `47220 Costo de Financiación Subsidiarias`
    * `4723 Costo de Financiación Asociadas`
      * `47230 Costo de Financiación Asociadas`
    * `4724 Costo de Financiación Sucursales`
      * `47240 Costo de Financiación Sucursales`
    * `4725 Costo de Financiación Otras Relacionadas`
      * `47250 Costo de Financiación Otras Relacionadas`
  * `473 Anticipos Recibidos Relacionadas`
    * `4731 Anticipos Recibidos Matriz`
      * `47310 Anticipos Recibidos Matriz`
    * `4732 Anticipos Recibidos Subsidiairas`
      * `47320 Anticipos Recibidos Subsidiairas`
    * `4733 Anticipos Recibidos Asociadas`
      * `47330 Anticipos Recibidos Asociadas`
    * `4734 Anticipos Recibidos Sucursales`
      * `47340 Anticipos Recibidos Sucursales`
    * `4735 Anticipos Recibidos Otras Relacionadas`
      * `47350 Anticipos Recibidos Otras Relacionadas`
  * `474 Regalias por Pagar Relacionadas` (`capturas/38-2.png`)
    * `4741 Regalias por Pagar Matriz`
      * `47410 Regalias por Pagar Matriz`
    * `4742 Regalias por Pagar Subsidiarias`
      * `47420 Regalias por Pagar Subsidiarias`
    * `4743 Regalias por Pagar Asociadas`
      * `47430 Regalias por Pagar Asociadas`
    * `4744 Regalias por Pagar Sucursales`
      * `47440 Regalias por Pagar Sucursales`
    * `4745 Regalias por Pagar Otras Relacionadas`
      * `47450 Regalias por Pagar Otras Relacionadas`
  * `475 Dividendos por Pagar Relacionadas` (`capturas/38-2.png`)
    * `4751 Dividendos por Pagar Matriz`
      * `47510 Dividendos por Pagar Matriz`
    * `4752 Dividendos por Pagar Subsidiarias`
      * `47520 Dividendos por Pagar Subsidiarias`
    * `4753 Dividendos por Pagar Asociadas`
      * `47530 Dividendos por Pagar Asociadas`
    * `4754 Dividendos por Pagar Sucursales`
      * `47540 Dividendos por Pagar Sucursales`
    * `4755 Dividendos por Pagar Otras Relacionadas`
      * `47550 Dividendos por Pagar Otras Relacionadas`
  * `477 Pasivo x Comp de Activo Inmovilizado Relacionadas` (`capturas/38-2.png` y `38-3.png`)
    * `4771 Pasivo x Comp Inversiones Mobiliarias Relacionadas`
      * `47711 Pasivo x Comp Inv Mobiliarias Matriz`
      * `47712 Pasivo x Comp Inv Mobiliarias Subsidiarias`
      * `47713 Pasivo x Comp Inv Mobiliarias Asociadas`
      * `47714 Pasivo x Comp Inv Mobiliarias Sucursales`
      * `47715 Pasivo x Comp Inv Mobiliarias Otras`
    * `4772 Pasivo x Comp Inversiones Inmobiliarias Relacionad`
      * `47721 Pasivo x Comp Inv Inmobiliarias Matriz`
      * `47722 Pasivo x Comp Inv Inmobiliarias Subsidiarias`
      * `47723 Pasivo x Comp Inv Inmobiliarias Asociadas`
      * `47724 Pasivo x Comp Inv Inmobiliarias Sucursales`
      * `47725 Pasivo x Comp Inv Inmobiliarias Otras Relacionadas`
    * `4773 Pasivo x Act Adq Arrendamiento Finan Relacionadas` (`capturas/38-3.png`)
      * `47731 Pasivo x Act Adq en Arrendamto Finan Matriz`
      * `47732 Pasivo x Act Adq en Arrendamto Finan Subsidiarias`
      * `47733 Pasivo x Act Adq en Arrendamto Finan Asociadas`
      * `47734 Pasivo x Act Adq en Arrendamto Finan Sucursales`
      * `47735 Pasivo x Act Adq en Arrendamto Finan Otras Relacio`
    * `4774 Pasivo x Comp Inmuebles Maq y Equipo Relacionadas` (`capturas/38-3.png`)
      * `47741 Pasivo x Comp Inmuebles Maq y Equipo Matriz`
      * `47742 Pasivo x Comp Inmuebles Maq y Equipo Subsidiarias`
      * `47743 Pasivo x Comp Inmuebles Maq y Equipo Asociadas`
      * `47744 Pasivo x Comp Inmuebles Maq y Equipo Sucursales`
      * `47745 Pasivo x Comp Inmuebles Maq y Equipo Otras Relacio`
    * `4775 Pasivo por Compra Intangibles Relacionadas` (`capturas/38-3.png`)
      * `47751 Pasivo por Compra Intangibles Matriz`
      * `47752 Pasivo por Compra Intangibles Subsidiarias`
      * `47753 Pasivo por Compra Intangibles Asociadas`
      * `47754 Pasivo por Compra Intangibles Sucursales`
      * `47755 Pasivo por Compra Intangibles Otras Relacionadas`
    * `4776 Pasivo por Compra Acitvos Biológicos Relacionadas` (`capturas/38-3.png`)
      * `47761 Pasivo por Compra Acitvos Biológicos Matriz`
      * `47762 Pasivo por Compra Acitvos Biológicos Subsidiarias`
      * `47763 Pasivo por Compra Acitvos Biológicos Asociadas`
      * `47764 Pasivo por Compra Acitvos Biológicos Sucursales`
      * `47765 Pasivo por Compra Acitvos Biológicos Otras Relacio`
  * `479 Otras Cuentas por Pagar Diversas Relacionadas` (`capturas/38-3.png`)
    * `4791 Otras Cuentas por Pagar Diversas Relacionadas`
      * `47911 Otras Cuentas por Pagar Diversas Matriz`
      * `47912 Otras Cuentas por Pagar Diversas Subsidiaria`
      * `47913 Otras Cuentas por Pagar Diversas Asociadas`
      * `47914 Otras Cuentas por Pagar Diversas Sucursales`
      * `47915 Otras Cuentas por Pagar Diversas Otras Relacionada`

---

## 9. Cuenta 48: Provisiones
**Origen**: `capturas/39-1.png`  
**Definición**: Pasivos en los que existe incertidumbre acerca de su cuantía o vencimiento futuro, pero cuyo pago es probable y puede ser estimado razonablemente (NIC 37).

### Estructura Literal del ERP:
* `48 PROVISIONES`
  * `481 Provisión Para Litigios`
    * `4810 Provisión Para Litigios`
      * `48100 Provisión Para Litigios`
  * `482 Provisión por Desmantelamiento, Retiro o Rehabilit`
    * `4820 Provisión por Desmantelamiento, Retiro o Rehabilit`
      * `48200 Provisión por Desmantelamiento, Retiro o Rehabilit`
  * `483 Povisión Para Reestructuraciones`
    * `4830 Povisión Para Reestructuraciones`
      * `48300 Povisión Para Reestructuraciones`
  * `484 Provisión Para Protección y Remediación del Medio`
    * `4840 Provisión Para Protección y Remediación del Medio`
      * `48400 Provisión Para Protección y Remediación del Medio`
  * `485 Provisión Para Gastos de Responsabilidad Social`
    * `4850 Provisión Para Gastos de Responsabilidad Social`
      * `48500 Provisión Para Gastos de Responsabilidad Social`
  * `486 Provisión Para Garantías`
    * `4860 Provisión Para Garantías`
      * `48600 Provisión Para Garantías`
  * `489 Otras Provisiones`
    * `4890 Otras Provisiones`
      * `48900 Otras Provisiones`

---

## 10. Cuenta 49: Pasivo Diferido
**Origen**: `capturas/39-1.png` y `capturas/39-2.png` *(Continuidad implícita: 491-493 en 39-1.png y 494-497 al inicio de 39-2.png)*  
**Definición**: Pasivos por impuestos a la renta diferidos atribuibles a diferencias temporales imponibles (NIC 12), participaciones laborales diferidas, intereses no devengados y subsidios e ingresos diferidos.

### Estructura Literal del ERP:
* `49 PASIVO DIFERIDO`
  * `491 Impuesto a la Renta Diferido` (`capturas/39-1.png`)
    * `4911 Impuesto a la Renta Diferido Patrimonio`
      * `49110 Impuesto a la Renta Diferido Patrimonio`
    * `4912 Impuesto a la Renta Diferido Resultados`
      * `49120 Impuesto a la Renta Diferido Resultados`
  * `492 Participaciones de los Trabajadores Diferidos` (`capturas/39-1.png`)
    * `4921 Participación de Trabajadore Diferidos Patrimonio`
      * `49210 Participación de Trabajadore Diferidos Patrimonio`
    * `4922 Participación de Trabajadore Diferidos Resultados`
      * `49220 Participación de Trabajadore Diferidos Resultados`
  * `493 Intereses Diferidos` (`capturas/39-1.png`)
    * `4931 Intereses No Devengados Transacciones con Terceros`
      * `49310 Intereses No Devengados Transacciones con Terceros`
    * `4932 Intereses No Devengados en Medición a Valor Descon`
      * `49320 Intereses No Devengados en Medición a Valor Descon`
  * `494 Ganancia en Venta con Arrendamiento Finan Paralelo` (`capturas/39-2.png`)
    * `4940 Ganancia en Venta con Arrendamiento Finan Paralelo`
      * `49400 Ganancia en Venta con Arrendamiento Finan Paralelo`
  * `495 Subsidios Recibidos Diferidos` (`capturas/39-2.png`)
    * `4950 Subsidios Recibidos Diferidos`
      * `49500 Subsidios Recibidos Diferidos`
  * `496 Ingresos Diferidos` (`capturas/39-2.png`)
    * `4960 Ingresos Diferidos`
      * `49600 Ingresos Diferidos`
  * `497 Costos Diferidos` (`capturas/39-2.png`)
    * `4970 Costos Diferidos`
      * `49700 Costos Diferidos`
