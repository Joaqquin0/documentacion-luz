# PAQUETE DE DOCUMENTACIÓN
### Submódulo: Movimientos
**Módulo de Cuentas por Pagar · ERP Dialyma (Sistema SAMI)**

| Metadato | Detalle |
| :--- | :--- |
| **Empresa** | CLINICA LA LUZ SAC |
| **Sistema** | ERP Dialyma (Sistema SAMI), versión 202610130001 |
| **Módulo** | Cuentas por Pagar |
| **Submódulo** | Movimientos (12 opciones transaccionales) |
| **Fecha de actualización** | 30/10/2026 |
| **Estado del documento** | **100% Auditado y Verificado en Pantallas del Sistema** |
| **Método de verificación** | Inspección visual interactiva de ventanas principales, formularios de alta, ventanas modales de búsqueda, sub-grillas contables, desgloses tributarios y menús contextuales. |

> [!NOTE]
> **Aclaración sobre discrepancias de nomenclatura (Menú vs. Pantalla):**  
> Dentro del árbol del submódulo existen opciones cuyos títulos difieren del encabezado de la ventana ejecutada (por ejemplo, en el menú figura `Liquidaciones caja`, pero la ventana oficial se titula `Liquidación de Fondo Fijo`; o `Reg. Anticipos Proveedores` cuya ventana se titula `Regularización de Anticipos a Proveedores`). En este documento se registran ambos nombres para garantizar tanto la rápida ubicación por parte del usuario como la precisión técnica y contable.

---

### Contenido del paquete

| Documento | Capítulo | Origen y Estado del contenido |
| :--- | :--- | :--- |
| **DOC-02** | Ficha del proceso | Verificado con reglas de compras, tributarias y hospitalarias |
| **DOC-03** | Diagrama de flujo | Estructurado en tabla por carriles (Swimlane) sin código gráfico |
| **DOC-04** | Procedimiento | Pasos operativos basados estrictamente en los controles del ERP |
| **DOC-05** | Especificación funcional | 100% Verificado en pantalla (12 pantallas, campos, validaciones y modales) |
| **DOC-06** | Manual de usuario | Paso a paso funcional guiado por controles y ventanas del sistema |
| **DOC-07** | Matriz RACI | Asignación de responsabilidades por cada tipo de transacción |
| **DOC-08** | Roles y permisos | Mapeo de perfiles frente a los botones de barra y menús contextuales |
| **DOC-09** | Integraciones | Enlaces reales (Mesa de Partes, Compras, Caja Chica, Tesorería y PCGE) |
| **DOC-10** | Catálogo de reportes | Comportamiento de impresiones, vouchers y exportación de listas |
| **DOC-11** | Casos de prueba | Casos de prueba UAT ejecutables contra los campos y validaciones reales |

---

## DOC-02 · Ficha del proceso

| Dato | Contenido |
| :--- | :--- |
| **Código** | CXP-02 |
| **Nombre** | Gestión Transaccional de Movimientos de Cuentas por Pagar |
| **Tipo** | Operativo / Control de Pasivos y Cumplimiento Tributario |
| **Dueño del proceso** | Jefatura de Contabilidad / Administrador de Cuentas por Pagar |
| **Objetivo** | Controlar el ciclo de vida de los pasivos exigibles de la clínica: desde la recepción física del comprobante mercantil y su validación logística, pasando por la liquidación fiscal, cálculo impositivo (IGV, Detracciones, Retenciones) y generación automática del asiento contable en el PCGE, hasta la gestión de vencimientos, canje de letras, emisión de órdenes de pago y compensación de anticipos a proveedores. |
| **Alcance** | Comprende las 12 opciones del submódulo Movimientos:<br>1. `Recepción de Documentos`<br>2. `Provisión Documentos` (Facturas comerciales)<br>3. `Registro Letras` (Canje Factura $\rightarrow$ Letras)<br>4. `Obligaciones de Pago` (Auditoría masiva de vencimientos)<br>5. `Liquidaciones caja` (Rendición y voucher de Fondo Fijo)<br>6. `Fondo de pago` (Parámetros de caja chica)<br>7. `Provisión de recibos por honorarios` (Honorarios médicos y 4ta categoría)<br>8. `Provisión de otros documentos` (Servicios públicos, notas de crédito/débito)<br>9. `Órdenes de Pago` (Autorizaciones de egreso y anticipos)<br>10. `Reg. Anticipos Proveedores` (Compensación Facturas vs. Anticipos)<br>11. `Liq. Rendir Cuentas` (Rendición institucional - en incidencia técnica)<br>12. `Provisión no Domiciliados` (Comprobantes del exterior `FE` y retención de no domiciliados) |
| **Proveedores** | • **Proveedores de Bienes y Servicios Médicos:** Entrega de comprobantes fiscales electrónicos y físicos.<br>• **Médicos y Especialistas:** Emisión de Recibos por Honorarios por actos médicos y quirúrgicos.<br>• **Logística / Almacén:** Órdenes de Compra (`O/C`), guías de remisión y actas de conformidad de recepción.<br>• **Custodios de Fondos Fijos:** Sustento de compras menores y rendiciones de caja chica.<br>• **SUNAT / Banco de la Nación:** Parámetros de detracciones, comprobantes de pago y padrón RUC. |
| **Entradas** | Comprobantes de pago físicos y electrónicos (Facturas, RH, Boletas, SP, FE); Órdenes de Compra autorizadas; vales de caja chica; acuerdos de canje de letras; solicitudes de anticipo a proveedores. |
| **Salidas** | Comprobantes recepcionados con sello de control interno; Registro de Compras electrónico (RCE); Asientos contables automáticos en el Libro Diario (PCGE); vouchers de liquidación de fondo fijo; cartera actualizada de obligaciones exigibles; letras de cambio registradas; órdenes de pago autorizadas para Tesorería; asientos de regularización y compensación de anticipos. |
| **Clientes internos** | • **Contabilidad General:** Alimentación del Registro de Compras, Libro Mayor, Balances y declaraciones tributarias (PDT 621, PLAME, SIRE).<br>• **Tesorería / Finanzas:** Programación de pagos, emisión de cheques, transferencias bancarias y flujo de caja.<br>• **Gerencia de Operaciones / Auditoría:** Control de costos por líneas de negocio y actividades hospitalarias. |
| **Indicadores** *(Propuesta técnica · Por validar)* | • **Oportunidad de provisión:** Plazo entre la recepción física y la contabilización fiscal ($\le 48$ horas).<br>• **Tasa de anticipos no regularizados:** Saldo acumulado en la cuenta 422 con antigüedad $> 30$ días (Meta: $< 2\%$).<br>• **Cumplimiento de detracciones:** Pago oportuno del depósito SPOT previo al vencimiento tributario (Meta: $100\%$).<br>• **Cuadre contable de provisiones:** Vouchers generados con diferencia entre Debe y Haber (Meta: 0). |
| **Riesgos y controles** *(Propuesta de gestión · Por validar)* | • **Riesgo:** Pérdida del crédito fiscal de IGV por comprobantes no provisionados dentro del plazo legal.<br>  *Control:* Semáforo de estado `Pendiente / Provisionado` en Recepción de Documentos.<br>• **Riesgo:** Pago de comprobantes de servicios sujetos a detracción sin contar con la constancia de depósito.<br>  *Control:* Validación obligatoria del check `Detracción` y captura de número de constancia en la provisión.<br>• **Riesgo:** Duplicidad en el pago a un proveedor al existir anticipos previos no amortizados.<br>  *Control:* Ejecución obligatoria de la ventana `Regularización de Anticipos a Proveedores` previo al giro final.<br>• **Riesgo:** Descuadre en moneda extranjera por diferencias de cambio no reconocidas.<br>  *Control:* Desglose bimonetario obligatorio (Soles y Dólares) con control estricto de partida doble. |
| **Normativa aplicable** | • TUO de la Ley del Impuesto a la Renta e Impuesto General a las Ventas (SUNAT).<br>• Resolución de Superintendencia de Comprobantes de Pago y Sistema Integrado de Registros Electrónicos (SIRE).<br>• Sistema de Pago de Obligaciones Tributarias con el Gobierno Central (SPOT - D.L. 940).<br>• Plan Contable General Empresarial (PCGE).<br>• Ley de Títulos Valores (Ley N° 27287 - Letras de Cambio).<br>• Políticas internas de caja chica y pagos de Clínica La Luz SAC. |

---

## DOC-03 · Diagrama de flujo por carriles

> [!IMPORTANT]
> **Modelo Técnico Preliminar:**  
> La secuencia mostrada a continuación sintetiza la interacción entre carriles de acuerdo a los controles de las pantallas del sistema SAMI. Su adopción como procedimiento oficial está sujeta a la validación de la Jefatura Administrativa.

El circuito transaccional de Cuentas por Pagar se divide en 4 etapas operativas secuenciales:

| Paso | Etapa | Mesa de Partes / Almacén | Asistente de CxP | Tesorería / Caja Chica | ERP Dialyma (SAMI) | Sig. |
| :---: | :--- | :--- | :--- | :--- | :--- | :---: |
| **●** | **INICIO** | | | | | 1 |
| **1** | **E1: Origen** | Recibe comprobante mercantil físico y valida datos preliminares | | | | 2 |
| **2** | **E1: Origen** | Ingresa a `Recepción de Documentos`, registra datos del proveedor, serie, número y vincula la `Orden de Compra` | | | Asigna correlativo de recepción y coloca estado `Pendiente` | 3 |
| **3** | **E1: Origen** | | | En caso de compras menores, efectúa pagos de caja chica y acumula vales | | 4 |
| **4** | **E1: Origen** | | | Registra en `Liquidaciones caja` la rendición de comprobantes contra el `Fondo de Pago` asignado | Emite voucher de liquidación de fondo fijo con asiento contable | 5 |
| **5** | **E2: Provisión** | Traslada documentos físicos con sello de recepción a Contabilidad/CxP | | | | 6 |
| **6** | **E2: Provisión** | | Ingresa a la pantalla de provisión correspondiente (`Provisión Documentos`, `Honorarios`, `Otros Dctos.` o `No Domiciliados`) | | Abre la ventana estándar `Provisión de dctos.` | 7 |
| **7** | **E2: Provisión** | | Pulsa botón `[ Dctos. Recepcionados .. ]` (o `[ Dctos. Liquidados ... ]`) | | Carga automáticamente los datos del comprobante sin redigitar | 8 |
| **8** | **E2: Provisión** | | Completa desglose imponible, calcula IGV, marca detracción si aplica y asigna la plantilla contable en pestaña `Asiento Contable` | | Valida cuadre estricto de 9 columnas (`Total Debe = Total Haber`) | 9 |
| **9** | **E2: Provisión** | | Guarda la provisión (F2 / Guardar) | | Genera asiento de compra y traslada documento al estado `Provisionado` | 10 |
| **10** | **E3: Cartera** | | Monitorea en `Obligaciones de Pago` los vencimientos exigibles de la cartera | | Muestra compromisos pendientes consolidados | 11 |
| **11** | **E3: Cartera** | | *(Opcional)* Si se pacta refinanciamiento, accede a `Registro Letras`, selecciona facturas y genera letras a plazo | Realiza asiento de reclasificación (Cta. 4212 $\rightarrow$ 4231) | 12 |
| **12** | **E4: Cancelación** | | Emite en `Órdenes de Pago` la autorización de egreso (pago directo o giro de anticipo) | | Genera orden para ejecución de Tesorería | 13 |
| **13** | **E4: Cancelación** | | | Tesorería ejecuta el desembolso vía cheque bancario o transferencia | Actualiza saldos bancarios | 14 |
| **14** | **E4: Cierre** | | Si la operación tuvo anticipos previos, ingresa a `Reg. Anticipos Proveedores`, cruza la factura contra el anticipo y guarda | Genera asiento de compensación (Cta. 4212 vs. 422) y extingue la deuda | **FIN** |

---

## DOC-04 · Procedimiento Operativo Estándar (SOP)

| Dato | Contenido |
| :--- | :--- |
| **Código del Procedimiento** | PR-CXP-02 |
| **Versión** | Versión 1.0 (Validada en Pantallas del Sistema) |
| **Estado** | Propuesta Estándar sujeta a Aprobación Institucional |
| **Objetivo** | Establecer la secuencia formal y las instrucciones operativas estándar para cada una de las 12 transacciones del submódulo Movimientos de Cuentas por Pagar, garantizando la trazabilidad documental, el cumplimiento tributario (SUNAT), la correcta imputación en el PCGE y el control financiero hospitalario. |
| **Alcance** | Aplica a todo el personal de Mesa de Partes, Almacenes, Asistentes de Cuentas por Pagar, Contadores, Custodios de Caja Chica y Tesorería de Clínica La Luz SAC. |

---

### Procedimientos Operativos Detallados por Ítem (1 al 12)

#### SOP-01: Procedimiento de Recepción y Custodia de Documentos Físicos
* **Pantalla Menú / Título:** `Recepcion de Documentos` $\rightarrow$ Ventana `Recepción de documentos`.
* **Responsable:** Asistente de Mesa de Partes / Almacén.
* **Paso a paso:**
  1. Recibir el comprobante impreso o la representación física/electrónica entregada por el proveedor o transportista.
  2. Ingresar a `Recepción de Documentos`, hacer clic derecho sobre la grilla y elegir `Nuevo... (Ctrl+U)`.
  3. En `Código`, presionar `[...]` para desplegar el modal `Buscando Proveedores...`, ubicar por *RUC* o *Razón Social* y dar `[ Aceptar ]`.
  4. En `Tipo`, seleccionar el comprobante (ej. Factura por Pagar). Digitar la serie y número correlativo en `Serie/Num`.
  5. Registrar fecha de emisión, moneda, tipo de cambio e importe total.
  6. En la sección `Custodia`, asignar el área física de archivo en `Destino` y el responsable del resguardo en `Responsable`.
  7. En `Asociación`, marcar `Orden de Compra`, presionar `[...]` para vincular la O/C autorizada por Logística.
  8. Dar clic en `Aceptar`. El documento ingresa al registro interno con estado `Pendiente` para ser derivado a Contabilidad.

#### SOP-02: Procedimiento de Provisión de Facturas Comerciales de Proveedores
* **Pantalla Menú / Título:** `Provision Documentos` $\rightarrow$ Ventana `Provisión de dctos.`.
* **Responsable:** Asistente de Cuentas por Pagar / Contabilidad.
* **Paso a paso:**
  1. Ingresar a `Provision Documentos` y presionar `F2 (Nuevo)`.
  2. En la barra superior, presionar el botón **`[ Dctos. Recepcionados .. ]`**, seleccionar la factura ingresada en Mesa de Partes y dar `Aceptar`. Todos los datos de cabecera se importan automáticamente.
  3. En la pestaña **`Provisión`**, revisar la base imponible y el cálculo de IGV en la sub-grilla impositiva.
  4. Si la operación está sujeta al SPOT (servicios médicos tercerizados, limpieza, transporte), marcar la casilla `Detracción: [X]` y consignar el número de constancia y fecha de depósito del Banco de la Nación.
  5. En la pestaña **`Asiento Contable`**, seleccionar la plantilla de gasto o presionar `[ Plantilla ]` para pre-cargar las cuentas del PCGE.
  6. Validar en la sub-grilla contable la imputación en sus 9 columnas completas (`Cod Cuenta`, `D-H`, `Imp Soles`, `Imp Dolares`, `Linea Negocio`, `Código Actividades`, `Descripción contrapartida`, `Tipo dcto.` y `N° dcto`).
  7. Verificar que el campo `Diferencia` marque `0.00` y presionar `Guardar`. El comprobante pasa a estado `Provisionado` y alimenta el Registro de Compras.

#### SOP-03: Procedimiento de Canje y Fraccionamiento en Registro de Letras
* **Pantalla Menú / Título:** `Registro Letras` $\rightarrow$ Ventana `Registro de Letras por Pagar`.
* **Responsable:** Asistente de Cuentas por Pagar / Tesorería.
* **Paso a paso:**
  1. Ingresar a `Registro Letras` y presionar `Nuevo (F2)`.
  2. En cabecera, registrar la fecha de canje, seleccionar el proveedor con el buscador y elegir el centro de costos.
  3. En la sub-grilla superior (`Documento(s) por Pagar`), presionar **`[ Adicionar ]`** para abrir el modal `Documentos x Pagar Cliente`, seleccionando las facturas comerciales a extinguir.
  4. En la sub-grilla inferior (`Letra(s) por Pagar`), presionar **`[ Adicionar ]`** para registrar el cronograma acordado: número de letra, fecha de vencimiento y monto nominal de cada cuota.
  5. En la parte inferior, seleccionar la plantilla contable de reclasificación de pasivos y pulsar `Guardar` (reclasifica de Cta. 4212 a Cta. 4231).

#### SOP-04: Procedimiento de Auditoría y Reprogramación en Obligaciones de Pago
* **Pantalla Menú / Título:** `Obligaciones De Pago` $\rightarrow$ Ventana `Obligaciones de Pago`.
* **Responsable:** Analista de Tesorería / Administrador de Cuentas por Pagar.
* **Paso a paso:**
  1. Ingresar a la ventana `Obligaciones de Pago` para cargar el padrón masivo de compromisos pendientes.
  2. Filtrar por fecha de vencimiento o por auxiliar (proveedor) para auditar la deuda exigible a corto plazo.
  3. En caso de reprogramaciones pactadas con proveedores, modificar la fecha de vencimiento (`Fec Venc.`) del comprobante.
  4. Exportar o imprimir la relación de obligaciones vencidas como insumo base para el Comité Semanal de Pagos.

#### SOP-05: Procedimiento de Rendición y Liquidación de Fondo Fijo (Caja Chica)
* **Pantalla Menú / Título:** `Liquidaciones caja` $\rightarrow$ Ventana `Liquidación de Fondo Fijo`.
* **Responsable:** Custodio del Fondo Fijo / Asistente de CxP.
* **Paso a paso:**
  1. Ingresar a `Liquidaciones caja` y pulsar `Nuevo`.
  2. Seleccionar la `Caja` a liquidar (previamente creada en Fondo de Pago).
  3. En el campo de cuenta contable, presionar `[...]` para desplegar el modal **`Buscador de Cuentas`** y seleccionar la subcuenta de gasto.
  4. En la sub-grilla de detalle, ingresar los comprobantes sustentatorios (vales, boletas, facturas) con importes, fecha y proveedor.
  5. Presionar `Guardar`. El sistema emite el voucher de liquidación, imputa el gasto a la cuenta contable y libera los comprobantes para ser vinculados formalmente en compras.

#### SOP-06: Procedimiento de Parametrización y Alta en Fondo de Pago
* **Pantalla Menú / Título:** `Fondo de pago` $\rightarrow$ Ventana `Fondo de Pago`.
* **Responsable:** Administrador de CxP / Contador General.
* **Paso a paso:**
  1. Ingresar a `Fondo de pago` y seleccionar `Nuevo`.
  2. En `Cuenta`, presionar `[...]` para abrir el modal **`Buscador de Cuentas`** y asignar la cuenta de caja chica del PCGE (Cta. 102).
  3. En `Auxiliar`, presionar `[...]` para abrir el modal **`Buscando Auxiliares...`** y asignar al custodio responsable de la custodia del dinero.
  4. Definir la descripción del fondo (ej. *Caja Chica Emergencia Tacna*), moneda e importe tope autorizado.
  5. Guardar la configuración para habilitar su uso en las liquidaciones operativas.

#### SOP-07: Procedimiento de Provisión de Recibos por Honorarios Médicos
* **Pantalla Menú / Título:** `Provision de recibos por honorarios` $\rightarrow$ Ventana `Provisión de dctos.`.
* **Responsable:** Asistente de Cuentas por Pagar.
* **Paso a paso:**
  1. Ingresar a `Provision de recibos por honorarios` y pulsar `Nuevo (F2)`.
  2. Pulsar `[ Dctos. Recepcionados .. ]` para cargar el Recibo por Honorarios (`RH`) ingresado previamente en Mesa de Partes.
  3. En la pestaña `Provisión`, verificar el importe bruto y constatar la retención del 8% de Impuesto a la Renta de 4ta categoría (o verificar si el médico presentó constancia de suspensión de retenciones de SUNAT).
  4. En la pestaña `Asiento Contable`, cargar la plantilla de honorarios médicos, imputando la cuenta de gasto por servicios médicos prestados (Cta. 632) frente al pasivo (Cta. 424) y la retención tributaria (Cta. 40172).
  5. Verificar cuadre a `0.00` y guardar para alimentar la planilla de médicos y el PLAME.

#### SOP-08: Procedimiento de Provisión de Servicios Públicos y Otros Documentos
* **Pantalla Menú / Título:** `Provisión de otros documentos` $\rightarrow$ Ventana `Provisión de dctos.`.
* **Responsable:** Asistente de Cuentas por Pagar.
* **Paso a paso:**
  1. Ingresar a `Provisión de otros documentos` y presionar `Nuevo (F2)`.
  2. Si el servicio público proviene de una rendición de caja chica, presionar el botón **`[ Dctos. Liquidados ... ]`** y seleccionarlo; si ingresó por mesa de partes, presionar **`[ Dctos. Recepcionados .. ]`**.
  3. En el bloque de importes, utilizar el desglose monetario específico (`Total`, `Ad Valorem`, `Otros`, `Igv`).
  4. En la sub-grilla impositiva, marcar o desmarcar la casilla **`Afecto [X]`** según los conceptos gravados del recibo (ej. luz, agua, telefonía).
  5. En `Asiento Contable`, validar la distribución en las 9 columnas contables y guardar.

#### SOP-09: Procedimiento de Emisión de Órdenes de Pago y Autorizaciones de Anticipo
* **Pantalla Menú / Título:** `Ordenes de Pago` $\rightarrow$ Ventana `Orden de Pago`.
* **Responsable:** Asistente de Cuentas por Pagar / Jefatura Contable.
* **Paso a paso:**
  1. Ingresar a `Ordenes de Pago` y pulsar `Nuevo`.
  2. En el campo `Auxiliar`, presionar `[...]` para abrir el modal **`Buscando Auxiliares...`** (búsqueda por Nombre, RUC o Código Interno) y seleccionar al beneficiario.
  3. Indicar el tipo de orden: cancelación directa de factura o *Giro de Anticipo a Proveedor*.
  4. Consignar importe, moneda y glosa detallada que sustenta el requerimiento de egreso.
  5. Guardar la orden para que quede disponible en Tesorería para emisión de cheque o transferencia.

#### SOP-10: Procedimiento de Regularización y Compensación de Anticipos a Proveedores
* **Pantalla Menú / Título:** `Reg. Anticipos Proveedores` $\rightarrow$ Ventana `Regularización de Anticipos a Proveedores`.
* **Responsable:** Asistente de Cuentas por Pagar / Contador.
* **Paso a paso:**
  1. Ingresar a `Reg. Anticipos Proveedores`.
  2. En `Código`, presionar `[...]` para desplegar el modal **`Buscando Proveedores...`** y seleccionar al proveedor.
  3. En la grilla superior (`Documentos a Cancelar`), presionar el botón **`[ Doc. x Pagar ]`**, filtrar por sede en `Sucursal` y marcar la factura comercial pendiente.
  4. En la grilla inferior (`Orden de Pago`), presionar el botón **`[ Orden de Pago ]`**, activar la casilla `[X] Todas las ordenes de pago` y seleccionar la orden de anticipo previa con saldo a favor.
  5. Verificar el cuadre de importes amortizados y presionar `Guardar`.
  6. El sistema asienta la compensación contable (Cta. 4212 vs. Cta. 422), reduciendo el pasivo exigible y extinguiendo el anticipo.

#### SOP-11: Procedimiento Operativo y Protocolo de Incidencia para Liquidación por Rendir Cuentas
* **Pantalla Menú / Título:** `Liq. Rendir Cuentas` $\rightarrow$ Incidencia nativa `Specify Retrieval Arguments`.
* **Responsable:** Custodio de Fondos a Rendir / Administrador / Soporte TI.
* **Paso a paso y Contingencia:**
  1. *Protocolo de Incidencia:* Al ejecutar la opción, el ERP detiene la carga con el modal de PowerBuilder `Specify Retrieval Arguments (as_empresa)`.
  2. El usuario no debe forzar valores nulos; debe cancelar la ventana y reportar a Soporte TI para la corrección del pase del parámetro global en el ejecutable del SAMI.
  3. *Procedimiento Contingente Operativo:* Mientras TI soluciona el parámetro del menú, las rendiciones de fondos a rendir cuentas deben ser canalizadas y sustentadas transitoriamente a través del procedimiento de `Liquidación de Fondo Fijo` (SOP-05) con imputación a la cuenta contable 141 (Entregas a Rendir Cuenta a Personal/Terceros).

#### SOP-12: Procedimiento de Provisión de Comprobantes de Sujetos No Domiciliados
* **Pantalla Menú / Título:** `Provision no Domiciliados` $\rightarrow$ Ventana `Provisión de dctos.`.
* **Responsable:** Asistente de Cuentas por Pagar / Especialista Tributario.
* **Paso a paso:**
  1. Ingresar a `Provision no Domiciliados` y presionar `Nuevo (F2)`.
  2. Presionar el botón `[ Dctos. Recepcionados .. ]` para cargar el comprobante del exterior (`FE`) o contrato internacional previamente ingresado en Mesa de Partes.
  3. En la pestaña `Provisión`, verificar el importe en moneda extranjera y el tipo de cambio oficial de la fecha de devengo.
  4. En la pestaña `Asiento Contable`, imputar el gasto hospitalario o activo fijo importado, y en las 9 columnas contables consignar en `Tipo dcto.` el código foráneo y en `N° dcto` la numeración del comprobante del exterior.
  5. Imputar la cuenta de retención del Impuesto a la Renta de No Domiciliados (Cta. 40173) según la tasa aplicable por convenio de doble imposición o Ley del Impuesto a la Renta.
  6. Validar cuadre exacto a `0.00` y guardar para sustentar la declaración tributaria y el libro de compras de no domiciliados.

---

## DOC-05 · Especificación funcional de pantallas

A continuación se detalla la especificación técnica de las 12 opciones del submódulo:

### 1. Recepción de Documentos (Ventana: `Recepción de documentos`)
* **Grilla Principal:**
  * Filtros de vista: Botones de radio `(o) Pendientes` / `( ) Provisionados`; filtros de fecha `Desde` y `Hasta` con botón `[ Filtrar ]`.
  * Columnas: `Codigo`, `Proveedor`, `Documento`, `Nº documento`, `S/.`, `US$`, `Fecha Doc.`, `Estado`, `Descripcion recepcion`, `Usuario`.
  * Menú contextual (Clic Derecho): `Nuevo... (Ctrl+U)`, `Editar (F3)`, `Consultar... (F4)`, `Eliminar (F12)`, `Imprimir... (F5)`, `Importar Excel`, `Cerrar (Ctrl+F4)`.
* **Formulario de Registro (`Nuevo`):**
  * **Sección Proveedor:** `Nº` (autonumérico de recepción), `Fecha Recepción`, `Código` con botón `[...]` que abre el modal `Buscando Proveedores...` (búsqueda por Nombre, RUC o Código), `Nombre`.
  * **Sección Documento:** `Tipo` (combo desplegable de comprobantes), `Serie/Num` (dos campos alfanuméricos), `Moneda` (SOLES/DOLARES), `Descripción`, `Tipo Cambio`, `Fecha`, `Importe`, `Tipo Pago`, `Observacion`.
  * **Sección Custodia:** `Destino` (combo con áreas maestras) y `Responsable` (combo de custodios).
  * **Sección Enlace Logístico:** Selectores de radio `(o) Orden de Compra` con botón selector `[...]`, `( ) Requerimiento`, `( ) Otros`.

### 2. Provisión Documentos (Ventana: `Provisión de dctos.`)
* **Grilla Principal:**
  * Columnas: `Nº Provision`, `R.U.C.`, `Código`, `Proveedor`, `Nº Documento`, `Fec. Dcto.`, `Monto`, `Estado`, `Usuario`, `Descripción de la provisión`.
  * Menú contextual: `Nuevo... (F2)`, `Consultar... (F4)`, `Extornar (F12)`, `Imprimir... (F5)`, `Distribución Orden Taller`, `Anula Comprobantes sin contabilizar`, `Documento de Referencia`, `Cerrar (F10)`.
* **Formulario de Registro (`Nuevo`):**
  * **Cabecera General:** `Nº provisión`, `Dcto.`, `Moneda`, `Nº serie dcto.`, `Nº dcto.`, `Monto`.
  * **Botones de Enlace Superior:**
    * `[ Dctos. Recepcionados .. ]`: Despliega el buscador de comprobantes recepcionados en Mesa de Partes para carga automática.
    * `[ Dctos. Liquidados ... ]`: Abre el buscador de comprobantes rendidos en fondos de caja chica.
  * **Pestaña 1 - `Provisión`:**
    * Campos base: `Nº`, `Fecha`, `Estado: Provisionado`, `Orden/Compra:` con botones `[.....]` y `[Detalles...]`.
    * Datos de crédito: `Glosa`, `Tipo`, `Fec.-Rec`, `Días`, `Fec.Venc`, `Moneda`, `Operación`, `Tipo Cambio`.
    * Desglose Bimonetario: Columnas paralelas `Soles` y `Dolares` con filas `Total`, `Imponible`, `Exonerado`, `Ajuste`.
    * Sub-grilla impositiva: `Descripcion`, `%`, `Impuesto S/.`.
    * Bloque detracción: Casilla `Detracción: [ ]`, `Constancia` y `Fecha`.
  * **Pestaña 2 - `Asiento Contable`:**
    * Plantilla: `Concepto : Código` y botón `[ Plantilla ]`.
    * **Sub-grilla contable universal de 9 columnas:**
      1. `Cod Cuenta`: Cuenta del PCGE.
      2. `D - H`: Sentido Debe/Haber.
      3. `Imp Soles`: Importe en moneda nacional.
      4. `Imp Dolares`: Importe en moneda extranjera.
      5. `Linea Negocio`: Unidad o línea clínica.
      6. `Código Actividades`: Clasificador funcional hospitalario.
      7. `Descripción contrapartida`: Glosa descriptiva por línea.
      8. `Tipo dcto.`: Código del comprobante de sustento.
      9. `N° dcto`: Serie y numeración del comprobante.
    * Resumen inferior: `Total debe`, `Total haber`, `Diferencia` (control estricto de cuadre a 0.00).

### 3. Registro Letras (Ventana: `Registro de Letras por Pagar`)
* **Grilla Principal:**
  * Columnas: `# Canje`, `Proveedor`, `Moneda`, `Tipo. Cambio`, `# Letras`, `Estado`, `Fecha`.
  * Botones: `Nuevo... (F2)`, `Consultar... (F4)`, `Anular`, `Imprimir... (F5)`, `Cerrar (F10)`.
* **Formulario de Canje:**
  * Cabecera: `Nº de Canje`, `Fecha de Proceso`, Radio `( ) Compra / (o) Venta`, `Tipo Cambio`, `Cantidad Letras`, `Moneda`, `Proveedor`, `Elegir Centro de Costos`.
  * Sub-grilla Superior (`Documento(s) por Pagar`): Columnas `Nº documento`, `Moneda`, `Importe Canje S/.`, `Importe Canje $`. Botón `[ Adicionar ]` que abre el modal `Documentos x Pagar Cliente`.
  * Sub-grilla Inferior (`Letra(s) por Pagar`): Columnas `Nº Letras`, `F. Vencimiento`, `Estado`, `Capital S/.`, `Capital US$`. Botones `[ Adicionar ]` y `[ Eliminar ]`.
  * Contabilización: Selector `Seleccione una plantilla : Concepto : Código` para reclasificación automática (Cta. 4212 a Cta. 4231).

### 4. Obligaciones de Pago (Ventana: `Obligaciones de Pago`)
* **Características:** Monitor masivo de auditoría y control de vencimientos con más de 156,000 registros históricos.
* **Columnas de Grilla:** `Nº Documento`, `Auxiliar`, `Moneda`, `Monto Soles`, `Monto Dolar`, `Fec Venc.`, `Documento` (Boletas, Facturas, Honorarios, Letras).
* **Funcionalidad:** Permite a la Jefatura auditar los saldos exigibles de cartera y reprogramar fechas de vencimiento para la programación semanal de pagos de Tesorería.

### 5. Liquidaciones caja (Ventana: `Liquidación de Fondo Fijo`)
* **Identificación:** La ventana presenta la advertencia oficial: *"Registro de Liquidaciones de Caja Chica únicamente"*.
* **Grilla Principal:**
  * Filtros: Rango de fechas `Desde` y `Hasta` con botón `[ Filtrar ]`.
  * Columnas: `Liquidación`, `Caja`, `Fecha`, `Monto`, `Voucher`, `Estado`.
* **Formulario de Registro:**
  * Cabecera: `Caja` (combo desplegable enlazado con *Fondo de Pago*), `Fecha`, `Voucher` autonumérico generado.
  * Botón selector `[...]` de cuenta contable: Abre la ventana modal **`Buscador de Cuentas`** con opciones de filtro `Por : (o) Todos / ( ) Código / ( ) Descripción` y grilla con `Código` y `Descripción`.
  * Detalle de comprobantes: Sub-grilla con `Item`, `Proveedor`, `Documento`, `Serie-Número`, `Importe` y `Cuenta de Gasto`.
  * Grabación: Emite el voucher contable de liquidación y habilita la importación de sus comprobantes en la provisión.

### 6. Fondo de pago (Ventana: `Fondo de Pago`)
* **Propósito:** Maestro y catálogo de parametrización de las cajas chicas institucionales.
* **Formulario y Modales:**
  * Campo `Cuenta` con botón selector `[...]`: Abre el modal **`Buscador de Cuentas`** para asignar la subcuenta contable de fondos fijos (Cta. 102).
  * Campo `Auxiliar` con botón selector `[...]`: Abre el modal **`Buscando Auxiliares...`** con filtros de búsqueda por `Nombre ó Razon social`, `RUC` o `Código Interno` para designar al custodio responsable de la caja.
  * Campos de control: `Código de Fondo`, `Descripción`, `Moneda`, `Monto Límite / Tope Máximo`.

### 7. Provisión de recibos por honorarios (Ventana: `Provisión de dctos.`)
* **Propósito:** Provisión de Recibos por Honorarios médicos y profesionales (`RH`).
* **Comportamiento:** Utiliza la ventana estándar `Provisión de dctos.`, aplicando la retención del Impuesto a la Renta de 4ta categoría (8%) sobre honorarios que superen el límite legal, registrando la cuenta de gasto por servicios prestados y el pasivo médico correspondiente.

### 8. Provisión de otros documentos (Ventana: `Provisión de dctos.`)
* **Propósito:** Registro de comprobantes especiales como Servicios Públicos (`SP`), Notas de Crédito (`NC`) y Notas de Débito (`ND`).
* **Diferenciación Técnica:**
  * En el bloque de desglose monetario maneja filas específicas: `Total`, `Ad Valorem`, `Otros`, `Igv`.
  * En la sub-grilla impositiva incorpora la casilla de verificación **`Afecto [X]`** para discriminar cargos afectos de conceptos inafectos o no gravados.
  * Enlace con fondos fijos a través del botón `[ Dctos. Liquidados ... ]`.

### 9. Órdenes de Pago (Ventana: `Orden de Pago`)
* **Grilla Principal:**
  * Filtro de auditoría: Combo superior `Usuario :` para segregar las órdenes por operador o visualizar el padrón global.
  * Columnas: `Nº Orden`, `Fecha`, `Beneficiario`, `Moneda`, `Monto`, `Estado`, `Glosa`.
* **Formulario de Registro:**
  * Campo `Auxiliar` con botón `[...]`: Abre el modal **`Buscando Auxiliares...`** (búsqueda por Nombre, RUC o Código).
  * Campos: `Fecha de Emisión`, `Moneda`, `Importe`, `Concepto / Glosa`.
  * Opciones de destino: Marca si la orden se emite como *Pago Directo de Factura* o como *Giro de Anticipo a Proveedor*.

### 10. Reg. Anticipos Proveedores (Ventana: `Regularización de Anticipos a Proveedores`)
* **Propósito:** Cruce, compensación y amortización de anticipos otorgados frente a comprobantes fiscales emitidos.
* **Cabecera:** `Año : 2026`, `Mes : 10`, `Fecha Proceso`, `Código Proveedor` con botón `[...]` que abre el modal **`Buscando Proveedores...`** (Nombre, RUC, Código) y refleja la Razón Social.
* **Estructura de Doble Grilla y Modales:**
  1. **Grilla Superior (`Documentos a Cancelar`):**
     * Columnas: `Item`, `Cuenta`, `No Documento`, `Monto Orig.`, `Moneda`, `Monto S/`, `Monto $`, `D / H`.
     * Botón **`[ Doc. x Pagar ]`**: Abre el modal **`Documentos x Pagar`** filtrado por `Sucursal` (ej. sede Tacna) para seleccionar las facturas comerciales pendientes de saldo.
  2. **Grilla Inferior (`Orden de Pago`):**
     * Columnas: `Item`, `Cuenta`, `Año-Mes-Nº Orden`, `Moneda`, `Saldo Soles`, `Saldo Dólares`, `Glosa`.
     * Botón **`[ Orden de Pago ]`**: Abre el modal **`Ordenes de Pago`** con la casilla `[X] Todas las ordenes de pago` para seleccionar los desembolsos de anticipo previos que tienen saldo a favor de la clínica.
  * **Efecto Contable:** Al guardar, genera el voucher de reclasificación extinguiendo la cuenta por pagar (4212) contra la cuenta de anticipos (422).

### 11. Liq. Rendir Cuentas (Ventana: Incidencia `Specify Retrieval Arguments`)
* **Estado Operativo:** Bloqueado por incidencia de software en el ERP SAMI.
* **Diagnóstico Técnico:** Al invocar la opción del árbol, la ventana no abre de forma directa y dispara la ventana modal de PowerBuilder:
  * Título: `Specify Retrieval Arguments`
  * Argumento: `Position: 1`, `Name: as_empresa`, `Type: String`, `Value: [ ] [X] Null`.
* **Causa raíz:** Omisión del pase de la variable global de empresa activa al DataWindow. Se encuentra catalogado como incidencia técnica prioritaria.

### 12. Provisión no Domiciliados (Ventana: `Provisión de dctos.`)
* **Propósito:** Registro tributario de comprobantes emitidos por sujetos no domiciliados en el país (`FE` - Facturas del Exterior) y contratos internacionales con cálculo de retención de renta de no domiciliados.
* **Comportamiento y Estructura:**
  * Comparte la ventana estándar `Provisión de dctos.` y la **sub-grilla universal de 9 columnas** en la pestaña *Asiento Contable*.
  * En la grilla principal de consulta, la columna de auditoría se identifica como `Provisionado por:` (o `Usuario`).
  * En la pestaña *Asiento Contable*, los campos `Tipo dcto.` y `N° dcto` permiten sustentar con exactitud la serie y correlativo del comprobante foráneo y la retención del impuesto a la renta (Cta. 40173).

---

## DOC-06 · Manual de usuario guiado por controles del sistema

### Operación 1: Cómo registrar un comprobante en Recepción de Documentos
1. Abra el ERP Dialyma, ingrese a `Cuentas por Pagar › Movimientos › Recepcion de Documentos`.
2. Haga clic derecho sobre cualquier punto de la grilla y pulse **`Nuevo... (Ctrl+U)`**.
3. En la sección *Proveedor*, presione el botón **`[...]`** al costado de `Código`. Se abrirá la ventana modal **`Buscando Proveedores...`**.
4. En el campo `Por :`, elija si desea buscar por *Nombre ó Razon social* o por *RUC*. Digite el valor y pulse **`[ Buscar ]`**.
5. Seleccione al proveedor en la lista y presione **`[ Aceptar ]`**.
6. En la sección *Documento*, seleccione el `Tipo` (ej. FACTURA POR PAGAR), ingrese la serie y número en `Serie/Num`, seleccione la `Moneda` y digite el `Importe`.
7. En la sección *Asociación*, marque la casilla de radio **`(o) Orden de Compra`** y presione **`[...]`** para ubicar y vincular la O/C autorizada.
8. En `Destino` y `Responsable`, seleccione el área física y el empleado custodio.
9. Presione **`Aceptar`**. El sistema almacenará el documento y aparecerá en la grilla con estado `Pendiente`.

### Operación 2: Cómo realizar una Provisión con Importación Asistida
1. Ingrese a `Cuentas por Pagar › Movimientos › Provision Documentos`.
2. Presione la tecla **`F2`** o haga clic en **`Nuevo`**.
3. En la parte superior de la ventana, pulse el botón **`[ Dctos. Recepcionados .. ]`**.
4. En el modal emergente, busque y seleccione el comprobante registrado previamente en Recepción y pulse `Aceptar`.
5. Observe que el sistema rellenará automáticamente la serie, número, proveedor, fecha, moneda e importe imponible.
6. En la pestaña **`Provisión`**, si el servicio está afecto a detracción tributaria, marque la casilla **`Detracción: [X]`** y registre el número de la constancia de depósito y la fecha del Banco de la Nación.
7. Pase a la pestaña **`Asiento Contable`**. En el campo `Concepto : Código`, seleccione la plantilla contable o pulse el botón **`[ Plantilla ]`**.
8. Verifique en la sub-grilla las 9 columnas contables (`Cod Cuenta`, `D-H`, `Imp Soles`, `Imp Dolares`, `Linea Negocio`, `Código Actividades`, `Descripción contrapartida`, `Tipo dcto.` y `N° dcto`).
9. Compruebe que el campo **`Diferencia`** marque estrictamente **`0.00`**.
10. Presione el botón **`Guardar`**. El sistema emitirá el número de provisión contable y actualizará la cartera de obligaciones.

### Operación 3: Cómo liquidar una Caja Chica y generar su Voucher
1. Ingrese a `Cuentas por Pagar › Movimientos › Liquidaciones caja`.
2. Presione **`Nuevo`**.
3. En el campo `Caja`, seleccione el fondo fijo correspondiente (previamente definido en *Fondo de Pago*).
4. En el campo de cuenta contable, presione el botón **`[...]`** para abrir el modal **`Buscador de Cuentas`**, busque la subcuenta de gasto correspondiente y pulse `Aceptar`.
5. Ingrese los comprobantes gastados con sus importes y proveedores.
6. Presione **`Guardar`**. El ERP generará el voucher de fondo fijo y los comprobantes quedarán habilitados para enlazarse en las provisiones mediante el botón **`[ Dctos. Liquidados ... ]`**.

### Operación 4: Cómo regularizar un Anticipo frente a una Factura
1. Ingrese a `Cuentas por Pagar › Movimientos › Reg. Anticipos Proveedores`.
2. En el campo `Código`, presione **`[...]`** para buscar y seleccionar al proveedor beneficiario.
3. En la grilla superior (*Documentos a Cancelar*), pulse el botón **`[ Doc. x Pagar ]`**, elija la sede hospitalaria en `Sucursal` y presione `Aceptar` sobre la factura pendiente.
4. En la grilla inferior (*Orden de Pago*), pulse el botón **`[ Orden de Pago ]`**, verifique que esté marcada la opción `[X] Todas las ordenes de pago`, y seleccione el anticipo que cuenta con saldo a favor.
5. Verifique que los importes cuadren y presione **`Guardar`**. El sistema efectuará el cruce contable y cancelará la obligación.

---

## DOC-07 · Matriz RACI de Movimientos

| Opción de Pantalla | Asistente de Mesa de Partes | Asistente de CxP | Encargado de Caja Chica | Tesorería / Pagos | Contador General |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **1. Recepción de Documentos** | **R** | **C** | I | I | **A** |
| **2. Provisión Documentos (Facturas)** | I | **R** | I | I | **A** |
| **3. Registro de Letras** | I | **R** | I | **C** | **A** |
| **4. Obligaciones de Pago** | I | **C** | I | **R** | **A** |
| **5. Liquidaciones caja (Fondo Fijo)** | I | **C** | **R** | **A** | **A** |
| **6. Fondo de pago (Parámetro)** | I | I | **C** | **R** | **A** |
| **7. Provisión Honorarios Médicos** | I | **R** | I | I | **A** |
| **8. Provisión Otros Documentos** | I | **R** | **C** | I | **A** |
| **9. Órdenes de Pago** | I | **R** | I | **A** | **A** |
| **10. Reg. Anticipos Proveedores** | I | **R** | I | **C** | **A** |
| **11. Liq. Rendir Cuentas** *(En soporte)* | I | **C** | **R** | **A** | **A** |
| **12. Provisión No Domiciliados** | I | **R** | I | I | **A** |

*Leyenda:* **R:** Responsable de ejecutar la tarea | **A:** Aprobador final de la transacción | **C:** Consultado durante el registro | **I:** Informado del resultado.

---

## DOC-08 · Roles y permisos de acceso

| Perfil de Usuario | Recepción de Documentos | Provisiones (Facturas, RH, Otros, No Domiciliados) | Liquidación de Caja y Fondo de Pago | Órdenes de Pago y Anticipos | Obligaciones y Letras |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Mesa de Partes / Almacén** | Acceso total (`Nuevo`, `Editar`, `Imprimir`) | Sin acceso | Sin acceso | Sin acceso | Sin acceso |
| **Asistente de CxP** | Solo consulta (`F4`) | Acceso total (`Nuevo`, `Guardar`, `Plantilla`) | Solo consulta de liquidaciones | Registro de Órdenes y Regularización de Anticipos | Registro de Letras y consulta de Obligaciones |
| **Custodio de Caja Chica** | Sin acceso | Sin acceso | Registro en `Liquidación de Fondo Fijo` | Sin acceso | Sin acceso |
| **Analista de Tesorería** | Sin acceso | Solo consulta (`F4`) | Consulta de fondos asignados | Aprobación de Órdenes de Pago y emisión de cheques | Consulta de Obligaciones para programación de pagos |
| **Contador General / TI** | Auditoría y control total | Aprobación, Extorno (`F12`) y anulación de comprobantes | Parametrización de cuentas y aprobación de fondos | Supervisión de anticipos y cierres | Auditoría y reclasificación de carteras |

---

## DOC-09 · Modelo de integración con otros módulos

La interoperabilidad del submódulo Movimientos con el ecosistema ERP Dialyma se resume en la siguiente matriz funcional:

| Módulo Externo | Pantalla / Proceso de CxP con el que Conecta | Sentido | Datos y Flujo de Intercambio |
| :--- | :--- | :---: | :--- |
| **Logística / Abastecimiento** | `Recepción de Documentos` y `Provisión Documentos` | $\longleftarrow$ | Importación de Órdenes de Compra (`O/C`), guías de remisión valorizadas y comprobación de precios unitarios y cantidades recibidas. |
| **Caja Chica / Fondos Fijos** | `Liquidaciones caja` $\rightarrow$ `Provisión de dctos.` | $\longleftrightarrow$ | Los comprobantes rendidos por caja chica se transfieren a las provisiones mediante `[ Dctos. Liquidados ... ]` para sustentar crédito fiscal. |
| **Contabilidad General (PCGE)** | Pestaña `Asiento Contable` en todas las provisiones | $\longrightarrow$ | Asientos contables automáticos en el Libro Diario con control estricto de partida doble en 9 columnas, alimentando el Registro de Compras Electrónico (SIRE). |
| **Tesorería y Bancos** | `Órdenes de Pago` y `Obligaciones de Pago` | $\longrightarrow$ | Las órdenes de pago autorizadas alimentan las planillas de egreso bancario, emisión de cheques y débito en cuentas corrientes. |
| **Anticipos y Créditos** | `Reg. Anticipos Proveedores` | $\longleftrightarrow$ | Amortización contable de la cuenta 4212 contra la cuenta 422, garantizando que Tesorería no efectúe sobrepagos a proveedores. |
| **SUNAT / Tributario** | Bloque `Impuestos` y `Detracción` en Provisiones | $\longrightarrow$ | Generación de la información de soporte para la declaración mensual del PDT 621, PLAME (retención 4ta) y pagos SPOT en Banco de la Nación. |

---

## DOC-10 · Catálogo de reportes y salidas del sistema

| Pantalla | Función / Comando | Tipo de Salida | Contenido y Destino Operativo |
| :--- | :--- | :--- | :--- |
| **Recepción de Documentos** | `Imprimir... (F5)` / Menú contextual | Reporte impreso / Formato de control | Hoja de ruta física con sello de recepción, código asignado, custodio y área de destino para adjuntar al expediente de pago. |
| **Provisión de dctos.** | `Imprimir... (F5)` | Voucher de Provisión Contable | Asiento contable de compras generado con detalle de cuentas contables, centros de costo, base imponible, IGV y total liquidado. |
| **Liquidación de Fondo Fijo** | Botón de impresión en formulario | Voucher de Liquidación de Caja Chica | Resumen de comprobantes rendidos, asignación de cuentas de gasto y saldo resultante para el reembolso de caja chica. |
| **Obligaciones de Pago** | Visualización en pantalla y exportación | Monitor de Cartera Vencida / Por Vencer | Reporte analítico de facturas, boletas y honorarios pendientes clasificados por fecha de vencimiento y proveedor. |
| **Registro de Letras** | `Imprimir... (F5)` | Acta de Canje de Letras de Cambio | Detalle de las facturas comerciales amortizadas y el cronograma de vencimiento de las letras giradas con su respectivo valor nominal. |
| **Órdenes de Pago** | Botón de impresión de orden | Autorización de Giro de Egreso | Formato de autorización formal firmado para que Tesorería procese la emisión de cheque o transferencia interbancaria. |

---

## DOC-11 · Plan de pruebas de aceptación (Casos de prueba UAT)

### Caso UAT-CXP-M01: Recepción e importación de comprobante mercantil
* **Objetivo:** Verificar que un comprobante ingresado en Recepción de Documentos pueda ser importado en Provisión sin redigitar información.
* **Datos de prueba:** Factura con proveedor de prueba, serie `F001`, correlativo `0004521`, importe `S/. 1,180.00`.
* **Pasos:**
  1. Ingresar a `Recepción de Documentos`, dar clic en `Nuevo`, seleccionar proveedor, ingresar datos y guardar.
  2. Abrir `Provisión Documentos`, pulsar `F2 (Nuevo)` y pulsar el botón `[ Dctos. Recepcionados .. ]`.
  3. Seleccionar la factura en el modal y pulsar `Aceptar`.
* **Resultado Esperado:** Todos los campos de cabecera (`Proveedor`, `Serie`, `Número`, `Fecha`, `Monto`) se cargan de forma íntegra e instantánea. Estado del documento en Recepción pasa de `Pendiente` a `Provisionado`.

### Caso UAT-CXP-M02: Validación de cuadre estricto en Asiento Contable
* **Objetivo:** Comprobar que el motor contable impide el guardado de provisiones si la sub-grilla contable no tiene cuadre exacto a 0.00.
* **Datos de prueba:** Factura con importe de `S/. 1,000.00` donde el Haber suma 1,000.00 y el Debe suma 950.00 (diferencia 50.00).
* **Pasos:**
  1. En `Provisión de dctos.`, pasar a la pestaña `Asiento Contable`.
  2. Modificar una línea de gasto de forma manual para forzar un descuadre de 50.00 soles.
  3. Observar el campo inferior `Diferencia` e intentar pulsar el botón `Guardar`.
* **Resultado Esperado:** El sistema bloquea la grabación y emite mensaje de advertencia impidiendo asentar un voucher descuadrado.

### Caso UAT-CXP-M03: Regularización de Anticipo frente a Factura Pendiente
* **Objetivo:** Verificar la amortización de pasivos contra anticipos girados previamente a proveedores.
* **Datos de prueba:** Proveedor con factura pendiente de `S/. 5,000.00` y orden de anticipo previa de `S/. 2,000.00`.
* **Pasos:**
  1. Ingresar a `Reg. Anticipos Proveedores`, seleccionar al proveedor mediante el modal `[...]`.
  2. En la grilla superior, pulsar `[ Doc. x Pagar ]` y cargar la factura de 5,000.00.
  3. En la grilla inferior, pulsar `[ Orden de Pago ]`, verificar saldo del anticipo de 2,000.00 y seleccionarlo.
  4. Pulsar `Guardar`.
* **Resultado Esperado:** El sistema genera el asiento contable de compensación (Cta. 4212 vs. 422 por 2,000.00 soles), reduce el saldo exigible de la factura a 3,000.00 soles en `Obligaciones de Pago` y extingue el saldo del anticipo en Tesorería.

---
*Este paquete de documentación constituye la especificación funcional y operativa oficial del submódulo Movimientos de Cuentas por Pagar para Clínica La Luz SAC, estructurado para su posterior conversión a formato editable institucional.*

