# Elemento 5: Patrimonio Neto

Representa la parte residual de los activos de la empresa, una vez deducidos todos sus pasivos. Comprende las aportaciones de los propietarios (socios o accionistas), el capital adicional, las acciones de inversión (ex acciones laborales), los resultados no realizados acumulados en el Otro Resultado Integral (ORI), los excedentes de revaluación de activos inmovilizados, las reservas legales, estatutarias o facultativas y los resultados acumulados (utilidades no distribuidas o pérdidas de ejercicios anteriores).

---

## 1. Cuentas 50 y 51: Capital y Acciones de Inversión
**Origen**: `capturas/39-2.png`  
**Definición**:
- **Cuenta 50**: Aportes dinerarios o en especie de los accionistas o socios formalizados mediante escritura pública e inscritos en el Registro de Personas Jurídicas (Registros Públicos / SUNARP).
- **Cuenta 51**: Títulos de participación patrimonial sin derecho a voto creados originalmente como títulos laborales (Ley de Participación Laboral).

### Estructura Jerárquica y Desglose:
* **`50 CAPITAL`**:
  * **`501 Capital Social`**:
    * `5011 Acciones` -> `50110 Acciones`: Capital social dividido en acciones representativas (Sociedades Anónimas).
    * `5012 Participaciones` -> `50120 Participaciones`: Capital de Sociedades de Responsabilidad Limitada (SRL) o Civiles.
  * **`502 Acciones en Tesorería`** -> `5020` -> `50200`: Títulos de capital propio readquiridos por la empresa (saldo deudor que reduce el patrimonio).
* **`51 ACCIONES DE INVERSION`**:
  * `511 Acciones de Inversión` -> `5110` -> `51100`: Títulos con derecho preferente a dividendos pero sin voto en asambleas.
  * `512 Acciones de Inversión en Tesorería` -> `5120` -> `51200`: Acciones de inversión rescatadas o recompradas por la entidad (saldo deudor).

---

## 2. Cuenta 52: Capital Adicional
**Origen**: `capturas/40-1.png`  
**Definición**: Aportaciones de recursos patrimoniales efectuadas por socios o terceros que aún no se encuentran formalizadas notarialmente como aumentos de capital, primas de emisión sobre la par o acuerdos de reducción de capital en trámite.

### Estructura Jerárquica y Desglose:
* **`521 Primas (Descuentos) de Acciones`** -> `5210` -> `52100`: Sobreprecio o diferencial pagado por nuevos socios por encima o por debajo del valor nominal del título.
* **`522 Capitalización en Trámite`**: Fondos aprobados por Junta General para aumento de capital mientras se culmina la inscripción registral:
  * `5221 Aportes Capitalización en Trámite` -> `52210` (Nuevas inyecciones de fondos).
  * `5222 Reservas Capitalización en Trámite` -> `52220` (Traspaso de reservas a capital).
  * `5223 Acreencias Capitalización en Trámite` -> `52230` (Capitalización de deudas o préstamos con acreedores).
  * `5224 Utilidades Capitalización en Trámite` -> `52240` (Reinversión de utilidades operativas).
* **`523 Reducciones Pendientes de Formalización`** -> `5230` -> `52300`: Devoluciones de aportes o amortizaciones de capital acordadas en proceso de publicación y registro (saldo deudor).

---

## 3. Cuenta 56: Resultados No Realizados
**Origen**: `capturas/40-1.png`  
**Definición**: Ganancias o pérdidas patrimoniales derivadas de cambios en el valor razonable que, de acuerdo con las NIIF (NIIF 9, NIC 21, NIC 39), no deben imputarse a los resultados del ejercicio hasta que el activo o pasivo se enajene o cancele efectivamente (Otro Resultado Integral).

### Estructura Jerárquica y Desglose:
* `561 Dif Cambio de Inv Permanentes en Entidades Extranj` -> `5610` -> `56100`: Efecto por traslación de estados financieros de subsidiarias en el extranjero con moneda funcional distinta (NIC 21).
* `562 Instrumentos Financieros Cobertura de Flujo de Efe` -> `5620` -> `56200`: Porción eficaz de la variación de valor de derivados en coberturas de flujos de efectivo.
* `563 Gan o Pérd en Activ o Pas Finan Dispon para Venta`:
  * `5631 Ganancia en Activ o Pas Finan Dispon para Venta` -> `56310`
  * `5632 Pérdida en Activ o Pas Finan Dispon para Venta` -> `56320`

---

## 4. Cuenta 57: Excedente de Revaluación
**Origen**: `capturas/40-1.png` y `capturas/41.png` *(Continuidad implícita: la subcuenta 571 figura en 40-1.png y las subcuentas 572-573 se ubican al inicio de 41.png)*  
**Definición**: Incremento en el valor en libros de bienes del activo inmovilizado derivado de tasaciones o valorizaciones a valor razonable realizadas por peritos independientes (NIC 16, NIC 38).

### Estructura Jerárquica y Desglose:
* **`571 Excedente de Revaluación`** (`capturas/40-1.png`):
  * `5711 Inversiones Inmobiliarias Excedente de Revaluación` -> `57110`
  * `5712 Inmuebles, Maquinaria y Equipo Excedente Revaluaci` -> `57120`
  * `5713 Intangibles Excedente de Revaluación` -> `57130`
* **`572 Excedente de Revaluación Acciones Liberadas Recibi`** (`capturas/41.png`):
  * `5720` -> `57200`: Mayor valor patrimonial por acciones recibidas sin costo originadas por revaluación en empresas donde se mantiene inversión.
* **`573 Particip en Excedente de Reval Inv en Relacionadas`** (`capturas/41.png`):
  * `5730` -> `57300`: Proporción que corresponde a la empresa por revaluaciones efectuadas por sus asociadas o subsidiarias bajo el método de la participación.

---

## 5. Cuenta 58: Reservas
**Origen**: `capturas/41.png`  
**Definición**: Fondos retenidos de las utilidades líquidas del ejercicio por disposición de la ley, de los estatutos de la empresa o por acuerdo facultativo de los accionistas, destinados a proteger el capital social frente a futuras pérdidas.

### Estructura Jerárquica y Desglose:
* `581 Reservas Reinversión` -> `5810` -> `58100`: Beneficios tributarios por reinversión en actividades productivas.
* `582 Reservas Legal` -> `5820` -> `58200`: Detracción obligatoria del 10% de la utilidad anual neta hasta alcanzar el 20% del capital social pagado (Ley General de Sociedades, Ley 26887).
* `583 Reservas Contractuales` -> `5830` -> `58300`: Retenciones pactadas contractualmente con terceros o entidades bancarias en contratos de crédito (covenants).
* `584 Reservas Estatutarias` -> `5840` -> `58400`: Retenciones mandatadas por los estatutos internos de la sociedad.
* `585 Reservas Facultativas` -> `5850` -> `58500`: Fondos de libre disposición retenidos por simple decisión de la asamblea de socios para planes futuros.
* `589 Otras Reservas` -> `5890` -> `58900`.

---

## 6. Cuenta 59: Resultados Acumulados
**Origen**: `capturas/41.png`  
**Definición**: Resultados netos de ejercicios anuales precedentes que no han sido distribuidos a los socios ni capitalizados, así como las correcciones de errores contables de años anteriores (NIC 8).

### Estructura Jerárquica y Desglose:
* **`591 Utilidades No Distribuidas`**:
  * `5911 Utilidades Acumuladas` -> `59110 Utilidades Acumuladas`: Ganancias líquidas históricas pendientes de distribución en dividendos.
  * `5912 Ingresos de Años Anteriores` -> `59120 Ingresos de Años Anteriores`: Reconocimiento extemporáneo de ingresos omitidos de ejercicios cerrados para no distorsionar el resultado del ejercicio en curso (NIC 8).
* **`592 Pérdidas Acumuladas`**:
  * `5921 Pérdidas Acumuladas` -> `59210 Pérdidas Acumuladas`: Quebrantos económicos acumulados que reducen el patrimonio neto.
  * `5922 Gastos de Años Anteriores` -> `59220 Gastos de Años Anteriores`: Regularización de pasivos o gastos no provisionados de ejercicios fenecidos (NIC 8).

