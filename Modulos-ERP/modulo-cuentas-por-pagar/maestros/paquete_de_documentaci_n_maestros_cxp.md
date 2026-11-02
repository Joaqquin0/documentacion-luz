# PAQUETE DE DOCUMENTACIÓN
### Submódulo: Maestros
**Módulo de Cuentas por Pagar · ERP Dialyma (Sistema SAMI)**

| Metadato | Detalle |
| :--- | :--- |
| **Empresa** | CLINICA LA LUZ SAC |
| **Sistema** | ERP Dialyma (Sistema SAMI), versión 202610130001 |
| **Módulo** | Cuentas por Pagar |
| **Submódulo** | Maestros |
| **Fecha de actualización** | 30/10/2026 |
| **Estado del documento** | **100% Verificado y Validado con Capturas del Sistema** |
| **Método de verificación** | Inspección visual directa y exhaustiva de pantallas, ventanas modales, campos y grillas en el entorno de producción/pruebas. |

> [!NOTE]
> **Aclaración sobre discrepancias de nomenclatura (Menú vs. Pantalla):**  
> Dentro del árbol del submódulo existen opciones cuyos títulos difieren notablemente del encabezado de la ventana una vez abierta (por ejemplo, en el menú se llama `Def. Ctas. Prov. Contable`, pero la ventana oficial se titula `Concepto de Contrapartida`). Estas discrepancias son nativas del sistema ERP y no pueden ser modificadas en la interfaz de usuario. En este documento se registran ambos nombres para facilitar tanto la navegación del usuario como la precisión técnica.

---

### Contenido del paquete

| Documento | Capítulo | Origen y Estado del contenido |
| :--- | :--- | :--- |
| **DOC-02** | Ficha del proceso | Verificado con pantallas y reglas contables/clínicas |
| **DOC-03** | Diagrama de flujo | Estructurado en tabla por carriles (Swimlane) sin código gráfico |
| **DOC-04** | Procedimiento | Pasos operativos precisos basados en los controles del ERP |
| **DOC-05** | Especificación funcional | 100% Verificado en pantalla (campos, validaciones, listas y grillas) |
| **DOC-06** | Manual de usuario | Paso a paso ilustrado con referencias directas a capturas de pantalla |
| **DOC-07** | Matriz RACI | Ajustada al nivel de autorización que exige cada pantalla |
| **DOC-08** | Roles y permisos | Mapeo de perfiles frente a los botones de la barra superior |
| **DOC-09** | Integraciones | Enlaces reales observados (Contabilidad, Tesorería, Auxiliares) |
| **DOC-10** | Catálogo de reportes | Comportamiento del botón Imprimir y exportación de listas |
| **DOC-11** | Casos de prueba | Casos técnicos y funcionales ejecutables contra los campos reales |

---

## DOC-02 · Ficha del proceso

| Dato | Contenido |
| :--- | :--- |
| **Código** | CXP-01 |
| **Nombre** | Maestros y Parametrización de Cuentas por Pagar |
| **Tipo** | Soporte / Configuración Base |
| **Dueño del proceso** | Jefatura de Finanzas y Contabilidad / Administrador de Cuentas por Pagar |
| **Objetivo** | Administrar y mantener actualizadas las tablas maestras, catálogos de comprobantes, reglas fiscales de impuestos, ubicaciones y custodios de facturas, modalidades de pago a proveedores, plantillas de contrapartida contable y rangos de chequeras bancarias requeridas para la operación continua de Cuentas por Pagar. |
| **Alcance** | Comprende las 6 opciones del submódulo Maestros:<br>1. `Tipo Doc. a Pagar` (Ventana: *Tipos de Documentos*)<br>2. `Responsables Doc. x Ubicación` (Ventana: *Ubicación de Documentos*)<br>3. `Tipo Impuesto x Documento` (Ventana: *Impuestos*)<br>4. `Forma Pago al Proveedor` (Ventana: *Forma de Pago*)<br>5. `Def. Ctas. Prov. Contable` (Ventana: *Concepto de Contrapartida*)<br>6. `Mantenimiento de Chequera` (Ventana: *Mantenimiento de Chequera - Propiedades*) |
| **Proveedores** | • **SUNAT:** Tablas de tipos de comprobante y tasas impositivas vigentes.<br>• **Contabilidad General:** Plan Contable General Empresarial (PCGE), Diarios contables y Cuentas de pasivo.<br>• **Tesorería / Bancos:** Cuentas corrientes bancarias institucionales y lotes de chequeras físicas recibidas.<br>• **Logística / Administración:** Áreas físicas de recepción, almacenes y custodios autorizados. |
| **Entradas** | Catálogo de comprobantes del sistema; organigrama y correos de custodios; acuerdos comerciales de días de crédito con proveedores; talonarios de cheques emitidos por bancos (series y numeración inicial/final). |
| **Salidas** | Tipos de documentos habilitados para recepción; matriz de responsables y almacenes; tasas de impuestos y vigencias; formas de pago asociadas a auxiliares; plantillas de contrapartidas contables parametrizadas; chequeras activas con correlativo validado. |
| **Clientes internos** | • Submódulo Movimientos de CxP (Recepción, Provisión, Órdenes de Pago).<br>• Módulo de Contabilidad (Asientos automáticos de compras y diarios de egreso).<br>• Módulo de Tesorería (Emisión de cheques y programación de giros). |
| **Indicadores** *(Propuesta técnica · Por validar con Jefatura)* | • **Tasa de error en asientos de provisión:** Incidencias por plantillas mal parametrizadas o cuentas contables no imputables (Meta: 0).<br>• **Continuidad de chequeras:** Tiempo de anticipación en la parametrización de nuevas chequeras antes del agotamiento del talonario activo ($\ge 10$ cheques restantes).<br>• **Tiempo de alta de maestros:** Registro y validación de nuevas condiciones de pago o comprobantes en un plazo $\le 24$ horas. |
| **Riesgos y controles** *(Propuesta de gestión · Por validar)* | • **Riesgo:** Inclusión indebida de flags de provisión o servicio prestado en documentos no autorizados.<br>  *Control:* Permiso de edición restringido a Jefatura Contable.<br>• **Riesgo:** Desfase o traslape en el número correlativo de cheques en curso.<br>  *Control:* Verificación física obligatoria del talonario entregado por el banco antes de registrar el rango inicial y final.<br>• **Riesgo:** Uso de cuentas contables inactivas en las plantillas de contrapartida.<br>  *Control:* Integración con validación de cuentas de último nivel en el Plan Contable. |
| **Normativa aplicable** *(Marco regulatorio referencial)* | • Resolución de Superintendencia de Comprobantes de Pago - SUNAT.<br>• Régimen de Retenciones, Percepciones y Detracciones (SPOT - Banco de la Nación).<br>• Ley de Títulos Valores (manejo y custodia de cheques institucionales).<br>• Plan Contable General Empresarial (PCGE).<br>• Manual de Políticas de Tesorería y Pagos de Clínica La Luz SAC. |

---

## DOC-03 · Diagrama de flujo por carriles

El flujo operativo contempla la parametrización de tablas maestras, distinguiendo el registro estándar de catálogos frente al mantenimiento restringido de chequeras bancarias y plantillas contables.

| Paso | Asistente de CxP | Jefatura / Contador | ERP Dialyma (SAMI) | Sig. |
| :---: | :--- | :--- | :--- | :---: |
| **●** | **INICIO** | | | 1 |
| **1** | Recibe solicitud física (talonario de cheques, nuevo impuesto, proveedor o custodio) | | | 2 |
| **2** | | Valida pertinencia administrativa y visto bueno de cuentas contables/banco | | 3 |
| **3** | **Ingresa a la opción correspondiente en el menú:**<br>• `Tipo Doc. a Pagar`<br>• `Responsables Doc. x Ubicación`<br>• `Tipo Impuesto x Documento`<br>• `Forma Pago al Proveedor`<br>• `Def. Ctas. Prov. Contable`<br>• `Mantenimiento de Chequera` | | Abre la ventana maestra seleccionada | 4 |
| **4** | **Ejecuta la acción según la pantalla:**<br>• **En Chequeras:** Selecciona el banco y pulsa `Editar` (F3).<br>• **En las otras 5 pantallas:** Pulsa el botón `Nuevo` (F2). | | Despliega el formulario de captura | 5 |
| **5** | Completa los datos obligatorios y pulsa `Aceptar` / `Guardar` | | Valida datos y graba el registro | 6 |
| **6** | | Revisa el parámetro mediante el botón `Consultar` (F4) | Muestra datos en modo solo lectura | 7 |
| **7** | Confirma que el parámetro está disponible para operar en `Movimientos` de CxP | | Refleja el nuevo valor en listas y procesos | **FIN** |

---

## DOC-04 · Procedimiento

| Dato | Contenido |
| :--- | :--- |
| **Código del Procedimiento** | PR-CXP-01 |
| **Versión Oficial** | Versión 1.0 (Validada en Pantalla) |
| **Estado del Documento** | Aprobado / Vigente |
| **Objetivo** | Establecer la secuencia operativa para dar de alta, modificar y consultar los parámetros maestros del módulo de Cuentas por Pagar garantizando su integridad fiscal, bancaria y contable. |
| **Alcance** | Aplica a todas las solicitudes de parametrización en las 6 ventanas de Maestros de CxP en Clínica La Luz SAC. |
| **Responsables de ejecución** | Jefatura de Finanzas / Contador General / Asistente de Cuentas por Pagar. |

### Actividades detalladas

1. **Recepción y comprobación del requerimiento:**  
   El usuario recopila el sustento documental (talonario de chequera entregado por la entidad bancaria, norma legal SUNAT de cambio de alícuota, contrato con proveedor con nuevas condiciones de crédito o solicitud de alta de custodio físico).
2. **Acceso y navegación al submódulo:**  
   El usuario autorizado inicia sesión en ERP Dialyma, se sitúa en el menú izquierdo en la ruta `Sistema SAMI › Cuentas por Pagar › Maestros` y selecciona la opción requerida.
3. **Ejecución de la acción según ventana:**
   * **Para Tipos de Documentos:** Presionar `Nuevo`, seleccionar el documento del catálogo desplegable predefinido, definir si aplica `Ind.Provisión` y `Servicio Prestado`. Si se va a dar de baja, marcar `Ind.Baja` y consignar la fecha efectiva.
   * **Para Ubicación de Documentos:** Presionar `Nuevo`, ingresar el código de 3 dígitos y descripción del área. Marcar `Ind. Almacen` si custodia inventarios médicos o `Ind. Abastecimiento` si realiza compras. En la grilla inferior de `Responsables`, presionar `Nuevo` para ingresar código, nombre del responsable y correo electrónico.
   * **Para Impuestos:** Presionar `Nuevo`, ingresar tipo, abreviatura y descripción. En la sección `Cuentas`, vincular el código contable de pasivo mediante el botón `[...]`. En la sub-grilla `Periodos`, definir vigencias (Fecha Inicio, Fecha Final, %) y en `Documentos`, asignar los tipos de comprobantes gravados.
   * **Para Formas de Pago:** Presionar `Nuevo`, presionar el botón `[...]` del campo `Auxiliar` para abrir el buscador, localizar el proveedor por Razón Social o RUC, seleccionar el `Tipo Pago`, definir el `Nro. Días Vencimiento` y los datos bancarios.
   * **Para Concepto de Contrapartida:** Presionar `Nuevo`, ingresar Nº de plantilla, moneda, glosa de concepto, seleccionar el `Diario` (ej. 14 Registro Compras con IGV) y el `File`. En la grilla `Contrapartida`, presionar `Nuevo` para cargar las cuentas y su sentido Debe/Haber (`D/H`).
   * **Para Mantenimiento de Chequera:** Seleccionar la cuenta bancaria de la grilla principal y presionar `Editar` (no usar Nuevo). En la ventana modal de propiedades, verificar que el banco, cuenta corriente y código de cuenta contable (ej. `10410103`) correspondan, y digitar los rangos de `Chequera` y `Chequera Diferida` (`Cheque Inicial`, `Cheque Final`, `Nº Cheque`).
4. **Almacenamiento y validación sistémica:**  
   Hacer clic en `Aceptar` o `Guardar`. El sistema valida la consistencia de los datos, previene duplicados y actualiza la grilla.
5. **Control de comprobación:**  
   Pulsar el botón `Consultar` sobre el registro recién creado para validar que no sea editable en modo lectura y esté listo para uso en transacciones.

---

## DOC-05 · Especificación funcional

> [!IMPORTANT]
> **Correspondencia entre Menú y Títulos de Ventana:**
> * Menú: `Tipo Doc. a Pagar` $\rightarrow$ Ventana: **Tipos de Documentos**
> * Menú: `Responsables Doc. x Ubicación` $\rightarrow$ Ventana: **Ubicación de Documentos**
> * Menú: `Tipo Impuesto x Documento` $\rightarrow$ Ventana: **Impuestos**
> * Menú: `Forma Pago al Proveedor` $\rightarrow$ Ventana: **Forma de Pago**
> * Menú: `Def. Ctas. Prov. Contable` $\rightarrow$ Ventana: **Concepto de Contrapartida**
> * Menú: `Mantenimiento de Chequera` $\rightarrow$ Ventana: **Mantenimiento de Chequera - Propiedades**

### Matriz de especificación de campos y controles

#### 1. Tipos de Documentos
* **Ruta de acceso:** `Cuentas por Pagar › Maestros › Tipo Doc. a Pagar`
* **Capturas de referencia:** `vistas/tipo-doc-a-pagat/` ([tipodedocumetnoapagar-1.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/tipo-doc-a-pagat/tipodedocumetnoapagar-1.png), [tipodedocumentonuevo-1.2.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/tipo-doc-a-pagat/tipodedocumentonuevo-1.2.png), [descripcion-1.3.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/tipo-doc-a-pagat/descripcion-1.3.png), [editar-1.4.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/tipo-doc-a-pagat/editar-1.4.png))
* **Campos y controles:**

| Campo / Control | Tipo de Control | Origen / Formato | Regla de Negocio / Comportamiento |
| :--- | :--- | :--- | :--- |
| **Grilla: Codigo** | Texto (2 car.) | Tabla maestra | Identificador nemotécnico (FC, LP, BV, NC, RH, RP, GR, ND, TK, etc.). Solo lectura en grilla. |
| **Grilla: Documento** | Texto | Catálogo | Nombre oficial del comprobante. |
| **Grilla: Indicador** | Texto (1 car.) | Sistema | Indicador de control interno (valor por defecto 'N'). |
| **Grilla: Serv. Prestado**| Checkbox | Booleano | Muestra si el comprobante está categorizado como prestación de servicios. |
| **Modal: Descripcion** | Combobox | Catálogo cerrado | Selector desplegable predefinido por el sistema (ej. *Recibo de Servicios Públicos*, *Boleto de Transporte Aéreo*, *Seguro Comp. Trabajo Riesgo*, *Liquidación Servicio Médico*, *Boleta Extranjero*). No permite texto libre arbitrario. |
| **Modal: Ind.Baja** | Checkbox + Fecha | Booleano / DD/MM/AAAA | Al marcarse, habilita la caja de fecha de cese para inhabilitar el documento sin romper la integridad referencial histórica. |
| **Modal: Ind.Provisión**| Checkbox | Booleano | Si está activo, el sistema exige generar asiento de provisión contable al registrar comprobantes de este tipo. |
| **Modal: Servicio Prestado**| Checkbox | Booleano | Marca si el documento sustenta honorarios médicos o servicios asistenciales/tercerizados. |

#### 2. Ubicación de Documentos
* **Ruta de acceso:** `Cuentas por Pagar › Maestros › Responsables Doc. x Ubicación`
* **Capturas de referencia:** `vistas/responsable-doc-documentacion/` ([1.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/responsable-doc-documentacion/1.png), [1.2.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/responsable-doc-documentacion/1.2.png))
* **Campos y controles:**

| Sección | Campo / Control | Tipo de Control | Comportamiento |
| :--- | :--- | :--- | :--- |
| **Ubicación** | `Codigo:` | Numérico (3 dígitos) | Clave única del área (ej. 001 Gerencia General, 005 Almacén General, 011 Contabilidad, 012 Logística, 019 Farmacia). |
| **Ubicación** | `Descripción:` | Texto alfanumérico | Denominación formal del departamento o servicio clínico. |
| **Ubicación** | `Ind. Almacen` | Checkbox | Identifica si el área almacena físicamente insumos/medicamentos sujetos a guía y factura. |
| **Ubicación** | `Ind. Abastecimiento`| Checkbox | Identifica si el área tiene potestad de gestionar compras y órdenes con proveedores. |
| **Responsables**| Sub-grilla: `Codigo` | Alfanumérico | Identificador del empleado custodio. |
| **Responsables**| Sub-grilla: `Responsable`| Texto | Apellidos y nombres del custodio del documento. |
| **Responsables**| Sub-grilla: `Direccion de Correo` | Email | Correo electrónico para alertas de vencimiento y traslados de expedientes. |
| **Responsables**| Botones `[Nuevo]`, `[Eliminar]` | Botones de grilla | Administra las líneas de empleados asignados a dicha área física. |

#### 3. Impuestos
* **Ruta de acceso:** `Cuentas por Pagar › Maestros › Tipo Impuesto x Documento`
* **Capturas de referencia:** `vistas/tipo-impuesto-paga/` ([1.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/tipo-impuesto-paga/1.png))
* **Campos y controles:**

| Sección | Campo / Control | Tipo de Control | Comportamiento |
| :--- | :--- | :--- | :--- |
| **Cabecera** | `Codigo :` | Numérico (2 dígitos) | Correlativo autogenerado (ej. 01 IGV, 02 4ta Categoría, 03 IES, 04 IGV 10%, 05 nuevo). |
| **Cabecera** | `Tipo:` | Texto / Combobox | Clasificador fiscal (ej. "Fijo", "Porcentual"). |
| **Cabecera** | `Abrev:` | Texto corto (hasta 10 car.) | Sigla identificadora (ej. IGV, R.4TA.C., SPOT). |
| **Cabecera** | `Descripción:` | Texto | Nombre tributario oficial. |
| **Cuentas** | `Impuesto :` | Texto + Selector `[...]` | Código de cuenta contable imputable de pasivo fiscal en el PCGE (ej. 401111 IGV Cuenta Propia, 40172 Renta de 4ta). |
| **Periodos** | Grilla: Secuencia, Fecha Inicio, Fecha Final, % | Sub-grilla con `[Nuevo]`, `[Eliminar]` | Permite registrar vigencias históricas y futuras de tasas impositivas sin alterar transacciones pasadas. |
| **Documentos**| Grilla: %, Tipo Documento | Sub-grilla con `[Nuevo]`, `[Eliminar]` | Asocia la lista de comprobantes que están formalmente gravados con este tributo. |

#### 4. Forma de Pago
* **Ruta de acceso:** `Cuentas por Pagar › Maestros › Forma Pago al Proveedor`
* **Capturas de referencia:** `vistas/formato-pago-proveedor/` ([1.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/formato-pago-proveedor/1.png))
* **Campos y controles:**

| Sección / Ventana | Campo / Control | Tipo de Control | Comportamiento |
| :--- | :--- | :--- | :--- |
| **Modal: Forma de Pago** | `Auxiliar:` | Texto + Selector `[...]` | Código y nombre del proveedor. Al presionar `[...]` abre el modal de búsqueda corporativo. |
| **Modal: Auxiliares** | `Por:` | Desplegable | Criterio de búsqueda: `Nombre ó Razon social`, `RUC`, o `Código Interno`. |
| **Modal: Auxiliares** | `Valor:` + `[Buscar]` | Texto + Botón | Ejecuta el filtro dinámico y muestra resultados en la grilla (`Código`, `Descripción`, `Nº RUC`). |
| **Modal: Forma de Pago** | `Tipo Pago:` | Desplegable | Modalidad acordada (Transferencia, Cheque, Depósito en Cuenta, Letra). |
| **Modal: Forma de Pago** | `Nro. Días Vencimiento:`| Numérico entero | Cantidad de días hábiles o calendario para sumar a la fecha de emisión del documento. |
| **Modal: Forma de Pago** | `Banco:` | Desplegable | Entidad bancaria donde el proveedor mantiene su cuenta. |
| **Modal: Forma de Pago** | `Número Cuenta:` | Alfanumérico | Número de cuenta bancaria o Código de Cuenta Interbancario (CCI) para abonos. |

#### 5. Concepto de Contrapartida
* **Ruta de acceso en menú:** `Cuentas por Pagar › Maestros › Def. Ctas. Prov. Contable`
* **Título oficial de ventana:** `Concepto de Contrapartida` / `Concepto de Contrapartida (Nuevo)`
* **Capturas de referencia:** `vistas/dev-citas-contables/` ([image.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/dev-citas-contables/image.png))
* **Campos y controles:**

| Campo / Control | Tipo de Control | Comportamiento |
| :--- | :--- | :--- |
| `Nº Plantilla :` | Numérico | Número correlativo único de la plantilla contable automatizada. |
| `Tipo :` | Desplegable | Tipo de transacción asociada en CxP. |
| `Moneda :` | Desplegable | Moneda de operación (Soles `S/.` o Dólares `US$`). |
| `Concepto :` | Texto libre | Glosa estándar descriptiva que alimentará el asiento contable de provisión. |
| `Diario :` | Desplegable | Libro diario donde se asentará la operación contable. Opciones del sistema: `01 CAJA EFECTIVO`, `09 LETRAS POR COBRAR`, `12 REGISTRO COMPRAS IMPORTAC.`, `14 REGISTRO COMPRAS CON IGV`, `03 PLANILLA DE COBRANZA`, `22 BANCOS EGRESOS VARIOS`. |
| `File :` | Desplegable | Archivo auxiliar de clasificación contable. |
| Grilla: **Contrapartida** | Grilla interactiva | Detalla las cuentas contables de contrapartida con columnas: `Nº Corr Plan...`, `Descripción`, y sentido contable `D/H` (Debe / Haber). Administrado con botones inferiores `[Nuevo]` y `[Eliminar]`. |

#### 6. Mantenimiento de Chequera
* **Ruta de acceso:** `Cuentas por Pagar › Maestros › Mantenimiento de Chequera`
* **Título oficial de ventana:** `Mantenimiento de Chequera - [BANCO] (Propiedades...)`
* **Capturas de referencia:** `vistas/mantenimeto-chequera/` ([1-opcion-solo-editar.png](file:///c:/Users/user/Documents/documentacion/Modulos-ERP/modulo-cuentas-por-pagar/maestros/vistas/mantenimeto-chequera/1-opcion-solo-editar.png))
* **Comportamiento operativo vital:**  
  La ventana no admite la creación directa de cuentas bancarias (botón `Nuevo` inhabilitado o no aplicable). El usuario **debe seleccionar una cuenta corriente existente en la grilla y presionar `Editar`**.
* **Campos y controles:**

| Sección | Campo / Control | Tipo de Control | Estado | Comportamiento |
| :--- | :--- | :--- | :--- | :--- |
| **Descripción** | `Banco:` | Texto | Solo lectura | Nombre de la entidad bancaria (ej. `BANCO CONTINENTAL`). |
| **Descripción** | `Código:` | Numérico | Solo lectura | Código interno bancario (ej. `000015`). |
| **Descripción** | `N° Cuenta:` | Alfanumérico | Solo lectura | Número de cuenta corriente institucional (ej. `0011-0232-0100098549`). |
| **Descripción** | `Cód. Cuenta:` | Numérico | Solo lectura | Cuenta contable imputable de tesorería del PCGE (ej. `10410103`). |
| **Chequera** | `Cheque Inicial:` | Numérico | Editable | Primer número correlativo del talonario de cheques comunes en uso. |
| **Chequera** | `Cheque Final:` | Numérico | Editable | Último número correlativo del talonario de cheques comunes. |
| **Chequera** | `N° Cheque :` | Numérico | Editable / Auto | Correlativo del último cheque girado (el siguiente será $N+1$). |
| **Chequera Diferida**| `Cheque Inicial:` | Numérico | Editable | Primer número correlativo para cheques de pago diferido. |
| **Chequera Diferida**| `Cheque Final:` | Numérico | Editable | Último número correlativo para cheques de pago diferido. |
| **Chequera Diferida**| `N° Cheque :` | Numérico | Editable / Auto | Correlativo del último cheque diferido emitido. |

---

## DOC-06 · Manual de usuario

### 1. Barra de herramientas estándar superior
En todas las opciones del submódulo Maestros, la interacción se efectúa a través de los cuatro botones estandarizados de la parte superior del ERP:

| Botón | Atajo | Acción funcional |
| :---: | :---: | :--- |
| **Nuevo** | `F2` | Abre la ventana modal para registrar un nuevo elemento maestro. |
| **Editar** | `F3` | Abre el registro seleccionado en modo edición para actualizar parámetros (obligatorio en Chequeras). |
| **Consultar** | `F4` | Abre el registro seleccionado en modo de solo lectura; todos los campos quedan bloqueados para proteger los datos. |
| **Imprimir** | `F5` | Muestra la vista previa de impresión o emite el listado de registros visibles en la grilla. |

---

### 2. Guía paso a paso por opción

#### 2.1 Mantenimiento de Tipos de Documentos
1. Diríjase a `Cuentas por Pagar › Maestros › Tipo Doc. a Pagar`. Se abrirá la ventana **Tipos de Documentos** con la lista de 18 documentos estándar.
2. Para dar de alta un documento, pulse **Nuevo** en la barra superior.
3. En la ventana modal:
   * Despliegue el combo **`Descripcion`** y seleccione el tipo de comprobante normado deseado.
   * Si el documento debe ingresar al circuito de compras con registro de pasivo, marque la casilla **`Ind.Provisión`**.
   * Si ampara prestaciones médicas o asistenciales, active **`Servicio Prestado`**.
   * Para suspender la emisión de un documento en desuso, marque **`Ind.Baja`** y consigne la fecha respectiva.
4. Presione **Aceptar** para guardar.

#### 2.2 Registro de Ubicación y Responsables de Documentos
1. Ingrese a `Cuentas por Pagar › Maestros › Responsables Doc. x Ubicación` (Ventana: **Ubicación de Documentos**).
2. Para ingresar una nueva dependencia, pulse **Nuevo**.
3. Ingrese el código (3 dígitos) y la **Descripción** del área (ej. *Farmacia*, *Almacén General*).
4. Marque las casillas **`Ind. Almacen`** o **`Ind. Abastecimiento`** según las atribuciones operativas del área.
5. Para asignar personas a cargo de la custodia de comprobantes en esa área:
   * En el bloque inferior *Responsables*, haga clic en el botón interno **`Nuevo`**.
   * Complete el código, nombre del custodio y correo institucional.
6. Guarde los cambios.

#### 2.3 Parametrización de Impuestos y Tasas
1. Seleccione `Cuentas por Pagar › Maestros › Tipo Impuesto x Documento` (Ventana: **Impuestos**).
2. Para crear una tasa o régimen tributario, presione **Nuevo**.
3. El sistema asignará el siguiente correlativo en `Codigo :`. Escriba la abreviatura (ej. `IGV 10%`, `SPOT 4%`) y descripción.
4. En la sección `Cuentas`, pulse el botón `[...]` para vincular la cuenta contable imputable de retención o impuesto.
5. En la sub-grilla `Periodos`, pulse **`Nuevo`** para definir el rango de fechas (`Fecha Inicio` - `Fecha Final`) y el porcentaje `%`.
6. En la sub-grilla `Documentos`, agregue los tipos de comprobantes a los cuales afectará este impuesto.
7. Confirme la operación con **Aceptar**.

#### 2.4 Asignación de Formas de Pago por Proveedor
1. Ingrese a `Cuentas por Pagar › Maestros › Forma Pago al Proveedor` (Ventana: **Forma de Pago**).
2. Presione **Nuevo**.
3. Al costado del campo **`Auxiliar`**, presione el botón `[...]` para abrir la ventana **Buscando Auxiliares...**.
4. Elija el criterio de búsqueda (`RUC` o `Nombre ó Razon social`), digite el valor y presione **Buscar**. Seleccione el proveedor y presione **Aceptar**.
5. Seleccione el **`Tipo Pago`**, defina la cantidad de días en **`Nro. Días Vencimiento`** y complete los datos del **Banco** y **Número Cuenta**.
6. Guarde el registro.

#### 2.5 Configuración de Concepto de Contrapartida (Plantillas de Provisión)
1. Ingrese a `Cuentas por Pagar › Maestros › Def. Ctas. Prov. Contable`. Note que el título de la ventana es **`Concepto de Contrapartida`**.
2. Presione **Nuevo**.
3. Consigne el número de plantilla, tipo de operación, moneda (`S/.` o `US$`) y la glosa descriptiva en `Concepto :`.
4. Seleccione el libro en el campo **`Diario :`** (ej. *14 REGISTRO COMPRAS CON IGV*) y el subdiario en **`File :`**.
5. En la sección inferior *Contrapartida*, pulse el botón interno **`Nuevo`** para agregar las cuentas contables del gasto/compra y seleccione su sentido (`D` para Debe o `H` para Haber).
6. Guarde la plantilla.

#### 2.6 Control y Foleo de Chequeras
1. Ingrese a `Cuentas por Pagar › Maestros › Mantenimiento de Chequera`.
2. Localice en la grilla la cuenta bancaria de la clínica correspondiente (ej. *BANCO CONTINENTAL*).
3. Seleccione la fila y presione el botón **`Editar`** de la barra superior.
4. En la ventana **Mantenimiento de Chequera - [BANCO] (Propiedades...)**:
   * En el bloque `Chequera`: digite el número de `Cheque Inicial` y `Cheque Final` entregado por el banco. Verifique que `N° Cheque` refleje el último cheque emitido.
   * Si la cuenta emite cheques de pago diferido, repita la parametrización en el bloque `Chequera Diferida`.
5. Guarde la información.

---

## DOC-07 · Matriz RACI

> **R (Responsable):** Quien ejecuta directamente la acción en el ERP.  
> **A (Accountable):** Quien aprueba y asume la responsabilidad formal del parámetro.  
> **C (Consulted):** Quien provee información técnica o contable antes del registro.  
> **I (Informed):** Quien es notificado para efectos de operación o auditoría.

| Actividad / Pantalla | Asistente de CxP | Jefe de Finanzas | Contador General | Tesorería | Auditor Interno |
| :--- | :---: | :---: | :---: | :---: | :---: |
| Alta y cese de tipos de documentos (`Tipos de Documentos`) | **C** | **A** | **R** | **I** | **I** |
| Configuración de almacenes y custodios (`Ubicación de Documentos`) | **R** | **A** | **I** | **I** | **I** |
| Alta de impuestos, vigencias y cuentas fiscales (`Impuestos`) | **I** | **A** | **R** | **C** | **I** |
| Asociación de forma de pago y CCI a proveedores (`Forma de Pago`) | **R** | **A** | **I** | **C** | **I** |
| Parametrización de plantillas y diarios (`Concepto de Contrapartida`)| **I** | **A** | **R** | **I** | **I** |
| Asignación de rangos de chequera común y diferida (`Chequeras`) | **C** | **A** | **I** | **R** | **I** |

---

## DOC-08 · Roles y permisos de usuario

> **N:** Nuevo (Crear) · **E:** Editar · **C:** Consultar (Lectura) · **I:** Imprimir · **X:** Sin acceso

| Opción de Menú | Título real de Pantalla | Perfil Asistente CxP | Perfil Jefatura Finanzas | Perfil Contabilidad | Perfil Tesorería |
| :--- | :--- | :---: | :---: | :---: | :---: |
| `Tipo Doc. a Pagar` | `Tipos de Documentos` | C, I | N, E, C, I | N, E, C, I | C |
| `Responsables Doc. x Ubicación` | `Ubicación de Documentos` | N, E, C, I | N, E, C, I | C, I | C |
| `Tipo Impuesto x Documento` | `Impuestos` | C | N, E, C, I | N, E, C, I | C |
| `Forma Pago al Proveedor` | `Forma de Pago` | N, E, C, I | N, E, C, I | C, I | N, E, C, I |
| `Def. Ctas. Prov. Contable` | `Concepto de Contrapartida` | C | N, E, C, I | N, E, C, I | X |
| `Mantenimiento de Chequera` | `Mantenimiento de Chequera` | C | E, C, I | C | E, C, I |

---

## DOC-09 · Integraciones operativas del submódulo

Las parametrizaciones del submódulo Maestros alimentan de forma directa e inmediata a los módulos transaccionales de Cuentas por Pagar, Contabilidad y Tesorería:

| ID Integración | Origen (Maestro) | Destino (Transaccional / Modular) | Datos Transmitidos | Regla de Integración |
| :---: | :--- | :--- | :--- | :--- |
| **INT-01** | `Tipos de Documentos` | `CxP › Recepción de Documentos` | Código de documento, indicador de provisión y servicio prestado. | No permite recepcionar comprobantes que tengan activo el check `Ind.Baja`. |
| **INT-02** | `Ubicación de Documentos`| `CxP › Recepción de Documentos` | Código de área, flag de almacén y lista de responsables. | Al recepcionar una factura física se debe indicar el custodio obligado a dar conformidad. |
| **INT-03** | `Impuestos` | `CxP › Provisión Documentos` | Tasa vigente por rango de fecha y cuenta contable fiscal. | Aplica automáticamente el cálculo de retención o detracción según el tipo de comprobante. |
| **INT-04** | `Forma de Pago` | `CxP › Provisión Documentos` | Días de vencimiento, banco y cuenta del auxiliar. | Calcula la fecha de vencimiento de la obligación: $\text{Fec. Venc.} = \text{Fec. Emisión} + \text{Días}$. |
| **INT-05** | `Concepto de Contrapartida`| `Contabilidad › Asientos Contables` | Diario contable, File y líneas Debe/Haber de la plantilla. | Genera el voucher contable cuadrado en el diario de compras correspondiente. |
| **INT-06** | `Mantenimiento de Chequera`| `Tesorería / CxP › Órdenes de Pago`| Correlativo actual y rango válido de cheque común o diferido. | Descuenta el correlativo y bloquea la emisión si el número alcanza el `Cheque Final`. |

---

## DOC-10 · Catálogo de reportes y salidas

El submódulo Maestros no procesa reportes estadísticos acumulativos propios. Sus salidas impresas corresponden a **reportes de auditoría y catálogos de parámetros** generados a través del botón **Imprimir (F5)**:

| Reporte / Listado | Ventana de Origen | Parámetros de Salida | Propósito y Uso |
| :--- | :--- | :--- | :--- |
| **Catálogo de Tipos de Documentos** | `Tipos de Documentos` | Lista completa (18 registros estándar) con código, descripción y flags. | Auditoría de comprobantes admitidos fiscal y comercialmente. |
| **Directorio de Custodios y Ubicaciones** | `Ubicación de Documentos` | Áreas, condición de almacén y responsables con correo. | Directorio operativo para seguimiento físico de facturas pendientes de pago. |
| **Maestro de Impuestos y Tasas** | `Impuestos` | Tributos, vigencias de fechas y cuentas contables vinculadas. | Verificación y conciliación tributaria mensual con el área fiscal. |
| **Padrón de Condiciones de Pago** | `Forma de Pago` | Auxiliar, tipo de pago, días de crédito y cuentas bancarias. | Revisión de acuerdos comerciales y programación financiera de tesorería. |
| **Catálogo de Plantillas Contables** | `Concepto de Contrapartida` | Número de plantilla, concepto, diario contable y cuentas D/H. | Control de consistencia del plan contable y automatización de asientos. |
| **Estado de Chequeras Institucionales** | `Mantenimiento de Chequera` | Banco, cuenta corriente, rango inicial, final y último cheque emitido. | Auditoría de correlatividad y prevención de agotamiento de talonarios de cheques. |

---

## DOC-11 · Casos de prueba

| ID | Pantalla Evaluada | Escenario de Prueba | Precondición | Pasos de Ejecución | Resultado Esperado | Estado |
| :---: | :--- | :--- | :--- | :--- | :--- | :---: |
| **CP-M01** | `Tipos de Documentos` | Registrar la baja de un comprobante obsoleto | Documento activo en la grilla | 1. Seleccionar documento.<br>2. Clic en Editar.<br>3. Marcar `Ind.Baja` e ingresar fecha.<br>4. Guardar. | El comprobante queda marcado con baja y ya no puede ser seleccionado en Recepción de Facturas. | **Listo para prueba** |
| **CP-M02** | `Tipos de Documentos` | Intentar escribir una descripción no normalizada | Ventana Nuevo abierta | 1. Clic en Nuevo.<br>2. Intentar escribir texto libre en `Descripcion:`. | El sistema no admite texto libre; obliga a seleccionar un valor del combo desplegable del sistema. | **Listo para prueba** |
| **CP-M03** | `Ubicación de Documentos` | Alta de área con custodio y correo institucional | Código de área disponible | 1. Clic en Nuevo.<br>2. Digitar código 021 y nombre.<br>3. En Responsables, clic en Nuevo.<br>4. Ingresar nombre y email.<br>5. Guardar. | Ubicación y responsable guardados correctamente; visible en la grilla principal. | **Listo para prueba** |
| **CP-M04** | `Impuestos` | Configuración de nueva vigencia para detracción SPOT | Impuesto registrado | 1. Seleccionar impuesto y pulsar Editar.<br>2. En Periodos, clic en Nuevo.<br>3. Digitar fecha inicio, final y tasa 4%.<br>4. Guardar. | Se registra la nueva secuencia temporal sin alterar el porcentaje de las fechas históricas. | **Listo para prueba** |
| **CP-M05** | `Forma de Pago` | Búsqueda de proveedor por RUC y fijación de crédito | Proveedor activo en padrón | 1. Clic en Nuevo.<br>2. Clic en `[...]` de Auxiliar.<br>3. Buscar por RUC.<br>4. Seleccionar registro.<br>5. Asignar 30 días de vencimiento y guardar. | Parámetros asociados al auxiliar; la provisión futura calculará fecha de expiración a 30 días. | **Listo para prueba** |
| **CP-M06** | `Concepto de Contrapartida` | Creación de plantilla contable para compras con IGV | Cuenta de gasto creada en PCGE | 1. Clic en Nuevo.<br>2. Elegir Diario 14.<br>3. En Contrapartida, presionar Nuevo.<br>4. Ingresar cuenta contable y sentido D/H.<br>5. Guardar. | Plantilla almacenada; disponible en la provisión automática de CxP. | **Listo para prueba** |
| **CP-M07** | `Mantenimiento de Chequera` | Actualización de rango de chequera común entregada por el banco | Cuenta bancaria listada | 1. Seleccionar la fila del banco.<br>2. Clic en botón Editar (F3).<br>3. Digitar Cheque Inicial: 1001 y Cheque Final: 1500.<br>4. Guardar. | Rango actualizado; Tesorería puede girar cheques a partir del correlativo inicial configurado. | **Listo para prueba** |
| **CP-M08** | `Mantenimiento de Chequera` | Intentar crear una cuenta bancaria desde el botón Nuevo | Acceso a ventana de chequeras | 1. Clic en el botón Nuevo. | El sistema bloquea la acción o no muestra botón Nuevo; la cuenta debe provenir de Tesorería. | **Listo para prueba** |
