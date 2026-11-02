# Estructura y Mapa General del Plan de Cuentas

Este documento proporciona una visión panorámica, las reglas de jerarquía y el mapeo exhaustivo de las 85 capturas de pantalla del árbol contable corporativo (basado en el marco del Plan Contable General Empresarial - PCGE).

---

## 1. Convenciones Jerárquicas del Sistema

El árbol contable en el sistema se estructura a 5 niveles codificados por dígitos numéricos crecientes:

1. **Elemento / Clase (1 dígito)**:
   - `0`: Cuentas de Orden (Deudoras y Acreedoras).
   - `1`: Activo Disponible y Exigible.
   - `2`: Activo Realizable (Inventarios).
   - `3`: Activo Inmovilizado (Propiedades, Inversiones, Intangibles, Biológicos).
   - `4`: Pasivo (Obligaciones presentes con terceros y trabajadores).
   - `5`: Patrimonio Neto (Capital, Reservas, Excedentes, Resultados).
   - `6`: Gastos por Naturaleza (Compras, Cargas de personal, Servicios, Depreciaciones).
   - `7`: Ingresos (Ventas, Variación de producción, Financieros).
   - `8`: Saldos Intermediarios de Gestión y Determinación del Resultado.
   - `9`: Costos de Producción y Gastos por Función (Analítica de gestión).

2. **Cuenta (2 dígitos)**: Rubro o familia contable principal (ej. `10`, `12`, `20`, `33`, `40`, `60`, `70`).
3. **Subcuenta (3 dígitos)**: Desagregación por tipo específico de activo, pasivo, gasto o ingreso (ej. `104`, `121`, `331`, `401`, `601`, `701`).
4. **Divisionaria (4 dígitos)**: Especificación por condición, modalidad o destino (ej. `1041`, `1211`, `3321`, `4011`, `6011`).
5. **Subdivisionaria (5 dígitos)**: Nivel analítico o de registro final transaccional (ej. `10410`, `12110`, `40111`, `60110`).

---

## 2. Mapeo Integral de Capturas y Flujos Continuos (85 Archivos)

El plan contable fue documentado en 85 capturas numeradas. Se identifican dos tipos de continuidades visuales:
- **Continuidad Explícita (`-x` / `_x`)**: Indicada en el nombre del archivo cuando una misma cuenta o rama continúa verticalmente por desborde visual.
- **Continuidad Implícita (Corte de rama padre sin sufijo `-x`)**: Imágenes independientes numéricamente pero cuya estructura continúa la rama abierta en la captura precedente.

| Elemento | Cuentas Abarcadas | Capturas Origen | Tipo de Flujo / Observaciones |
| :--- | :--- | :--- | :--- |
| **Elemento 0** | Cuentas `01` a `09` | `1.png`, `2.png`, `3.png`, `4.png` | Flujo secuencial. Cuentas de orden deudoras, acreedoras y contrapartidas. |
| **Elemento 1** | Cuenta `10` | `5.png` | Efectivo y equivalentes. |
| **Elemento 1** | Cuenta `11` | `6.png` | Inversiones financieras. |
| **Elemento 1** | Cuenta `12` | `7.png` | Clientes terceros (contiene cuenta anómala `12111`). |
| **Elemento 1** | Cuenta `13` | `8_1.png`, `8_2.png` | Flujo continuo explícito (`_1` a `_2`). |
| **Elemento 1** | Cuenta `14` | `9.png` | Cuentas por cobrar al personal, directores y socios. |
| **Elemento 1** | Cuenta `16` | `10_1.png`, `10_2.png` | Flujo continuo explícito (`_1` a `_2`). |
| **Elemento 1** | Cuenta `17` | `11-1.png`, `11-2.png` | Flujo continuo explícito (`-1` a `-2`). |
| **Elemento 1** | Cuenta `18` | `12.png` | Servicios pagados por anticipado. |
| **Elemento 1** | Cuenta `19` | `13-1.png`, `13-2.png` | Flujo continuo explícito (`-1` a `-2`). Estimación cobranza dudosa. |
| **Elemento 2** | Cuenta `20` | `14.png` | Mercaderías. |
| **Elemento 2** | Cuentas `21`, `22` | `15.png` | Productos terminados, subproductos y desperdicios. |
| **Elemento 2** | Cuentas `23`, `24` (inicio) | `16.png` | Productos en proceso y corte en 244. |
| **Elemento 2** | Cuentas `24` (fin), `25`, `26`, `27` (inicio) | `17.png` | **Continuidad implícita**: Empalma 244 y abre 25, 26 y 271. |
| **Elemento 2** | Cuenta `27` (continuación) | `18.png` | **Continuidad implícita**: Despliega 272 y 273 sin prefijo `-x`. |
| **Elemento 2** | Cuenta `27` (continuación) | `19.png` | **Continuidad implícita**: Despliega 2735 a 2765. |
| **Elemento 2** | Cuenta `27` (continuación) | `20.png` | **Continuidad implícita**: Despliega 2766 a 2782. |
| **Elemento 2** | Cuenta `27` (cierre) | `21.png` | **Continuidad implícita**: Despliega 279 (desvalorización acumulada). |
| **Elemento 2** | Cuenta `28` | `22.png` | Existencias por recibir. |
| **Elemento 2** | Cuenta `29` | `23-1.png`, `23-2.png`, `23-3.png` | Flujo continuo explícito (`-1`, `-2`, `-3`). Desvalorización existencias. |
| **Elemento 3** | Cuenta `30` | `24-1.png`, `24-2.png` | Flujo continuo explícito. **Error grave de rotulado**: rotulado como Inversiones Inmobiliarias cuando son Mobiliarias. |
| **Elemento 3** | Cuentas `31`, `32` | `25.png` | Inversiones inmobiliarias y leasing activo. |
| **Elemento 3** | Cuenta `33` | `26-1.png`, `26-2.png`, `26-3.png` | Flujo continuo explícito (`-1`, `-2`, `-3`). Propiedad, planta y equipo. |
| **Elemento 3** | Cuenta `34` | `27-1.png`, `27-2.png` | Flujo continuo explícito (`-1`, `-2`). Intangibles. |
| **Elemento 3** | Cuentas `35`, `36` (inicio) | `28.png` | Activos biológicos y arranque de 361. |
| **Elemento 3** | Cuenta `36` (continuación) | `29-1.png` | Flujo continuo explícito: 363 y 364. |
| **Elemento 3** | Cuenta `36` (cierre) | `30.png` | **Continuidad implícita**: Cierra 365 y 366 sin sufijo `-x`. |
| **Elemento 3** | Cuenta `37` | `31.png` | Activos diferidos. |
| **Elemento 3** | Cuentas `38`, `39` (inicio) | `32-1.png` | Otros activos y depreciación 3911 a 3913. |
| **Elemento 3** | Cuenta `39` (cierre) | `32-2.png` | Flujo continuo explícito: 3914 a 3923. |
| **Elemento 4** | Cuenta `40` (inicio) | `33.png` | Tributos gobierno central y certificados. |
| **Elemento 4** | Cuentas `40` (fin), `41` | `34-1.png`, `34-2.png` | Flujo continuo explícito: instituciones públicas, locales, AFP y cuenta 41. |
| **Elemento 4** | Cuentas `42`, `43` (inicio) | `35-1.png` | Proveedores terceros y relacionadas iniciales. |
| **Elemento 4** | Cuentas `43` (fin), `44` | `35-2.png` | Flujo continuo explícito: relacionadas finales y directores/socios. |
| **Elemento 4** | Cuenta `45` | `36-1.png`, `36-2.png` | Flujo continuo explícito: obligaciones bancarias, leasing y costos de financiación. |
| **Elemento 4** | Cuenta `46` | `37.png` | Pasivos diversos terceros. |
| **Elemento 4** | Cuenta `47` | `38-1.png`, `38-2.png`, `38-3.png` | Flujo continuo explícito: pasivos diversos relacionadas. |
| **Elemento 4** | Cuentas `48`, `49` (inicio) | `39-1.png` | Provisiones y pasivos diferidos iniciales. |
| **Elemento 4 / 5** | Cuentas `49` (fin), `50`, `51` | `39-2.png` | Flujo continuo explícito: pasivo diferido final, Capital y Acciones Inversión. |
| **Elemento 5** | Cuentas `52`, `56`, `57` (inicio) | `40-1.png` | Capital adicional, resultados no realizados, excedente de revaluación. |
| **Elemento 5** | Cuentas `57` (fin), `58`, `59` | `41.png` | **Continuidad implícita**: Cierra 572-573, Reservas y Resultados acumulados. |
| **Elemento 6** | Cuentas `60` (inicio) | `42-1.png` | Compras de mercaderías, materias primas y suministros. |
| **Elemento 6** | Cuentas `60` (fin), `61` (inicio) | `42-2.png` | Flujo continuo explícito: gastos vinculados a compras y variación mercaderías. |
| **Elemento 6** | Cuenta `61` (cierre) | `43-1.png` | Flujo continuo explícito: variación materias primas y auxiliares. |
| **Elemento 6** | Cuenta `62` (inicio) | `44-1.png` | Gastos de personal: sueldos, atenciones y cargas sociales. |
| **Elemento 6** | Cuentas `62` (fin), `63` (inicio) | `45-1.png` | Continuidad explícita: seguros sociales, directorio y transporte/viajes. |
| **Elemento 6** | Cuenta `63` (continuación) | `45-2.png` | Continuidad explícita: asesorías, terceros y mantenimiento. |
| **Elemento 6** | Cuenta `63` (continuación) | `45-3.png` | Continuidad explícita: alquileres, servicios básicos y publicidad. |
| **Elemento 6** | Cuentas `63` (fin), `64` (inicio) | `46-1.png` | Continuidad explícita: gastos bancarios y tributos prediales/nacionales. |
| **Elemento 6** | Cuentas `64` (fin), `65` (inicio) | `46-2.png` | Continuidad explícita: tributos varios y enajenación activos inmovilizados. |
| **Elemento 6** | Cuentas `65` (fin), `66` | `47.png` | Continuidad implícita: suministros internos, donaciones y pérdidas valor razonable. |
| **Elemento 6** | Cuenta `67` (inicio) | `48.png` | Gastos financieros: préstamos, bonos y factoring. |
| **Elemento 6** | Cuenta `67` (cierre) | `49.png` | Continuidad implícita: diferencia de cambio y gastos valor razonable. |
| **Elemento 6** | Cuenta `68` (depreciación) | `50.png` | Valuación y deterioro: depreciaciones de inmovilizado. |
| **Elemento 6** | Cuenta `68` (amort/deterioro) | `51.png` | Continuidad implícita: amortización intangibles y cobranza dudosa. |
| **Elemento 6** | Cuenta `68` (provisiones) | `52.png` | Continuidad implícita: deterioro biológico y provisiones por litigios/medio ambiente. |
| **Elemento 6** | Cuenta `69` (inicio) | `53-1.png` | Costo de ventas mercaderías y manufactura. |
| **Elemento 6 / 7** | Cuentas `69` (fin), `70` (inicio) | `54-2.png` | Continuidad explícita: costo servicios/desvalorización y apertura ventas 701. |
| **Elemento 7** | Cuenta `70` (continuación) | `55-3.png` | Continuidad explícita: ventas productos, subproductos y servicios (nodo de prueba). |
| **Elemento 7** | Cuenta `70` (devoluciones) | `55-4.png` | Continuidad explícita: devoluciones sobre ventas terceros y relacionadas. |
| **Elemento 7** | Cuenta `71` | `56.png` | Variación de la producción almacenada terminada y en proceso. |
| **Elemento 7** | Cuentas `71` (fin), `72` | `57.png` | Variación servicios y producción de activos inmovilizados por la propia entidad. |
| **Elemento 7** | Cuentas `72` (fin), `73`, `74`, `75` (inicio) | `58.png` | Descuentos, bonificaciones, alquileres e ingresos de gestión. |
| **Elemento 7** | Cuenta `75` (cierre) | `59.png` | Recuperación de deterioro, enajenación activos y subsidios. |
| **Elemento 7** | Cuentas `76`, `77` (inicio) | `60.png` | Ganancias a valor razonable e intereses/rendimientos financieros. |
| **Elemento 7** | Cuentas `77` (fin), `78`, `79` | `61.png` | Dividendos, diferencia cambio, transferencias y cargas imputables. |
| **Elemento 8** | Cuentas `80` a `87` | `62.png` | Margen comercial, valor agregado, excedente explotación, trabajadores. |
| **Elemento 8 / 9** | Cuentas `88`, `89`, `91`, `93`, `94`, `95`, `97` | `63.png` | Impuesto renta, resultados ejercicio y centros de costos/gastos analíticos. |

---

## 3. Resumen de Incidencias Críticas Detectadas

1. **Error Crítico de Clasificación en Cuenta 30 (`24-1.png`)**: La cuenta figura rotulada como `30 INVERSIONES INMOBILIARIAS`, cuando sus cuentas hijas (`301 Inversiones a Ser Mantenidas Hasta el Vencimiento`, `302 Instrumentos Finan...`) corresponden a **INVERSIONES MOBILIARIAS**. El rótulo correcto de Inversiones Inmobiliarias ya existe en la cuenta `31`.
2. **Nodos Basura o de Prueba**:
   - `12111 5555` en Cuenta `12` (`7.png`).
   - `46999 CAMBIAR DESCRIPCION` en Cuenta `46` (`37.png`).
   - `7042 CAMBIAR LA DESCRIPCION` / `70420` en Cuenta `70` (`55-3.png`).
3. **Cuentas Duplicadas o de Apertura Forzada**:
   - `100 CAJA` vs `101 Caja` en Cuenta `10` (`5.png`).
   - `1899 1899 APERTURA` (`12.png`).
   - `2522 2522 APERTURA` (`17.png`).
4. **Subdivisionarias con Nombres Copiados Erróneamente**:
   - En Cuenta `07` (`4.png`): la subdivisionaria `07120` se llama por error `07120 Compromiso Sobre Inv Mantenidas Para Negociación` en vez de referenciar Inversiones Disponibles para la Venta.
5. **Rupturas en Secuencias Numéricas**:
   - Salto de `17333` a `17335` omitiendo `17334` (`11-1.png`).
   - Salto de `32241` a `32243 CAMIONETAS` omitiendo `32242` (`25.png`).
   - Salto de `27812` y `27822` sin existir `27811` ni `27821` (`20.png`).



---

## 4. Índice Maestro de Documentación del Módulo

| Capítulo | Archivo Documental | Contenido Principal |
| :---: | :--- | :--- |
| **00** | [`00_ESTRUCTURA_Y_MAPA_GENERAL.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/00_ESTRUCTURA_Y_MAPA_GENERAL.md) | Convenciones jerárquicas y mapa integral de capturas. |
| **01** | [`01_ELEMENTO_0_CUENTAS_DE_ORDEN.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/01_ELEMENTO_0_CUENTAS_DE_ORDEN.md) | Cuentas de orden deudoras y acreedoras (`01` a `09`). |
| **02** | [`02_ELEMENTO_1_ACTIVO_DISPONIBLE_Y_EXIGIBLE.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/02_ELEMENTO_1_ACTIVO_DISPONIBLE_Y_EXIGIBLE.md) | Efectivo, inversiones y cuentas por cobrar (`10` a `19`). |
| **03** | [`03_ELEMENTO_2_ACTIVO_REALIZABLE.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/03_ELEMENTO_2_ACTIVO_REALIZABLE.md) | Inventarios, suministros y desvalorizaciones (`20` a `29`). |
| **04** | [`04_ELEMENTO_3_ACTIVO_INMOVILIZADO.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/04_ELEMENTO_3_ACTIVO_INMOVILIZADO.md) | Inmuebles, maquinaria, intangibles y depreciaciones (`30` a `39`). |
| **05** | [`05_ELEMENTO_4_PASIVO.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/05_ELEMENTO_4_PASIVO.md) | Tributos, remuneraciones, proveedores y financieras (`40` a `49`). |
| **06** | [`06_ELEMENTO_5_PATRIMONIO_NETO.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/06_ELEMENTO_5_PATRIMONIO_NETO.md) | Capital social, reservas y resultados acumulados (`50` a `59`). |
| **07** | [`07_ELEMENTO_6_GASTOS_POR_NATURALEZA.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/07_ELEMENTO_6_GASTOS_POR_NATURALEZA.md) | Compras, servicios, tributos, deterioro y costo de ventas (`60` a `69`). |
| **08** | [`08_ELEMENTO_7_INGRESOS.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/08_ELEMENTO_7_INGRESOS.md) | Ventas, producción almacenada y financieros (`70` a `79`). |
| **09** | [`09_ELEMENTO_8_SALDOS_INTERMEDIARIOS_Y_RESULTADOS.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/09_ELEMENTO_8_SALDOS_INTERMEDIARIOS_Y_RESULTADOS.md) | Determinación escalonada del resultado del ejercicio (`80` a `89`). |
| **10** | [`10_ELEMENTO_9_COSTOS_Y_GASTOS_POR_FUNCION.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/10_ELEMENTO_9_COSTOS_Y_GASTOS_POR_FUNCION.md) | Analítica de gestión: administración, ventas y costos (`91` a `97`). |
| **11** | [`11_INFORME_DE_CONFUSIONES_ERRORES_Y_CONTINUIDAD.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/11_INFORME_DE_CONFUSIONES_ERRORES_Y_CONTINUIDAD.md) | Auditoría gerencial de discrepancias, errores e inconsistencias. |
| **12** | [`12_MANUAL_DE_PROCESOS_Y_OPERACIONES_DEL_USUARIO.md`](file:///c:/Users/ADMIN/Documents/GitHub/plan-contable/docs-planes-contables/documentacio-planes/12_MANUAL_DE_PROCESOS_Y_OPERACIONES_DEL_USUARIO.md) | Manual de Procesos: Nuevo, Editar, Consultar, Eliminar, Imprimir y Distribución Gastos. |
