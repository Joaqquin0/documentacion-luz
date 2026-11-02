# Elemento 9: Costos de Producción y Gastos por Función

El Elemento 9 comprende la contabilidad analítica de explotación y control de gestión interna. Recibe las cargas de gastos por naturaleza del Elemento 6 mediante el asiento de destino por partida doble frente a la cuenta `79 Cargas Imputables a Cuentas de Costos y Gastos`, clasificando los recursos según el área o función de la empresa que los consumió (Administración, Ventas, Costo de Servicio, Finanzas).

---

## 1. Cuenta 91: Costos por Distribuir
**Origen**: `capturas/63.png`  
**Definición**: Centro de costos transitorio o acumulador de costos indirectos de fabricación/operación (CIF) que no pueden imputarse de manera directa a una orden de trabajo o centro específico al momento del gasto. Se prorratean periódicamente mediante una base técnica o inductores de costo (horas máquina, horas hombre, metros cuadrados).
* **Estructura Jerárquica**:
  * `911 Costos por Distribuir` -> `9110` -> `91100 Costos por Distribuir`.

---

## 2. Cuenta 93: Costo de Servicio
**Origen**: `capturas/63.png`  
**Definición**: Agrupa los costos directos e indirectos indispensables para la prestación y ejecución de los servicios vendidos por la empresa a sus clientes (mano de obra de técnicos/especialistas, suministros directos del servicio, depreciación de equipos afectados al servicio y subcontratas operativas).
* **Estructura Jerárquica**:
  * `931 Costo de Servicio` -> `9310` -> `93100 Costo de Servicio`.

---

## 3. Cuenta 94: Gastos de Administración
**Origen**: `capturas/63.png`  
**Definición**: Concentra todos los costos y gastos incurridos en la dirección, supervisión, gestión legal, contable, de recursos humanos y soporte administrativo general de la entidad.
* **Gastos Típicos Imputados**:
  * Planilla administrativa (Gerencia, Contabilidad, Legal, TI).
  * Alquiler y servicios básicos (luz, agua, internet, telefonía) de oficinas corporativas.
  * Útiles de escritorio, asesorías externas, depreciación de mobiliario y cómputo administrativo.
* **Estructura Jerárquica**:
  * `941 Gastos de Administración` -> `9410` -> `94100 Gastos de Administración`.

---

## 4. Cuenta 95: Gastos de Venta
**Origen**: `capturas/63.png`  
**Definición**: Agrupa todas las erogaciones directamente vinculadas a la comercialización, promoción, publicidad, distribución física y atención al cliente de los productos o servicios ofrecidos por la empresa.
* **Gastos Típicos Imputados**:
  * Comisiones y sueldos de la fuerza de ventas.
  * Publicidad, marketing digital, folletos y relaciones públicas.
  * Fletes y transportes de distribución y despacho de mercaderías.
  * Mantenimiento de camionetas de reparto y combustibles comerciales.
* **Estructura Jerárquica**:
  * `951 Gastos de Venta` -> `9510` -> `95100 Gastos de Venta`.

---

## 5. Cuenta 97: Gastos Financieros
**Origen**: `capturas/63.png`  
**Definición**: Refleja en el estado de resultados por función el costo de financiamiento de capital ajeno y las pérdidas por fluctuación cambiaria imputadas a la gestión financiera.
* **Estructura Jerárquica y Desglose**:
  * **`971 Gastos Financieros`** -> `9710` -> `97100 Gastos Financieros`: Intereses bancarios, comisiones por cartas fianza, gastos de factoring y sobregiros.
  * **`976 Diferencia de Cambio`** -> `9760` -> `97600 Diferencia de Cambio`: Pérdidas operativas por traslación y liquidación en moneda extranjera.

