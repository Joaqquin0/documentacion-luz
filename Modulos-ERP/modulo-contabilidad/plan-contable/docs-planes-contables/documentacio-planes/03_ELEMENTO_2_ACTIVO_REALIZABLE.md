# Elemento 2: Activo Realizable (Inventarios / Existencias)

Comprende los bienes que posee la empresa destinados a la venta en el curso ordinario del negocio (mercaderías, productos terminados), los bienes que se encuentran en proceso de producción o transformación, las materias primas, insumos y suministros auxiliares para ser consumidos en la fabricación o prestación de servicios, los activos no corrientes puestos en venta y las correcciones por desvalorización de inventarios.

---

## 1. Cuenta 20: Mercaderías
**Origen**: `capturas/14.png`  
**Definición**: Bienes adquiridos por la empresa para ser comercializados o revendidos a terceros en el mismo estado en que se adquirieron, sin someterse a ningún proceso productivo de transformación sustancial.

### Estructura Literal del ERP:
* `20 MERCADERIAS`
  * `201 Mercaderías Manufacturadas`
    * `2011 Mercaderías Manufacturadas`
      * `20111 Mercadería Manufacturada - Costo`
      * `20112 Mercadería Manufacturada - Valor Razonable`
  * `202 Mercaderías de Extracción`
    * `2020 Mercaderías de Extracción`
      * `20200 Mercaderías de Extracción`
  * `203 Mercaderías Agropecuarias y Piscícolas`
    * `2031 Mercadería de Origen Animal`
      * `20310 Mercadería de Origen Animal`
    * `2032 Mercadería de Origen Vegetal`
      * `20320 Mercadería de Origen Vegetal`
  * `204 Mercaderías Inmuebles`
    * `2040 Mercaderías Inmuebles`
      * `20400 Mercaderías Inmuebles`
  * `208 Otras Mercaderías`
    * `2080 Otras Mercaderías`
      * `20800 Otras Mercaderías`

---

## 2. Cuenta 21: Productos Terminados
**Origen**: `capturas/15.png`  
**Definición**: Bienes resultantes de los procesos de fabricación o transformación propios de la entidad, aptos y disponibles para su entrega comercial a clientes.

### Estructura Literal del ERP:
* `21 PRODUCTOS TERMINADOS`
  * `211 Productos Manufacturados Terminados`
    * `2110 Productos Manufacturados Terminados`
      * `21100 Productos Manufacturados Terminados`
  * `212 Productos de Extracción Terminados`
    * `2120 Productos de Extracción Terminados`
      * `21200 Productos de Extracción Terminados`
  * `213 Productos Agropecuarios y Piscícolas Terminados`
    * `2131 Productos Terminados de Origen Animal`
      * `21311 Prod Terminado de Origen Animal al Costo`
      * `21312 Prod Terminado de Origen Animal a Valor Razonable`
    * `2132 Productos Terminados de Origen Vegetal`
      * `21321 Prod Terminado de Origen Vegetal al Costo`
      * `21322 Prod Terminado de Origen Vegetal a Valor Razonable`
  * `214 Productos Inmuebles Terminados`
    * `2140 Productos Inmuebles Terminados`
      * `21400 Productos Inmuebles Terminados`
  * `215 Existencias de Servicios Terminados`
    * `2150 Existencias de Servicios Terminados`
      * `21500 Existencias de Servicios Terminados`
  * `217 Otros Productos Terminados`
    * `2170 Otros Productos Terminados`
      * `21700 Otros Productos Terminados`
  * `218 Costos de Financiación Productos Terminados`
    * `2180 Costos de Financiación Productos Terminados`
      * `21800 Costos de Financiación Productos Terminados`

---

## 3. Cuenta 22: Subproductos, Desechos y Desperdicios
**Origen**: `capturas/15.png`  
**Definición**: Productos accesorios o sobrantes derivados del proceso de producción principal que poseen un valor comercial residual vendible.

### Estructura Literal del ERP:
* `22 SUB PRODUCTOS, DESECHOS Y DESPERDICIOS`
  * `221 Subproductos`
    * `2210 Subproductos`
      * `22100 Subproductos`
  * `222 Desechos y Desperdicios`
    * `2220 Desechos y Desperdicios`
      * `22200 Desechos y Desperdicios`

---

## 4. Cuenta 23: Productos en Proceso
**Origen**: `capturas/16.png`  
**Definición**: Bienes que están en fase de transformación en las líneas de ensamble o fabricación al cierre contable y que aún no están concluidos.

### Estructura Literal del ERP:
* `23 PRODUCTOS EN PROCESO`
  * `231 Productos en Proceso de Manufactura`
    * `2310 Productos en Proceso de Manufactura`
      * `23100 Productos en Proceso de Manufactura`
  * `232 Productos Extraidos en Proceso de Transformación`
    * `2320 Productos Extraidos en Proceso de Transformación`
      * `23200 Productos Extraidos en Proceso de Transformación`
  * `233 Productos Agropecuarios y Piscicolas en Proceso`
    * `2331 Productos de Origen Animal en Proceso`
      * `23311 Prod de Origen Animal en Proceso al Costo`
      * `23312 Prod de Origen Animal en Proceso a Valor Razonable`
    * `2332 Productos de Origen Vegetal en Proceso`
      * `23321 Prod de Origen Vegetal en Proceso al Costo`
      * `23322 Prod de Origen Vegetal en Proceso a Valor Razonabl`
  * `234 Productos Inmuebles en Proceso`
    * `2340 Productos Inmuebles en Proceso`
      * `23400 Productos Inmuebles en Proceso`
  * `235 Existencias de Servicios en Proceso`
    * `2350 Existencias de Servicios en Proceso`
      * `23500 Existencias de Servicios en Proceso`
  * `237 Otros Productos en Proceso`
    * `2370 Otros Productos en Proceso`
      * `23700 Otros Productos en Proceso`
  * `238 Costos de Financiación Productos en Proceso`
    * `2380 Costos de Financiación Productos en Proceso`
      * `23800 Costos de Financiación Productos en Proceso`

---

## 5. Cuenta 24: Materias Primas
**Origen**: `capturas/16.png` y `capturas/17.png` *(Continuidad implícita: la subcuenta 244 se corta al pie de 16.png y se despliega al inicio de 17.png)*  
**Definición**: Insumos y materiales principales que ingresan directamente en la transformación física de los productos manufacturados o construidos.

### Estructura Literal del ERP:
* `24 MATERIAS PRIMAS`
  * `241 Materias Primas Para Productos Manufacturados`
    * `2410 Materias Primas Para Productos Manufacturados`
      * `24100 Materias Primas Para Productos Manufacturados`
  * `242 Materias Primas Para Productos de Extracción`
    * `2420 Materias Primas Para Productos de Extracción`
      * `24200 Materias Primas Para Productos de Extracción`
  * `243 Materias Primas Para Productos Agropec y Piscicola`
    * `2430 Materias Primas Para Productos Agropec y Piscicola`
      * `24300 Materias Primas Para Productos Agropec y Piscicola`
  * `244 Materias Primas Para Productos Inmuebles`
    * `2440 Materias Primas Para Productos Inmuebles`
      * `24400 Materias Primas Para Productos Inmuebles`

---

## 6. Cuenta 25: Materiales Auxiliares, Suministros y Repuestos
**Origen**: `capturas/17.png`  
**Definición**: Insumos indirectos no identificables pieza a pieza, repuestos para maquinaria, lubricantes, consumibles de mantenimiento biomédico y fábrica.

### Estructura Literal del ERP:
* `25 MATERIALES AUXILIARES, SUMINISTROS Y REPUESTOS`
  * `251 Materiales Auxiliares`
    * `2510 Materiales Auxiliares`
      * `25100 Materiales Auxiliares`
  * `252 Suministros`
    * `2521 Suministros`
      * `25210 Suministros`
    * `2522 2522 APERTURA`
      * `25220 25220 APERTURA`
    * `2524 Otros Suministros`
      * `25240 Otros Suministros`
  * `253 Repuestos`
    * `2530 Repuestos`
      * `25300 Repuestos`
  * `255 Materiales para Mant. De Equupos medicos`
    * `2550 Materiales para Mant. De Equupos medicos`
      * `25500 Materiales para Mant. De Equupos medicos`

---

## 7. Cuenta 26: Envases y Embalajes
**Origen**: `capturas/17.png`  
**Definición**: Recipientes primarios o secundarios para contener, proteger y transportar las existencias producidas o comercializadas.

### Estructura Literal del ERP:
* `26 ENVASES Y EMBALAJES`
  * `261 Envases`
    * `2610 Envases`
      * `26100 Envases`
  * `262 Embalajes`
    * `2620 Embalajes`
      * `26200 Embalajes`

---

## 8. Cuenta 27: Activos No Corrientes Mantenidos para la Venta
**Origen**: `capturas/17.png`, `capturas/18.png`, `capturas/19.png`, `capturas/20.png` y `capturas/21.png`  
*(Flujo continuo implícito extenso de 5 capturas correlativas que documentan la NIIF 5).*  
**Definición**: Activos inmovilizados cuyo valor en libros se recuperará mediante su enajenación dentro de los próximos doce meses en lugar de por su uso continuado.

### Estructura Literal del ERP:
* `27 ACTIVOS NO CORRIENTES MANTENIDOS PARA LA VENTA`
  * `271 Inversiones Inmobiliarias Para la Venta` (`capturas/17.png`)
    * `2711 Inversiones en Terrenos Para la Venta`
      * `27111 Inversiones en Terrenos Para Venta - Valor Razonab`
      * `27112 Inversiones en Terrenos Para Venta - Costo`
      * `27113 Inversiones en Terrenos Para Venta - Revaluación`
    * `2712 Inversiones Edificaciones Para la Venta`
      * `27121 Inversiones Edificaciones Para Venta - Valor Razon`
      * `27122 Inversiones Edificaciones Para Venta - Costo`
      * `27123 Inversiones Edificaciones Para Venta - Revelación`
      * `27124 Inversiones Edificaciones Para Venta - Costo Finan`
  * `272 Inmuebles, Maquinaria y Equipos Para la Venta` (`capturas/18.png`)
    * `2721 Terrenos Para la Venta`
      * `27211 Terrenos Para la Venta - Valor Razonable`
      * `27212 Terrenos Para la Venta - Costo`
      * `27213 Terrenos Para la Venta - Revaluación`
    * `2722 Edificaciones Para la Venta`
      * `27221 Edificaciones Para la Venta - Costo de Adquisición`
      * `27222 Edificaciones Para la Venta - Revaluación`
      * `27223 Edificaciones Para la Venta - Costo Financiación`
    * `2723 Maquinaria y Equipo de Explotación Para la Venta`
      * `27231 Maq y Equipo de Explot Para Venta - Costo Adquisic`
      * `27232 Maq y Equipo de Explot Para Venta - Revaluación`
      * `27233 Maq y Equipo de Explot Para Venta - Costo Financia`
    * `2724 Equipo de Transporte Para la Venta`
      * `27241 Equipo de Transporte Para la Venta - Costo`
      * `27242 Equipo de Transporte Para la Venta - Revaluación`
    * `2725 Muebles y Enseres Para la Venta`
      * `27251 Muebles y Enseres Para la Venta - Costo`
      * `27252 Muebles y Enseres Para la Venta - Revaluación`
    * `2726 Equipos Diversos Para la Venta`
      * `27261 Equipos Diversos Para la Venta - Costo`
      * `27262 Equipos Diversos Para la Venta - Revaluación`
    * `2727 Herramientas y Unidades de Reemplazo Para la Venta`
      * `27271 Herram y Unid de Reemp Para Venta - Costo`
      * `27272 Herram y Unid de Reemp Para Venta - Revaluación`
  * `273 Intangibles` (`capturas/18.png` y `19.png`)
    * `2731 Concesiones, Licencias y Derechos Para la Venta`
      * `27311 Conces, Licen y Dere Para Venta - Costo`
      * `27312 Conces, Licen y Dere Para Venta - Revaluación`
    * `2732 Patentes y Propiedad Industrial Para la Venta`
      * `27321 Patentes y Propiedad Ind Para Venta - Costo`
      * `27322 Patentes y Propiedad Ind Para Venta - Revaluación`
    * `2733 Programas de Computador (Software) Para la Venta`
      * `27331 Programas de Comp (Software) Para Venta - Costo`
      * `27332 Programas de Comp (Software) Para Venta - Revaluac`
    * `2734 Costos de Explotación y Desarrollo Para la Venta`
      * `27341 Costos de Explot y Desarrollo Para Venta - Costo`
      * `27342 Costos de Explot y Desarrollo Para Venta - Revalua`
    * `2735 Fórmulas, Diseños y Prototípos Para la Venta` (`capturas/19.png`)
      * `27351 Fórm, Diseños y Prototípos Para Venta - Costo`
      * `27352 Fórm, Diseños y Prototípos Para Venta - Revaluació`
    * `2736 Reservas de Recursos Extraibles Para la Venta`
      * `27361 Reservas de Recursos Extraibles Para Venta - Costo`
      * `27362 Reservas de Recursos Extraibles Para Venta - Reval`
    * `2739 Otros Activos Intangibles Para la Venta`
      * `27391 Otros Activos Intangibles Para la Venta - Costo`
      * `27392 Otros Activos Intangibles Para la Venta - Revaluac`
  * `274 Activos Biológicos Para la Venta` (`capturas/19.png`)
    * `2741 Activos Biológicos en Producción Para la Venta`
      * `27411 Act Biológ en Prod Para Venta - Valor Razonable`
      * `27412 Act Biológ en Prod Para Venta - Costo`
      * `27413 Act Biológ en Prod Para Venta - Costo Financiación`
    * `2742 Activos Biológicos en Desarrollo Para la Venta`
      * `27421 Act Biológ en Desa Para Venta - Valor Razonable`
      * `27422 Act Biológ en Desa Para Venta - Costo`
      * `27423 Act Biológ en Desa Para Venta - Revaluación`
  * `275 Dep Acum - Inversión Inmobiliaria Para Venta` (`capturas/19.png`)
    * `2752 Dep Acum - Inv Inmob Edificaciones Para Venta`
      * `27521 Dep Acum - Inv Inmob Edific Para Vta - Valor Razon`
      * `27522 Dep Acum - Inv Inmob Edific Para Vta - Costo`
      * `27523 Dep Acum - Inv Inmob Edific Para Vta - Revaluación`
  * `276 Dep Acum - Inmuebles, Maq y Equipo Para Venta` (`capturas/19.png` y `20.png`)
    * `2762 Dep Acum - Edificaciones Para Venta`
      * `27621 Dep Acum - Edificaciones Para Venta - Costo Adquis`
      * `27622 Dep Acum - Edificaciones Para Venta - Revaluación`
      * `27623 Dep Acum - Edificaciones Para Venta - Costo Finan`
    * `2763 Dep Acum - Maq y Equipo de Explotación Para Venta`
      * `27631 Dep Acum - Maq y Eq de Exp Para Venta - Costo Adq`
      * `27632 Dep Acum - Maq y Eq de Exp Para Venta - Revaluació`
      * `27633 Dep Acum - Maq y Eq de Exp Para Venta - Costo Fina`
    * `2764 Dep Acum - Equipo de Transporte Para Venta`
      * `27641 Dep Acum - Equipo de Transp Para Venta - Costo`
      * `27642 Dep Acum - Equipo de Transp Para Venta - Revaluaci`
    * `2765 Dep Acum - Muebles y Enseres Para Venta`
      * `27651 Dep Acum - Mueb y Enseres Para Venta - Costo`
      * `27652 Dep Acum - Mueb y Enseres Para Venta - Revaluación`
    * `2766 Dep Acum - Equipos Diversos Para Venta` (`capturas/20.png`)
      * `27661 Dep Acum - Equipos Diversos Para Venta - Costo`
      * `27662 Dep Acum - Equipos Diversos Para Venta - Revaluaci`
    * `2767 Dep Acum - Herram y Unid de Reemp Para Venta`
      * `27671 Dep Acum - Herr y Unid Reemp Para Venta - Costo`
      * `27672 Dep Acum - Herr y Unid Reemp Para Venta - Revaluac`
  * `277 Dep Acum - Intangibles Para Venta` (`capturas/20.png`)
    * `2771 Dep Acum - Conc, Licencias y Derechos Para Venta`
      * `27711 Dep Acum - Conc, Lic y Derechos Para Venta - Costo`
      * `27712 Dep Acum - Conc, Lic y Derechos Para Venta - Reval`
    * `2772 Dep Acum - Patentes y Propiedad Indust Para Venta`
      * `27721 Dep Acum - Patent y Prop Indust Para Venta - Costo`
      * `27722 Dep Acum - Patent y Prop Indust Para Venta - Reval`
    * `2773 Dep Acum - Programa Comput (Software) Para Venta`
      * `27731 Dep Acum - Prog Comp (Software) Para Venta - Costo`
      * `27732 Dep Acum - Prog Comp (Software) Para Venta - Reval`
    * `2774 Dep Acum - Costos de Exploración y Desa Para Venta`
      * `27741 Dep Acum - Cost Explor y Desa Para Venta - Costo`
      * `27742 Dep Acum - Cost Explor y Desa Para Venta - Revalua`
    * `2775 Dep Acum - Fórmulas, Diseños y Prototip Para Venta`
      * `27751 Dep Acum - Fórm, Dis y Prot Para Venta - Costo`
      * `27752 Dep Acum - Fórm, Dis y Prot Para Venta - Revaluaci`
    * `2776 Dep Acum - Reservas de Recursos Extraib Para Venta`
      * `27761 Dep Acum - Reser Rec Extraib Para Venta - Costo`
      * `27762 Dep Acum - Reser Rec Extraib Para Venta - Revaluac`
    * `2779 Dep Acum - Otros Activos Intangibles Para Venta`
      * `27791 Dep Acum - Otros Act Intan Para Venta - Costo`
      * `27792 Dep Acum - Otros Act Intan Para Venta - Revaluació`
  * `278 Dep Acum - Activos Biológicos Para Venta` (`capturas/20.png`)
    * `2781 Dep Acum - Activos Biológicos en Poduc Para Venta`
      * `27812 Dep Acum - Act Biológ en Prod Para Venta - Costo`
    * `2782 Dep Acum - Activos Biológicos en Desarr Para Venta`
      * `27822 Dep Acum - Act Biológ en Desarr Para Venta - Costo`
  * `279 Desvalorización Acumulada Activos Para la Venta` (`capturas/21.png`)
    * `2791 Desval Acum Inversiones Inmobiliaria Para Venta`
      * `27911 Desval Acum Inv Inmob Para Venta - Terrenos`
      * `27912 Desval Acum Inv Inmob Para Venta - Edificaciones`
    * `2793 Desval Acum Inmuebles Maq y Equipo Para Venta`
      * `27931 Desval Acum Terrenos Para Venta`
      * `27932 Desval Acum Edificaiones Para Venta`
      * `27933 Desval Acum Maquinaria y Equipo Para Venta`
      * `27934 Desval Acum Equipo de Transporte Para Venta`
      * `27935 Desval Acum Muebles y Enseres Para Venta`
      * `27936 Desval Acum Equipos Diversos Para Venta`
      * `27937 Desval Acum Herram y Unid de Reemp Para Venta`
    * `2794 Desval Acum Intangibles Para Venta`
      * `27941 Desval Acum Conc, Lic y Otros Derechos Para Venta`
      * `27942 Desval Acum Patentes y Propiedad Indust Para Venta`
      * `27943 Desval Acum Prog de Comp (Software) Para Venta`
      * `27944 Desval Acum Costos de Explor y Desa Para Venta`
      * `27945 Desval Acum Fórmulas, Diseños y Prototi Para Venta`
      * `27946 Desval Acum Reservas Recursos Extraible Para Venta`
    * `2795 Desval Acum Activos Biológicos Para Venta`
      * `27951 Desval Acum Act Biológ en Prod Para Venta`
      * `27952 Desval Acum Act Biológ en Desa Para Venta`

---

## 9. Cuenta 28: Existencias por Recibir
**Origen**: `capturas/22.png`  
**Definición**: Mercaderías, insumos y materiales adquiridos sobre los cuales ya se asumieron riesgos de propiedad (términos FOB/CIF) pero que continúan en tránsito hacia los almacenes.

### Estructura Literal del ERP:
* `28 EXISTENCIAS POR RECIBIR`
  * `281 Mercaderías por Recibir`
    * `2810 Mercaderías por Recibir`
      * `28100 Mercaderías por Recibir`
  * `284 Materias Primas por Recibir`
    * `2840 Materias Primas por Recibir`
      * `28400 Materias Primas por Recibir`
  * `285 Materiales Auxil, Suminist y Repuestos por Recibir`
    * `2850 Materiales Auxil, Suminist y Repuestos por Recibir`
      * `28500 Materiales Auxil, Suminist y Repuestos por Recibir`
  * `286 Envases y Embalajes por Recibir`
    * `2860 Envases y Embalajes por Recibir`
      * `28600 Envases y Embalajes por Recibir`

---

## 10. Cuenta 29: Desvalorización de Existencias
**Origen**: `capturas/23-1.png`, `capturas/23-2.png` y `capturas/23-3.png` *(Flujo continuo explícito `23-1` -> `23-2` -> `23-3`)*  
**Definición**: Cuenta correctora de activo (saldo acreedor) que refleja el castigo contable por obsolescencia, daño o cuando el Valor Neto Realizable (VNR) es inferior al costo histórico (NIC 2).

### Estructura Literal del ERP:
* `29 DESVALORIZACION DE EXISTENCIAS`
  * `291 Desvalorización Mercaderías` (`capturas/23-1.png`)
    * `2911 Desvalorización Mercaderías Manufacturadas`
      * `29110 Desvalorización Mercaderías Manufacturadas`
    * `2912 Desvalorización Mercaderías de Extracción`
      * `29120 Desvalorización Mercaderías de Extracción`
    * `2913 Desvalorización Mercaderías Agropec y Piscícolas`
      * `29130 Desvalorización Mercaderías Agropec y Piscícolas`
    * `2914 Desvalorización Mercaderías Inmuebles`
      * `29140 Desvalorización Mercaderías Inmuebles`
    * `2918 Desvalorización Otras Mercaderías`
      * `29180 Desvalorización Otras Mercaderías`
  * `292 Desvalorización Productos Terminados` (`capturas/23-1.png`)
    * `2921 Desvalorización Productos Manufacturados`
      * `29210 Desvalorización Productos Manufacturados`
    * `2922 Desvalorización Productos de Extracción Terminados`
      * `29220 Desvalorización Productos de Extracción Terminados`
    * `2923 Desvalorización Prod Agropec y Piscolas Terminados`
      * `29230 Desvalorización Prod Agropec y Piscolas Terminados`
    * `2924 Desvalorización Productos Inmuebles`
      * `29240 Desvalorización Productos Inmuebles`
    * `2925 Desvalorización Existencias de Servicios Terminado`
      * `29250 Desvalorización Existencias de Servicios Terminado`
    * `2927 Desvalorización de Otros Productos Terminados`
      * `29270 Desvalorización de Otros Productos Terminados`
    * `2928 Desvalorización Costo de Finan Productos Terminado`
      * `29280 Desvalorización Costo de Finan Productos Terminado`
  * `293 Desvalorizació Sub Productos, Desechos y Desperdic` (`capturas/23-1.png`)
    * `2931 Desvalorización Subproductos`
      * `29310 Desvalorización Subproductos`
    * `2932 Desvalorización Desechos y Desperdicios`
      * `29320 Desvalorización Desechos y Desperdicios`
  * `294 Desvalorización Productos en Proceso` (`capturas/23-2.png`)
    * `2941 Desvalorización Prod en Proceso de Manufactura`
      * `29410 Desvalorización Prod en Proceso de Manufactura`
    * `2942 Desvalorización Prod Extraidos Proceso de Transfor`
      * `29420 Desvalorización Prod Extraidos Proceso de Transfor`
    * `2943 Desvalorización Prod Agropec y Piscicola Proceso`
      * `29430 Desvalorización Prod Agropec y Piscicola Proceso`
    * `2944 Desvalorización Prod Inmuebles en Proceso`
      * `29440 Desvalorización Prod Inmuebles en Proceso`
    * `2945 Desvalorización Existencias de Servicios Proceso`
      * `29450 Desvalorización Existencias de Servicios Proceso`
    * `2947 Desvalorización Otros Productos en Proceso`
      * `29470 Desvalorización Otros Productos en Proceso`
    * `2948 Desvalorización Costo de Finan Prod en Proceso`
      * `29480 Desvalorización Costo de Finan Prod en Proceso`
  * `295 Desvalorización Materias Primas` (`capturas/23-2.png`)
    * `2951 Desvalorización Mat Prima Para Prod Manufacturados`
      * `29510 Desvalorización Mat Prima Para Prod Manufacturados`
    * `2952 Desvalorización Mat Prima Para Prod de Extracción`
      * `29520 Desvalorización Mat Prima Para Prod de Extracción`
    * `2953 Desvalorización Mat Prima Para Prod Agropec y Pisc`
      * `29530 Desvalorización Mat Prima Para Prod Agropec y Pisc`
    * `2954 Desvalor Mat Prima Para Prod Inmuebles`
      * `29540 Desvalor Mat Prima Para Prod Inmuebles`
  * `296 Desvalorización Mat Auxil Suminist y Repuestos` (`capturas/23-2.png`)
    * `2961 Desvalorización Materiales Auxiliares`
      * `29610 Desvalorización Materiales Auxiliares`
    * `2962 Desvalorización Suministros`
      * `29620 Desvalorización Suministros`
    * `2963 Desvalorización Repuestos`
      * `29630 Desvalorización Repuestos`
  * `297 Desvalorización Envases y Embalajes` (`capturas/23-2.png`)
    * `2971 Desvalorización Envases`
      * `29710 Desvalorización Envases`
    * `2972 Desvalorización Embalajes`
      * `29720 Desvalorización Embalajes`
  * `298 Desvalorización Existencias por Recibir` (`capturas/23-3.png`)
    * `2981 Desvalorización Mercaderías por Recibir`
      * `29810 Desvalorización Mercaderías por Recibir`
    * `2982 Desvalorización Materias Primas por Recibir`
      * `29820 Desvalorización Materias Primas por Recibir`
    * `2983 Desvalorización Mat Auxil Suminist y Rep por Recib`
      * `29830 Desvalorización Mat Auxil Suminist y Rep por Recib`
    * `2984 Desvalorización Envases y Embalajes por Recibir`
      * `29840 Desvalorización Envases y Embalajes por Recibir`
