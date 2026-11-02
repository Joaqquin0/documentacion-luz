# Elemento 1: Activo Disponible y Exigible

Comprende los fondos monetarios, inversiones financieras a corto plazo y todos los derechos de cobro derivados de transacciones comerciales, deudas del personal, vinculadas y terceros, así como los gastos pagados por anticipado y las correcciones valorativas por cobranza dudosa.

> [!IMPORTANT]
> Todos los códigos y textos se presentan **exactamente tal y como figuran en las capturas del ERP** (incluyendo mayúsculas, abreviaturas, erratas y cuentas de prueba del sistema) para garantizar trazabilidad técnica 100% fiel a la base de datos de origen.

---

## 1. Cuenta 10: Efectivo y Equivalentes de Efectivo
**Origen**: `capturas/5.png`  
**Definición**: Fondos monetarios de libre disponibilidad en caja física y entidades bancarias, fondos fijos y depósitos de ahorro e imposiciones a plazo.

### Estructura Literal del ERP:
* `10 EFECTIVO Y EQUIVALENTES DE EFECTIVO`
  * `100 CAJA`
    * `1001 CAJA`
      * `10011 CAJA`
  * `101 Caja`
    * `1010 Caja`
      * `10100 Caja`
  * `102 Fondos Fijos`
    * `1020 Fondos Fijos`
      * `10200 Fondos Fijos`
  * `103 Efectivo en Tránsito`
    * `1030 Efectivo en Tránsito`
      * `10300 Efectivo en Tránsito`
  * `104 Cuentas Corrientes en Instituciones Financieras`
    * `1041 Cuentas Corrientes Operativas`
      * `10410 Cuentas Corrientes Operativas`
    * `1042 Cuentas Corrientes Para Fines Específicos`
      * `10420 Cuentas Corrientes Para Fines Específicos`
  * `105 Otros Equivalentes de Efectivo`
    * `1051 Otros Equivalentes de Efectivo`
      * `10510 Otros Equivalentes de Efectivo`
  * `106 Depósitos en Instituciones Financieras`
    * `1061 Depósitos de Ahorro`
      * `10610 Depósitos de Ahorro`
    * `1062 Depósitos a Plazo`
      * `10620 Depósitos a Plazo`
  * `107 Fondos Sujetos a Restricción`
    * `1071 Fondos Sujetos a Restricción`
      * `10710 Fondos Sujetos a Restricción`

---

## 2. Cuenta 11: Inversiones Financieras
**Origen**: `capturas/6.png`  
**Definición**: Instrumentos financieros primarios adquiridos con fines de negociación o disponibles para la venta a corto plazo.

### Estructura Literal del ERP:
* `11 INVERSIONES FINANCIERAS`
  * `111 Inversiones Mantenidas Para Negociación`
    * `1111 Valores Emitidos o Garantizados por el Estado`
      * `11111 Valores Emit o Garant x Estado - Costo`
      * `11112 Valores Emit o Garant x Estado - Valor Razonable`
    * `1112 Valores Emitidos por el Sistema Financiero`
      * `11121 Valores Emit x Sistema Finan - Costo`
      * `11122 Valores Emit x Sistema Finan - Valor Razonable`
    * `1113 Valores Emitidos por Empresas`
      * `11131 Valores Emit x Empresas - Costo`
      * `11132 Valores Emit x Empresas - Valor Razonable`
    * `1114 Otros Títulos Representativos de Deuda`
      * `11141 Otros Títulos Represent de Deuda - Costo`
      * `11142 Otros Títulos Represent de Deuda - Valor Razonable`
    * `1115 Participaciones en Entidades`
      * `11151 Participaciones en Entidades - Costo`
      * `11152 Participaciones en Entidades - Valor Razonable`
  * `112 Inversiones Disponibles Para la Venta`
    * `1121 Valores Emitidos o Garantizados por el Estado`
      * `11211 Valores Emit o Garant x Estado - Costo`
      * `11212 Valores Emit o Garant x Estado - Valor Razonable`
    * `1122 Valores Emitidos por el Sistema Financiero`
      * `11221 Valores Emit x Sistema Finan - Costo`
      * `11222 Valores Emit x Sistema Finan - Valor Razonable`
    * `1123 Valores Emitidos por Empresas`
      * `11231 Valores Emit x Empresas - Costo`
      * `11232 Valores Emit x Empresas - Valor Razonable`
    * `1124 Otros Títulos Representativos de Deudas`
      * `11241 Otros Títulos Represent de Deuda - Costo`
      * `11242 Otros Títulos Represent de Deuda - Costo` *(Texto literal del ERP; debería ser Valor Razonable)*
  * `113 Activos Financieros - Acuerdo de Compra`
    * `1131 Inversiones Mant Para la Venta - Acuerdo Compra`
      * `11311 Inv Mant Para Vta - Acuerdo Compra - Costo`
      * `11312 Inv Mant Para Vta - Acuerdo Compra - Valor Razonab`
    * `1132 Inv Disponibles Para la Venta - Acuerdo Compra`
      * `11321 Inv Disp Para Vta - Acuerdo Compra - Costo`
      * `11322 Inv Disp Para Vta - Acuerdo Compra - Valor Razonab`

---

## 3. Cuenta 12: Cuentas por Cobrar Comerciales - Terceros
**Origen**: `capturas/7.png`  
**Definición**: Derechos de cobro exigibles a clientes no vinculados originados por la venta de mercaderías o servicios ordinarios.

### Estructura Literal del ERP:
* `12 CUENTAS POR COBRAR COMERCIALES - TERCEROS`
  * `121 Facturas, Boletas y Otros Comprobantes por Cobrar`
    * `1211 Facturas No Emitidas`
      * `12110 Facturas No Emitidas`
    * `12111 5555` *(Rama anómala/prueba creada en el ERP)*
      * `12110 Facturas No Emitidas`
    * `1212 Facturas Emitidas en Cartera`
      * `12120 Facturas Emitidas en Cartera`
    * `1213 Facturas Emitidas En Cobranza`
      * `12130 Facturas Emitidas En Cobranza`
    * `1214 Facturas Emitidas En Descuento`
      * `12140 Facturas Emitidas En Descuento`
  * `122 Anticipos de Clientes`
    * `1220 Anticipos de Clientes`
      * `12200 Anticipos de Clientes`
  * `123 Letras por Cobrar`
    * `1231 Letras por Cobrar en Cartera`
      * `12310 Letras por Cobrar en Cartera`
    * `1232 Letras por Cobrar en Cobranza`
      * `12320 Letras por Cobrar en Cobranza`
    * `1233 Letras por Cobrar en Descuento`
      * `12330 Letras por Cobrar en Descuento`

---

## 4. Cuenta 13: Cuentas por Cobrar Comerciales - Relacionadas
**Origen**: `capturas/8_1.png` y `capturas/8_2.png` *(Flujo continuo explícito `8_1` -> `8_2`)*  
**Definición**: Derechos de cobro comerciales por facturas y letras contra empresas pertenecientes al mismo grupo económico.

### Estructura Literal del ERP:
* `13 CUENTAS POR COBRAR COMERCIALES - RELACIONADAS`
  * `131 Relacionadas Fact, Boletas y Otros Comp por Cobrar` (`capturas/8_1.png`)
    * `1311 Relacionadas Facturas No Emitidas`
      * `13111 Facturas No Emitidas - Matriz`
      * `13112 Facturas No Emitidas - Subsidiarias`
      * `13113 Facturas No Emitidas - Asociadas`
      * `13114 Facturas No Emitidas - Sucursal`
      * `13115 Facturas No Emitidas - Otros`
    * `1312 Relacionadas Facturas Emitidas en Cartera`
      * `13121 Facturas Emitidas en Cartera - Matriz`
      * `13122 Facturas Emitidas en Cartera - Subsidiarias`
      * `13123 Facturas Emitidas en Cartera - Asociadas`
      * `13124 Facturas Emitidas en Cartera - Sucursal`
      * `13125 Facturas Emitidas en Cartera - Otros`
    * `1313 Relacionadas Facturas en Cobranza`
      * `13131 Facturas en Cobranza - Matriz`
      * `13132 Facturas en Cobranza - Subsidiarias`
      * `13133 Facturas en Cobranza - Asociadas`
      * `13134 Facturas en Cobranza - Sucursal`
      * `13135 Facturas en Cobranza - Otros`
    * `1314 Relacionadas Facturas en Descuento`
      * `13141 Facturas en Descuento - Matriz`
      * `13142 Facturas en Descuento - Subsidiarias`
      * `13143 Facturas en Descuento - Asociadas`
      * `13144 Facturas en Descuento - Sucursal`
      * `13145 Facturas en Descuento - Otros`
  * `132 Relacionadas Anticipos Recibidos` (`capturas/8_1.png`)
    * `1321 Relacionadas Anticipos Recibidos`
      * `13211 Relacionadas Anticipos Recibidos - Matriz`
      * `13212 Relacionadas Anticipos Recibidos - Subsidiarias`
      * `13213 Relacionadas Anticipos Recibidos - Asociadas`
      * `13214 Relacionadas Anticipos Recibidos - Sucursales`
      * `13215 Relacionadas Anticipos Recibidos - Otros`
  * `133 Relacionadas Letras por Cobrar` (`capturas/8_2.png`)
    * `1331 Relaciondas Letras por Cobrar en Cartera` *(errata literal ERP: "Relaciondas")*
      * `13311 Letras por Cobrar en Cartera - Matriz`
      * `13312 Letras por Cobrar en Cartera - Subsidiarias`
      * `13313 Letras por Cobrar en Cartera - Asociadas`
      * `13314 Letras por Cobrar en Cartera - Sucursal`
      * `13315 Letras por Cobrar en Cartera - Otros`
    * `1332 Relacionadas Letras por Cobrar En Cobranza`
      * `13321 Letras por Cobrar en Cobranza - Matriz`
      * `13322 Letras por Cobrar en Cobranza - Subsidiarias`
      * `13323 Letras por Cobrar en Cobranza - Asociadas`
      * `13324 Letras por Cobrar en Cobranza - Sucursal`
      * `13325 Letras por Cobrar en Cobranza - Otros`
    * `1333 Realcionadas Letras por Cobrar en Descuento` *(errata literal ERP: "Realcionadas")*
      * `13331 Letras por Cobrar en Descuento - Matriz`
      * `13332 Letras por Cobrar en Descuento - Subsidiarias`
      * `13333 Letras por Cobrar en Descuento - Asociadas`
      * `13334 Letras por Cobrar en Descuento - Sucursal`
      * `13335 Letras por Cobrar en Descuento - Otros`

---

## 5. Cuenta 14: Cuentas por Cobrar al Personal, Accionistas, Directores y Gerentes
**Origen**: `capturas/9.png`  
**Definición**: Créditos, préstamos, adelantos de sueldo/dietas y entregas a rendir cuenta a directivos, socios o colaboradores.

### Estructura Literal del ERP:
* `14 CTAS POR COB A PERSONAL, ACCTAS, DIREC Y GTES`
  * `141 Cuentas por Cobrar al Personal`
    * `1411 Préstamos al Personal`
      * `14110 Préstamos al Personal`
    * `1412 Adelanto de Remuneraciones`
      * `14120 Adelanto de Remuneraciones`
    * `1413 Entregas a Rendir Cuenta`
      * `14130 Entregas a Rendir Cuenta`
    * `1419 Otras Cuentas por Cobrar al Personal`
      * `14190 Otras Cuentas por Cobrar al Personal`
  * `142 Cuentas por Cobrar a Accionistas (o Socios)`
    * `1421 Suscripciones por Cobrar a Accionistas (o Socios)`
      * `14210 Suscripciones por Cobrar a Accionistas (o Socios)`
    * `1422 Préstamos a Accionistas (o Socios)`
      * `14220 Préstamos a Accionistas (o Socios)`
  * `143 Cuentas por Cobrar a Directores`
    * `1431 Préstamos a Directores`
      * `14310 Préstamos a Directores`
    * `1432 Adelanto de Dietas`
      * `14320 Adelanto de Dietas`
    * `1433 Entregas a Rendir Cuenta - Directores`
      * `14330 Entregas a Rendir Cuenta - Directores`
  * `144 Cuentas por Cobrar a Gerentes`
    * `1441 Préstamos a Gerentes`
      * `14410 Préstamos a Gerentes`
    * `1442 Adelanto de Remuneraciones - Gerentes`
      * `14420 Adelanto de Remuneraciones - Gerentes`
    * `1443 Entregas a Rendir Cuenta - Gerentes`
      * `14430 Entregas a Rendir Cuenta - Gerentes`
  * `148 Cuentas por Cobrar Diversas`
    * `1480 Cuentas por Cobrar Diversas al Personal`
      * `14800 Cuentas por Cobrar Diversas al Personal`

---

## 6. Cuenta 16: Cuentas por Cobrar Diversas - Terceros
**Origen**: `capturas/10_1.png` y `capturas/10_2.png` *(Flujo continuo explícito `10_1` -> `10_2`)*  
**Definición**: Créditos no comerciales con terceros (préstamos, depósitos en garantía, enajenación de activo fijo y créditos de impuestos).

### Estructura Literal del ERP:
* `16 CUENTAS POR COBRAR DIVERSAS - TERCEROS`
  * `161 Préstamos a Terceros` (`capturas/10_1.png`)
    * `1611 Préstamos a Terceros con Garantía`
      * `16110 Préstamos a Terceros con Garantía`
    * `1612 Préstamos a Terceros sin Garantía`
      * `16120 Préstamos a Terceros sin Garantía`
  * `162 Reclamaciones a Terceros` (`capturas/10_1.png`)
    * `1621 Reclamaciones a Compañías Aseguradoras`
      * `16210 Reclamaciones a Compañías Aseguradoras`
    * `1622 Reclamaciones a Transportadoras`
      * `16220 Reclamaciones a Transportadoras`
    * `1623 Reclamaciones por Servicios Públicos`
      * `16230 Reclamaciones por Servicios Públicos`
    * `1624 Reclamaciones de Tributos`
      * `16240 Reclamaciones de Tributos`
    * `1629 Reclamaciones Otras`
      * `16290 Reclamaciones Otras`
  * `163 Intereses, Regalías y Dividendos` (`capturas/10_1.png`)
    * `1631 Intereses por Cobrar`
      * `16310 Intereses por Cobrar`
    * `1632 Regalías por Cobrar`
      * `16320 Regalías por Cobrar`
    * `1633 Dividendos por Cobrar`
      * `16330 Dividendos por Cobrar`
  * `164 Depósitos Otorgados en Garantía` (`capturas/10_1.png`)
    * `1641 Garantía por Préstamos de Instituciones Finan`
      * `16410 Garantía por Préstamos de Instituciones Finan`
    * `1642 Garantía por Préstamos de Instituciones No Finan`
      * `16420 Garantía por Préstamos de Instituciones No Finan`
    * `1644 Garantía por Alquileres`
      * `16440 Garantía por Alquileres`
    * `1649 Otros Depósitos en Garantía`
      * `16490 Otros Depósitos en Garantía`
  * `165 Venta de Activo Inmovilizados` (`capturas/10_2.png`)
    * `1651 Venta Inversión Mobiliaria`
      * `16510 Venta Inversión Mobiliaria`
    * `1652 Venta Inversión Inmobiliaria`
      * `16520 Venta Inversión Inmobiliaria`
    * `1653 Venta Inmuebles, Maquinaria y Equipo`
      * `16530 Venta Inmuebles, Maquinaria y Equipo`
    * `1654 Venta Intangibles`
      * `16540 Venta Intangibles`
    * `1655 Venta Activos Biológicos`
      * `16550 Venta Activos Biológicos`
  * `166 ACTIVOS POR INSTRUMENTOS FINANCIEROS` (`capturas/10_2.png`)
    * `1661 INSTRUMENTOS FINANCIEROS PRIMARIOS`
      * `16610 Venta Instrumentos Financieros Primarios`
    * `1662 Venta Instrumentos Financieros Derivados`
      * `16621 Venta Cartera de Negociación`
      * `16622 Venta Instrumentos de Cobertura`
  * `167 TRIBUTOS POR ACREDITAR` (`capturas/10_2.png`)
    * `1671 PAGOS A CUENTA DEL IMPUESTO ALA RENTA` *(errata literal ERP: "ALA")*
      * `16711 PAGOS A CUENTA DE IMPUESTO A LA RENTA`
    * `1672 PAGOS A CUENTA DEL ITAN`
      * `16721 PAGOS A CUENTA DEL ITAN`
    * `1673 IGV POR ACREDITAR` *(rama cerrada en la captura de pantalla)*
  * `168 Otras Cuentas por Cobrar Diversas` (`capturas/10_2.png`)
    * `1681 Entregas a Rendir Cuenta a Terceros`
      * `16810 Entregas a Rendir Cuenta a Terceros`
    * `1689 Otras Cuentas por Cobrar Diversas`
      * `16890 Otras Cuentas por Cobrar Diversas`

---

## 7. Cuenta 17: Cuentas por Cobrar Diversas Relacionadas
**Origen**: `capturas/11-1.png` y `capturas/11-2.png` *(Flujo continuo explícito `11-1` -> `11-2`)*  
**Definición**: Créditos no comerciales con empresas del grupo económico.

### Estructura Literal del ERP:
* `17 CUENTAS POR COBRAR DIVERSAS RELACIONADAS`
  * `171 Préstamos a Relacionadas` (`capturas/11-1.png`)
    * `1711 Préstamos a Relacionadas con Garantía`
      * `17111 Préstamos con Garantía Matriz`
      * `17112 Préstamos con Garantía Subsidiarias`
      * `17113 Préstamos con Garantía Asociadas`
      * `17114 Préstamos con Garantía Sucursal`
      * `17115 Préstamos con Garantía Otros`
    * `1712 Préstamos a Relacionadas sin Garantía`
      * `17121 Préstamos sin Garantía Matriz`
      * `17122 Préstamos sin Garantía Subsidiarias`
      * `17123 Préstamos sin Garantía Asociadas`
      * `17124 Préstamos sin Garantía Sucursal`
      * `17125 Préstamos sin Garantía Otros`
  * `173 Relacionadas Intereses, Regalías y Dividendos` (`capturas/11-1.png`)
    * `1731 Relacionadas Intereses por Cobrar`
      * `17311 Intereses por Cobrar - Matriz`
      * `17312 Intereses por Cobrar - Subsidiarias`
      * `17313 Intereses por Cobrar - Asociadas`
      * `17314 Intereses por Cobrar - Sucursales`
      * `17315 Intereses por Cobrar - Otros`
    * `1732 Relacionadas Regalías`
      * `17321 Regalías por Cobrar - Matriz`
      * `17322 Regalías por Cobrar - Subsidiarias`
      * `17323 Regalías por Cobrar - Asociadas`
      * `17324 Regalías por Cobrar - Sucursales`
      * `17325 Regalías por Cobrar - Otros`
    * `1733 Relacionadas Dividendos`
      * `17331 Dividendos por Cobrar - Matriz`
      * `17332 Dividendos por Cobrar - Subsidiarias`
      * `17333 Dividendos por Cobrar - Asociadas`
      * `17335 Dividendos por Cobrar - Otros` *(Omite el código 17334 en el ERP)*
  * `174 Relacionadas Depósitos Otorgados en Garantía` (`capturas/11-1.png`)
    * `1740 Relacionadas Depósitos Otorgados en Garantía`
      * `17400 Relacionadas Depósitos Otorgados en Garantía`
  * `175 Relacionadas Venta de Activo Inmovilizado` (`capturas/11-2.png`)
    * `1751 Relacionadas Venta de Inversión Mobiliaria`
      * `17510 Relacionadas Venta de Inversión Mobiliaria`
    * `1752 Relacionadas Venta de Inversión Inmobiliaria`
      * `17520 Relacionadas Venta de Inversión Inmobiliaria`
    * `1753 Relacionadas Venta de Inmuebles, Maquinaria y Equi` *(truncado literal ERP: "Equi")*
      * `17530 Relacionadas Venta de Inmuebles, Maquinaria y Equi`
    * `1754 Relacionadas Venta de Intangibles`
      * `17540 Relacionadas Venta de Intangibles`
    * `1755 Relacionadas Venta de Activos Biológicos`
      * `17550 Relacionadas Venta de Activos Biológicos`
  * `176 Relacionadas Venta de Activos x Instrumento Finan` (`capturas/11-2.png`)
    * `1760 Relacionadas Venta de Activos x Instrumento Finan`
      * `17600 Relacionadas Venta de Activos x Instrumento Finan`
  * `178 Relacionadas Otras Cuentas por Cobrar Diversas` (`capturas/11-2.png`)
    * `1780 Relacionadas Otras Cuentas por Cobrar Diversas`
      * `17800 Relacionadas Otras Cuentas por Cobrar Diversas`

---

## 8. Cuenta 18: Servicios y Otros Contratados por Anticipado
**Origen**: `capturas/12.png`  
**Definición**: Gastos pagados que corresponden a beneficios futuros.

### Estructura Literal del ERP:
* `18 SERVICIOS Y OTROS CONTRATADOS POR ANTICIPADO`
  * `181 Costos Financieros por Anticipado`
    * `1810 Costos Financieros por Anticipado`
      * `18100 Costos Financieros por Anticipado`
  * `182 Seguros por Anticipado`
    * `1820 Seguros por Anticipado`
      * `18200 Seguros por Anticipado`
  * `183 Alquileres por Anticipado`
    * `1830 Alquileres por Anticipado`
      * `18300 Alquileres por Anticipado`
  * `184 Primas Pagadas por Opciones`
    * `1840 Primas Pagadas por Opciones`
      * `18400 Primas Pagadas por Opciones`
  * `185 Mantenimiento de Activos Inmovilizados`
    * `1850 Mantenimiento de Activos Inmovilizados`
      * `18500 Mantenimiento de Activos Inmovilizados`
  * `189 Otros Gastos Contratados por Anticipado`
    * `1890 Otros Gastos Contratados por Anticipado`
      * `18900 Otros Gastos Contratados por Anticipado`
    * `1899 1899 APERTURA` *(Cuenta de apertura creada en el ERP)*
      * `18999 18999 APERTURA`

---

## 9. Cuenta 19: Estimación de Cuentas de Cobranza Dudosa
**Origen**: `capturas/13-1.png` y `capturas/13-2.png` *(Flujo continuo explícito `13-1` -> `13-2`)*  
**Definición**: Provisión y corrección por cuentas de cobro dudoso o insolvencia.

### Estructura Literal del ERP:
* `19 ESTIMACION DE CUENTAS DE COBRANZA DUDOSA`
  * `191 Estimación Ctas X Cobrar Comerciales Terceros` (`capturas/13-1.png`)
    * `1911 Estimación Facturas por Cobrar`
      * `19110 Estimación Facturas por Cobrar`
    * `1912 Estimación Letras por Cobrar`
      * `19120 Estimación Letras por Cobrar`
  * `192 Estimación Ctas X Cobrar Comerciales - Relacionada` (`capturas/13-1.png`)
    * `1921 Estimación Facturas por Cobrar - Relacionadas`
      * `19210 Estimación Facturas por Cobrar - Relacionadas`
    * `1922 Estimación Letras por Cobrar - Relacionadas`
      * `19220 Estimación Letras por Cobrar - Relacionadas`
  * `193 Estimación Ctas X Cobrar Personal, Acc, Dir y Gtes` (`capturas/13-1.png`)
    * `1931 Estimación Cuentas por Cobrar Personal`
      * `19310 Estimación Cuentas por Cobrar Personal`
    * `1932 Estimación de Cuentas por Cobrar Accionistas`
      * `19320 Estimación de Cuentas por Cobrar Accionistas`
    * `1933 Estimación de Cuentas por Cobrar Directores`
      * `19330 Estimación de Cuentas por Cobrar Directores`
    * `1934 Estimación de Cuentas por Cobrar Gerentes`
      * `19340 Estimación de Cuentas por Cobrar Gerentes`
    * `1938 Estimación de Cuentas por Cobrar Diversas`
      * `19380 Estimación de Cuentas por Cobrar Diversas`
  * `194 Estimación Ctas X Cobrar Diversas Terceros` (`capturas/13-1.png`)
    * `1941 Estimación Préstamos a Terceros`
      * `19410 Estimación Préstamos a Terceros`
    * `1942 Estimación Reclamaciones a Terceros`
      * `19420 Estimación Reclamaciones a Terceros`
    * `1943 Estimación Int, Regalías, Dividendos Terceros`
      * `19430 Estimación Int, Regalías, Dividendos Terceros`
    * `1944 Estimación Depósitos Otorgados en Grtía Terceros`
      * `19440 Estimación Depósitos Otorgados en Grtía Terceros`
    * `1945 Estimación Venta de Activos Inmovilizados Terceros`
      * `19450 Estimación Venta de Activos Inmovilizados Terceros`
    * `1946 Estimación Venta de Activos Instrum Finan Terceros`
      * `19460 Estimación Venta de Activos Instrum Finan Terceros`
    * `1949 Estimación Otras Cuentas por Cobrar Terceros`
      * `19490 Estimación Otras Cuentas por Cobrar Terceros`
  * `195 Estimación Ctas X Cobrar Diversas Relacionadas` (`capturas/13-2.png`)
    * `1951 Estimación Relacionadas Préstamos`
      * `19510 Estimación Relacionadas Préstamos`
    * `1953 Estimación Relacionadas Intereses, Regalías y Divi`
      * `19530 Estimación Relacionadas Intereses, Regalías y Divi`
    * `1954 Estimación Relacionadas Depósitos Otorgados en Gar`
      * `19540 Estimación Relacionadas Depósitos Otorgados en Gar`
    * `1955 Estimación Relacionadas Venta Activo Inmovilizado`
      * `19550 Estimación Relacionadas Venta Activo Inmovilizado`
    * `1956 Estimación Relacionadas Activo x Instrumentos Fina`
      * `19560 Estimación Relacionadas Activo x Instrumentos Fina`
    * `1958 Estimación Relacinadas Otras Cuentas x Cobrar Div` *(errata literal ERP: "Relacinadas")*
      * `19580 Estimación Relacinadas Otras Cuentas x Cobrar Div`
