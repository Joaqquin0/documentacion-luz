# Elemento 8: Saldos Intermediarios de Gestión y Determinación del Resultado del Ejercicio

Agrupa las cuentas de cierre anual utilizadas para determinar escalonadamente las distintas magnitudes económicas de la empresa (Margen Comercial, Producción, Valor Agregado, Excedente Bruto de Explotación, Resultado Operativo y Resultado Neto) antes del traslado definitivo a la cuenta 59 (Resultados Acumulados).

---

## 1. Cuenta 80: Margen Comercial
**Origen**: `capturas/62.png`  
**Definición**: Determina el beneficio bruto obtenido exclusivamente en las actividades comerciales de compra y venta de mercaderías (sin transformación).
* **Fórmula de Cierre**: `Ventas de Mercaderías (Cuenta 701) - [Compras de Mercaderías (Cuenta 601) ± Variación de Mercaderías (Cuenta 611)]`.
* **Estructura**: `801 Margen Comercial` -> `8010` -> `80100`.

---

## 2. Cuenta 81: Producción del Ejercicio
**Origen**: `capturas/62.png`  
**Definición**: Mide el valor de la actividad económica total generada por la empresa en manufactura, transformación, prestación de servicios y construcción de activos inmovilizados para uso propio.
* **Fórmula de Cierre**: `Venta de Bienes y Servicios (Cuentas 702, 703, 704) ± Variación de la Producción Almacenada (Cuenta 71) + Producción de Activos Inmovilizados (Cuenta 72)`.
* **Estructura**:
  * `811 Producción de Bienes` -> `8110` -> `81100`
  * `812 Producción de Servicios` -> `8120` -> `81200`
  * `813 Producción de Activos Inmovilizados` -> `8130` -> `81300`

---

## 3. Cuenta 82: Valor Agregado
**Origen**: `capturas/62.png`  
**Definición**: Mide la riqueza real generada por la entidad en el periodo que se añade a los bienes y servicios adquiridos del exterior.
* **Fórmula de Cierre**: `Margen Comercial (Cuenta 80) + Producción del Ejercicio (Cuenta 81) - [Consumo de Materias Primas, Auxiliares y Suministros (Cuentas 602, 603, 604 ± Cuentas 612, 613, 614) + Servicios Prestados por Terceros (Cuenta 63)]`.
* **Estructura**: `821 Valor Agregado` -> `8210` -> `82100`.

---

## 4. Cuenta 83: Excedente (Insuficiencia) Bruta de Explotación
**Origen**: `capturas/62.png`  
**Definición**: Mide el excedente económico generado por la empresa para retribuir a los factores de producción (capital propio, acreedores financieros y administraciones públicas), tras descontar las cargas de personal y los tributos directos.
* **Fórmula de Cierre**: `Valor Agregado (Cuenta 82) - Gastos de Personal (Cuenta 62) - Gastos por Tributos (Cuenta 64)`.
* **Estructura**: `831 Excedente (Insuficiencia) Bruta de Explotación` -> `8310` -> `83100`.

---

## 5. Cuenta 84: Resultado de Explotación
**Origen**: `capturas/62.png`  
**Definición**: Determina el resultado netamente operativo de la actividad principal del negocio (EBIT), incorporando los demás gastos e ingresos de gestión y las dotaciones de amortizaciones, provisiones y deterioro.
* **Fórmula de Cierre**: `Excedente Bruto (Cuenta 83) + Otros Ingresos de Gestión (Cuenta 75) + Ganancias por Valor Razonable (Cuenta 76) - Otros Gastos de Gestión (Cuenta 65) - Pérdidas por Valor Razonable (Cuenta 66) - Valuación y Deterioro (Cuenta 68)`.
* **Estructura**: `841 Resultado de Explotación` -> `8410` -> `84100`.

---

## 6. Cuenta 85: Resultado Antes de Participaciones e Impuestos
**Origen**: `capturas/62.png`  
**Definición**: Mide el resultado económico total de la empresa incorporando los efectos del costo del financiamiento bancario, fluctuaciones del tipo de cambio e ingresos financieros.
* **Fórmula de Cierre**: `Resultado de Explotación (Cuenta 84) + Ingresos Financieros (Cuenta 77) - Gastos Financieros (Cuenta 67)`.
* **Estructura**: `851 Resultado Antes de Participación e Impuestos` -> `8510` -> `85100`.

---

## 7. Cuenta 87: Participaciones de los Trabajadores
**Origen**: `capturas/62.png`  
**Definición**: Registra la participación de los trabajadores en las utilidades de la empresa establecida por ley (D. Leg. 892), tanto en su componente corriente como diferido.
* **Estructura**:
  * `871 Participación de los Trabajadores Corriente` -> `8710` -> `87100`: Porcentaje liquidable con cargo a la utilidad tributaria del ejercicio.
  * `872 Participación de los Trabajadores Diferida` -> `8720` -> `87200`: Efecto temporal deducible o imponible futuro (NIC 19).

---

## 8. Cuenta 88: Impuesto a la Renta
**Origen**: `capturas/63.png`  
**Definición**: Reconoce la carga fiscal del impuesto a la renta de tercera categoría que grava las ganancias del ejercicio económico (NIC 12).
* **Estructura**:
  * `881 Impuesto a la Renta Corriente` -> `8810` -> `88100`: Gasto por impuesto liquidado en la Declaración Jurada Anual ante SUNAT.
  * `882 Impuesto a la Renta Diferido` -> `8820` -> `88200`: Efecto de las diferencias temporales entre la base contable y tributaria.

---

## 9. Cuenta 89: Determinación del Resultado del Ejercicio
**Origen**: `capturas/63.png`  
**Definición**: Cuenta final de liquidación de resultados anuales. Muestra la utilidad líquida o la pérdida final neta del ejercicio que se trasladará a la cuenta 59 (Resultados Acumulados).
* **Fórmula Final**: `Resultado Antes de Participaciones e Impuestos (Cuenta 85) - Participación de los Trabajadores (Cuenta 87) - Impuesto a la Renta (Cuenta 88)`.
* **Estructura**:
  * `891 Utilidad del Ejercicio` -> `8910` -> `89100`: Saldo acreedor final (beneficio neto).
  * `892 Pérdida del Ejercicio` -> `8920` -> `89200`: Saldo deudor final (quebranto neto).

