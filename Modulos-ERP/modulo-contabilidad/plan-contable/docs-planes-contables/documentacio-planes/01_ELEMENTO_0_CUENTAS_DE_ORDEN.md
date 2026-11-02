# Elemento 0: Cuentas de Orden (Deudoras y Acreedoras)

Las cuentas de orden registran operaciones, compromisos, contingencias y responsabilidades jurídicas que no afectan directamente la situación financiera ni los resultados económicos de la empresa en el presente, pero que podrían llegar a afectarla en el futuro o que requieren control y revelación en notas a los estados financieros.

- **Cuentas de Orden Deudoras**: Agrupan los derechos eventuales, bienes de terceros entregados o contingencias activas (Cuentas `01` a `03`, con contrapartida en la cuenta `04`).
- **Cuentas de Orden Acreedoras**: Agrupan los compromisos asumidos, bienes de terceros recibidos y contingencias pasivas (Cuentas `06` a `08`, con contrapartida en la cuenta `09`).

---

## 1. Cuenta 01: Bienes y Valores Entregados
**Origen**: `capturas/1.png`  
**Definición**: Controla los activos propios de la entidad que han sido cedidos temporalmente a terceros bajo modalidades de préstamo, custodia, garantía o consignación, manteniendo la empresa la propiedad jurídica pero no la tenencia física o disponibilidad inmediata.

### Estructura Jerárquica y Desglose:
* **`011 Bienes en Préstamo Custodia y No Capitalizables`**:
  * **`0111 Bienes Entregados en Préstamo`**  
    * `01110 Bienes Entregados en Préstamo`: Activos no monetarios cedidos en calidad de comodato o préstamo de uso a clientes o contratistas.
  * **`0112 Bienes Entregados en Custodia`**  
    * `01120 Bienes Entregados en Custodia`: Bienes depositados en almacenes generales de depósito o terceros para su resguardo sin transferencia de dominio.
* **`012 Valores y Bienes Entregados en Garantía`**: Activos comprometidos para respaldar deudas u obligaciones contractuales contraídas por la entidad.
  * `0121 Cartas Fianzas Entregadas en Garantía` -> `01210`
  * `0122 Cuentas por Cobrar Entregadas en Garantía` -> `01220` (ej. cesión de facturas en garantía crediticia).
  * `0123 Existencias Entregadas en Garantía` -> `01230` (warrants o prendas industriales).
  * `0124 Inversión Mobiliaria Entregadas en Garantía` -> `01240` (acciones o bonos pignorados).
  * `0125 Inversión Inmobiliaria Entregadas en Garantía` -> `01250` (hipotecas sobre inmuebles para renta).
  * `0126 Inmuebles Maquinaria y Equipo Entregadas en Garant` -> `01260` (hipotecas y prendas sobre activo fijo productivo).
  * `0127 Intangibles Entregados en Garantía` -> `01270` (marcas o patentes otorgadas en prenda).
  * `0128 Activos Biológicos Entregados en Garantía` -> `01280` (ganado o plantaciones prendadas).
* **`013 Activos Realizables Entregados en Consignación`**:
  * `0130 Activos Realizables Entregados en Consignación` -> `01300`: Mercaderías remitidas a comisionistas o puntos de venta de terceros cuya venta no se ha perfeccionado.

---

## 2. Cuenta 02: Derechos sobre Instrumentos Financieros Derivados
**Origen**: `capturas/2.png`  
**Definición**: Registra los derechos contractuales y posiciones teóricas que la empresa asume al contratar instrumentos derivados (cobertura o especulación) o derivados implícitos en instrumentos primarios.

### Estructura Jerárquica y Desglose:
* **`021 Derechos Sobre Instrumentos Financieros Primarios`**:
  * `0211 Derechos Sobre Inv Mantenidas Para Negociación` -> `02110`
  * `0212 Derechos Sobre Inv Disponibles Para la Venta` -> `02120`
  * `0213 Derechos Sobre Inv a Ser Mantenidas Hasta el Vto` -> `02130`
* **`022 Derechos Sobre Instrumentos Financieros Derivados`**:
  * `0221 Derechos Sobre Contratos a Futuro` -> `02210`: Derechos adquiridos en mercados organizados a plazo.
  * `0222 Derechos Sobre Contratos a Término (Forward)` -> `02220`: Derechos pactados en mercados extrabursátiles (OTC) para compra/venta de divisas o commodities.
  * `0223 Derechos Sobre Permutas Financieras (SWAP)` -> `02230`: Derechos pactados de intercambio de flujos de intereses o monedas.
  * `0224 Derechos Sobre Contratos de Opción` -> `02240`: Derechos adquiridos mediante primas de compra (Call) o venta (Put).

---

## 3. Cuenta 03: Otras Cuentas de Orden Deudoras
**Origen**: `capturas/2.png`  
**Definición**: Agrupa conceptos de control administrativo sobre contratos civiles y mercantiles aprobados y bienes siniestrados o retirados de libros contables para su seguimiento fiscal o legal.

### Estructura Jerárquica y Desglose:
* **`031 Contratos Aprobados Cuenta Deudora`**:
  * `0311 Contratos de Ejecución Cuenta Deudora` -> `03110`: Contratos de obra o servicios firmados en fase activa de cumplimiento.
  * `0312 Contratos en Trámite Cuenta Deudora` -> `03120`: Licitaciones ganadas o acuerdos en formalización notarial/financiera.
* **`032 Bienes Dados de Baja`**:
  * `0321 Suministros Dados de Baja` -> `03210`: Materiales desechados por obsolescencia o daño.
  * `0322 Inmuebles Maquinara y Equipo Dados de Baja` -> `03220`: Activo fijo totalmente depreciado o siniestrado en proceso de desguace/destrucción notarial.
* **`039 Cuentas de Orden Deudoras Diversas`**:
  * `0390 Cuentas de Orden Deudoras Diversas` -> `03900`: Control de contingencias activas varias (demandas ganadas en primera instancia, avales recibidos de clientes).

---

## 4. Cuenta 04: Cuentas de Orden Deudoras por Contra
**Origen**: `capturas/3.png`  
**Definición**: Cuenta de contrapartida acreedora para balancear por partida doble todos los asientos originados en las cuentas de orden deudoras (`01`, `02` y `03`).

### Estructura Jerárquica:
* `040 Cuentas De Orden Deudoras por Contra` -> `0400` -> `04000`: Mantiene exactamente el saldo simétrico de las cuentas `01` a `03`.

---

## 5. Cuenta 06: Bienes y Valores Recibidos
**Origen**: `capturas/3.png`  
**Definición**: Controla los activos propiedad de terceros que han ingresado temporalmente a la custodia o administración de la entidad en virtud de contratos de préstamo, garantía prendaria, hipotecaria o consignación mercantil.

### Estructura Jerárquica y Desglose:
* **`061 Bienes Recibidos en Préstamo y Custodia`**:
  * `0611 Bienes Recibidos en Préstamo` -> `06110`
  * `0612 Bienes Recibidos en Custodia` -> `06120`
* **`062 Valores y Bienes Recibidos en Garantía`**: Respaldo recibido por deudas que clientes u otros mantienen a favor de la empresa.
  * `0621 Cartas Fianzas Recibidas en Garantía` -> `06210`
  * `0622 Cuentas por Cobrar Recibidas en Garantía` -> `06220`
  * `0623 Existencias Recibidas en Garantía` -> `06230`
  * `0624 Inversión Mobiliaria Recibida en Garantía` -> `06240`
  * `0625 Inversión Inmobiliaria Recibida en Garantía` -> `06250`
  * `0626 Inmuebles Maquinaria y Equipo Recibido en Garantía` -> `06260`
  * `0627 Intangibles Recibidos en Garantía` -> `06270`
  * `0628 Activos Biológicos Recibidos en Garantía` -> `06280`
* **`063 Activos Realizables Recibidos en Consignación`**:
  * `0630 Activos Realizables Recibidos en Consignación` -> `06300`: Mercaderías de terceros en el almacén de la empresa para ser vendidas a comisión.

---

## 6. Cuenta 07: Compromisos sobre Instrumentos Financieros Derivados
**Origen**: `capturas/4.png`  
**Definición**: Registra las obligaciones y pasivos teóricos asumidos por la empresa en contratos de derivados y compromisos primarios no reconocidos en el balance general.

### Estructura Jerárquica y Desglose:
* **`071 Compromisos Sobre Instumentos Financieros Primario`**:
  * `0711 Compromiso Sobre Inv Mantenidas Para Negociación` -> `07110`
  * `0712 Compromiso Sobre Inv Disponibles Para la Vta`:
    * > [!WARNING] **Error de Rotulado en Subdivisionaria**: La subdivisionaria está nombrada erróneamente en el sistema como `07120 Compromiso Sobre Inv Mantenidas Para Negociación`. Debe corregirse a `07120 Compromiso Sobre Inv Disponibles Para la Venta`.
  * `0713 Compromiso Sobre Inv a Ser Mantenidas Hasta el Vto` -> `07130`
* **`072 Compromisos Sobre Instumentos Financieros Derivado`**:
  * `0721 Compromisos Sebre Contratos a Futuro` (errata: "Sebre") -> `07210`
  * `0722 Compromiso Sobre Contratos a Término (Forward)` -> `07220`
  * `0723 Compromiso Sobre Permutas Financieras (SWAP)` -> `07230`
  * `0724 Compromiso Sobre Contratos de Opción` -> `07240`

---

## 7. Cuentas 08 y 09: Otras Cuentas de Orden Acreedoras y Contrapartida
**Origen**: `capturas/4.png`  
**Definición**: 
- La cuenta **`08`** controla responsabilidades y compromisos varios asumidos por la empresa frente a terceros (avales emitidos, litigios en contra no provisionables).
- La cuenta **`09`** es la contrapartida deudora que balancea por partida doble todas las cuentas de orden acreedoras (`06`, `07` y `08`).

### Estructura Jerárquica:
* `08 OTRAS CUENTAS DE ORDEN ACREEDORAS`:
  * `089 Cuentas de Orden Acreedoras Diversas` -> `0890` -> `08900`
* `09 CUENTAS DE ORDEN ACREEDORAS POR CONTRA`:
  * `090 Cuentas de Orden Acreedoras por Contra` -> `0900` -> `09000`

