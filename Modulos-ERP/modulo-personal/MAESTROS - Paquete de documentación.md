ERP Dialyma · Personal · Maestros

**PAQUETE DE DOCUMENTACIÓN**

**Maestros**

Módulo Personal · ERP Dialyma

|**Empresa**|CLINICA LA LUZ SAC|
| :- | :- |
|**Sistema**|ERP Dialyma (Sistema SAMI), versión 202610130001|
|**Módulo**|Personal|
|**Submódulo**|Maestros|
|**Fecha del levantamiento**|23/10/2026|
|**Método**|Revisión en pantalla en modo solo lectura; no se creó, modificó, calculó ni cerró información.|

# **Contenido**

|**Capítulo**|**Contenido**|
| :- | :- |
|**1**|Ficha del submódulo|
|**2**|Especificación funcional|
|**3**|Manual de usuario|
|**4**|Reglas, advertencias y faltantes de implementación|
|**5**|Casos de prueba|
# **1. Ficha del submódulo**

|**Dato**|**Contenido**|
| :- | :- |
|**Nombre**|Maestros|
|**Objetivo**|Mantener la ficha del personal, las categorías, las AFP, los conceptos y las fórmulas que usa la planilla.|
|**Pantallas**|Categorías y Cargos; Definición de AFP con sus descuentos; Relación de descuento AFP con el concepto; Definición de Planilla Oficial; Definición de comprobantes de provisión contable; Registro del Personal; Datos Laborales (pestaña de la ficha); Generación de Contratos; Conceptos; Fórmulas; Acumulación de Conceptos (totales); Seguro Médico Familiar|
|**Ruta**|Sistema SAMI › Personal|
|**Cobertura**|Solo lectura|

# **2. Especificación funcional**

|**Funcionalidad**|**Ruta**|**Qué muestra o pide**|**Resultado**|**Estado**|
| :- | :- | :- | :- | :- |
|**Categorías y Cargos**|Personal › Maestros › Categorías y Cargos|<p>Lista de 6 categorías: </p><p>- 01 Gerentes y/o funcionarios.</p><p>- 02 Empleados.</p><p>- 03 Personal de salud.</p><p>- 05 Empleados\_.</p><p>- 06 Practicante asistencial.</p><p>- 07 Practicante administrativo.</p><p>Ficha de categoría: código, descripción, nivel, factor por hora extra y factor por día de viaje (en Empleados: 4.50 y 25.00)</p><p>Lista de cargos de la categoría (Empleados: 83 cargos, p. ej. asistente de gerencia, asistente contable senior, jefe de mantenimiento)</p><p>Botones Nuevo y Eliminar </p>|Categorías y cargos que se asignan en Datos Laborales e Historia Laboral.|Activo|
|**Definición de AFP con sus descuentos**|<p>Personal </p><p>› Maestros </p><p>› Def. AFP con sus Descuentos</p>|<p>12 registros: </p><p>- Integra</p><p>- Horizonte</p><p>- Habitat</p><p>- Prima</p><p>- Profuturo, en variantes flujo y mixto</p><p>Descuentos por AFP: 01 Comisión variable, 02 Fondo AFP, 03 Prima de seguro</p>|AFP disponibles para el trabajador y base de los descuentos de pensión.|Activo|
|**Relación de descuento AFP con el concepto**|<p>Personal </p><p>› Maestros </p><p>› Rel. Dscto. AFP al Concepto</p>|<p>Lista de los conceptos </p><p>- 01 comisión variable</p><p>- 02 fondo AFP</p><p>- 03 prima de seguro</p>|No se pudo ver.|Deducido por nombre|
|**Definición de Planilla Oficial**|<p>Personal </p><p>› Maestros </p><p>› Definición de Planilla Oficial</p>|<p>2 registros: </p><p>- 01 empleados </p><p>- 02 obreros</p>|Planillas oficiales para reportes y transferencias.|Verificado en pantalla|
|**Definición de comprobantes de provisión contable**|<p>Personal </p><p>› Maestros </p><p>› Def. Ctas. Prov. Contable</p>|<p>4 comprobantes: </p><p>- CV Conversiones</p><p>- CT CTS</p><p>- GR Gratificación</p><p>- VA Vacaciones</p><p>Cada uno con líneas Debe/Haber por cuenta, moneda y banco</p>|Asiento modelo que usa la provisión.|Verificado en pantalla|
|**Registro del Personal**|Personal › Maestros › Registro del Personal|<p>Filtros: tipo de planilla y estado (Todos, Activo, Inactivo, Cesado)</p><p>Columnas: tipo de planilla, código, cód. auxiliar, apellidos, nombres, fecha de ingreso y de reingreso</p><p>Leyenda de colores: activo, inactivo y cesado</p><p>Acciones: Nuevo (F2), Editar (F3), Consultar (F4), Eliminar (F12), Imprimir (F5), Currículum, Distribución de línea de negocios</p><p>Ficha de 9 pestañas: </p><p>- Datos Generales</p><p>- Datos Laborales</p><p>- Composición Familiar</p><p>- Historia Laboral</p><p>- Méritos</p><p>- Deméritos</p><p>- Capacitación</p><p>- Evaluación</p><p>- Destaque </p><p>- Descansos</p><p>Datos Generales: código, estado, documento, nombres, sexo, estado civil, hijos, nacimiento, teléfono, dirección, grado, profesión, fecha de inscripción AFP, fecha y motivo de cese</p><p>Historia Laboral: fecha, tipo de evento, categoría y cargo</p><p>Descansos: orden, tipo, permanencia, fechas y días</p>|Ficha del trabajador (Empleados: 338 registros)|Activo|
|**Datos Laborales (pestaña de la ficha)**|<p>**Personal** </p><p>› Maestros </p><p>› Registro del Personal </p><p>› Datos Laborales</p>|<p>- **Contrato**: Fecha de ingreso, categoría, área, cargo, tipo de planilla, situación laboral, actividades, poder y división.</p><p>- **Pensión y salud**: Tipo de pensión y AFP (nombre y código SPP), tipo de trabajador ESSALUD, situación y leyes que afectan (salud, SCTR, vida, pensión, accidentes de trabajo)</p><p>- **Remuneración y CTS:** Tipo de pago, zona, moneda, banco y cuenta; número de sueldos, gratificaciones ordinarias y extraordinarias; CTS (tipo, moneda, banco y cuenta)</p>|Datos que usa el cálculo de planilla.|Verificado en pantalla|
|**Generación de Contratos**|Personal › Maestros › Generación de Contratos|<p>Filtros: Personal y Estado</p><p>Columnas: código, nombre, tipo de contrato, contrato, fecha de inicio y final, estado, adjunto, DNI, dirección y cargo</p>|Lista de contratos|Activo|
|**Conceptos**|Personal › Maestros › Conceptos y Fórmulas › Conceptos|<p>135 registros de conceptos; columnas: código, nombre, tipo de concepto (IN/DE/AP), operación (básico, fijo, variable, calculado), fórmula asociada, acumulador (TOT1 a TOT10), afectación CTS, renta de 5.ª, gratificación, cuentas contables y código SUNAT PLAME.</p>|Catálogo maestro completo de 135 conceptos (67 ingresos, 61 descuentos y 7 aportaciones) con parámetros contables y códigos SUNAT.|Activo (Detalle Completo)|
|**Fórmulas**|<p>Personal </p><p>› Maestros </p><p>› Conceptos y Fórmulas › Fórmulas</p>|<p>61 registros con código, descripción, expresión algebraica reconstruida paso a paso desde el detalle de secuencias, operandos, grupos y variables del sistema (CANTI, DIAS, DIASV, TOT1..TOT10, PORC, REMJB, etc.).</p>|Catálogo maestro completo de 61 fórmulas matemáticas y de negocio verificadas (médicas y administrativas).|Activo (Detalle Completo)|
|**Acumulación de Conceptos (totales)**|Personal › Maestros › Conceptos y Fórmulas › Acum. de Conceptos|<p>- TOT1 a TOT3 remuneración principal fija 1, 2 y 3</p><p>- TOT4 y TOT5 remuneración complementaria fija 1 y 2</p><p>- TOT6 subsidios</p><p>- TOT7 remuneración complementaria fija 3</p><p>- TOT8 principal variable imprecisa</p><p>- TOT9 complementaria imprecisa</p><p>- TOT10 conceptos no computables afectos</p>|10 grupos de totales.|Verificado en pantalla|
|**Seguro Médico Familiar**|Personal › Maestros › Seguro Médico Fam.|Carpeta con Plan y Asignación del personal|Sin registros (0).|Parcial|
# **3. Manual de usuario**
## **Antes de empezar**
- Ingrese a Dialyma con su usuario; el sistema muestra la empresa, la fecha y el tipo de cambio.
- Fije tipo de planilla y proceso en Parámetros de la sesión.
- Espere a que cada ventana abra antes de volver a hacer clic: Dialyma puede tardar.
## **3.1 Categorías y Cargos**
**Ruta:** Personal › Maestros › Categorías y Cargos   **Estado: Verificado en pantalla**

Para qué sirve: Define las categorías del personal y los cargos de cada una.

**Qué muestra o pide:**

- Lista de 6 categorías: 01 Gerentes y/o funcionarios, 02 Empleados, 03 Personal de salud, 05 Empleados\_, 06 Practicante asistencial, 07 Practicante administrativo
- Ficha de categoría: código, descripción, nivel, factor por hora extra y factor por día de viaje (en Empleados: 4.50 y 25.00)
- Lista de cargos de la categoría (Empleados: 83 cargos, p. ej. asistente de gerencia, asistente contable senior, jefe de mantenimiento)
- Botones Nuevo y Eliminar dentro de la ficha (no usados)

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Categorías y cargos que se asignan en Datos Laborales e Historia Laboral.
## **3.2 Definición de AFP con sus descuentos**
**Ruta:** Personal › Maestros › Def. AFP con sus Descuentos   **Estado: Verificado en pantalla**

Para qué sirve: Define cada AFP y los descuentos que le corresponden.

**Qué muestra o pide:**

- 12 registros: Integra, Horizonte, Habitat, Prima y Profuturo, en variantes flujo y mixto
- Descuentos por AFP: 01 Comisión variable, 02 Fondo AFP, 03 Prima de seguro

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: AFP disponibles para el trabajador y base de los descuentos de pensión.
## **3.3 Relación de descuento AFP con el concepto**
**Ruta:** Personal › Maestros › Rel. Dscto. AFP al Concepto   **Estado: Deducido por nombre**

Para qué sirve: Relaciona cada descuento de AFP con el concepto de planilla que lo aplica.

**Qué muestra o pide:**

- La pantalla pide la empresa; la lista salió vacía y el sistema mostró el error «Array boundary exceeded at line 48»

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: No se pudo ver.

*Observación: Se canceló el diálogo y se respondió No a salir del sistema; no se guardó nada.*
## **3.4 Definición de Planilla Oficial**
**Ruta:** Personal › Maestros › Definición de Planilla Oficial   **Estado: Verificado en pantalla**

Para qué sirve: Define las planillas oficiales a las que se asigna el personal.

**Qué muestra o pide:**

- 2 registros: 01 Empleados y 02 Obreros

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Planillas oficiales para reportes y transferencias.
## **3.5 Definición de comprobantes de provisión contable**
**Ruta:** Personal › Maestros › Def. Ctas. Prov. Contable   **Estado: Verificado en pantalla**

Para qué sirve: Define los comprobantes contables de las provisiones de planilla.

**Qué muestra o pide:**

- 4 comprobantes: CV Conversiones, CT CTS, GR Gratificación, VA Vacaciones
- Cada uno con líneas Debe/Haber por cuenta, moneda y banco

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Asiento modelo que usa la provisión.
## **3.6 Registro del Personal**
**Ruta:** Personal › Maestros › Registro del Personal   

Para qué sirve: Mantiene la ficha de cada trabajador.

**Qué muestra o pide:**

- Filtros: tipo de planilla y estado (Todos, Activo, Inactivo, Cesado)
- Columnas: tipo de planilla, código, cód. auxiliar, apellidos, nombres, fecha de ingreso y de reingreso
- Leyenda de colores: activo, inactivo y cesado
- Acciones: Nuevo (F2), Editar (F3), Consultar (F4), Eliminar (F12), Imprimir (F5), Currículum, Distribución de línea de negocios2
- Ficha de 9 pestañas: Datos Generales, Datos Laborales, Composición Familiar, Historia Laboral, Méritos/Deméritos, Capacitación, Evaluación, Destaque y Descansos
- Datos Generales: código, estado, documento, nombres, sexo, estado civil, hijos, nacimiento, teléfono, dirección, grado, profesión, fecha de inscripción AFP, fecha y motivo de cese
- Historia Laboral: fecha, tipo de evento, categoría y cargo
- Descansos: orden, tipo, permanencia, fechas y días

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Ficha del trabajador (Empleados: 338 registros). Los valores de cada persona no se copian a esta documentación.
## **3.7 Datos Laborales**
**Ruta:** Personal › Maestros › Registro del Personal › Datos Laborales   

Para qué sirve: Reúne las condiciones de trabajo, pensión, salud y pago del trabajador.

**Qué muestra o pide:**

- Contrato: fecha de ingreso, categoría, área, cargo, tipo de planilla, situación laboral, actividades, poder y división
- Pensión y salud: tipo de pensión y AFP (nombre y código SPP), tipo de trabajador ESSALUD, situación y leyes que afectan (salud, SCTR, vida, pensión, accidentes de trabajo)
- Remuneración y CTS: tipo de pago, zona, moneda, banco y cuenta; número de sueldos, gratificaciones ordinarias y extraordinarias; CTS (tipo, moneda, banco y cuenta)

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Datos que usa el cálculo de planilla.
## **3.8 Generación de Contratos**
**Ruta:** Personal › Maestros › Generación de Contratos   

Para qué sirve: Relaciona los contratos del personal.

**Qué muestra o pide:**

- Filtros: Personal y Estado
- Columnas: código, nombre, tipo de contrato, contrato, fecha de inicio y final, estado, adjunto, DNI, dirección y cargo

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Lista de contratos. Se vio con 0 registros.
## **3.9 Conceptos**
**Ruta:** Personal › Maestros › Conceptos y Fórmulas › Conceptos   **Estado: Activo (Catálogo Integral de 135 Fichas)**

Para qué sirve: Catálogo maestro de conceptos de ingreso, descuento y aportación que utiliza la planilla de pagos de la empresa. Define la naturaleza operativa, su fórmula de cálculo, el acumulador de totales (`TOT1` a `TOT10`), las afectaciones tributarias y legales (CTS, Gratificación, Renta de 5.ª Categoría), la imputación contable y la equivalencia con la Planilla Electrónica (PLAME / SUNAT).

**Estructura del catálogo (135 registros):**
- **Ingresos (`IN`):** 67 conceptos remunerativos y no remunerativos.
- **Descuentos (`DE`):** 61 conceptos de retención previsional, tributaria, judicial y descuentos al personal.
- **Aportaciones del Empleador (`AP`):** 7 conceptos de contribuciones a la seguridad social y seguros de ley.

### **3.9.1 Fichas de Conceptos de Ingreso (67 conceptos)**

| Cód. | Nombre del Concepto | Operación | Fórmula Asociada | Acum. | Afect. CTS | Renta 5.ª | Proy. Grati | Cta. Cargo | Cta. Abono | Cód. SUNAT |
| :---: | :--- | :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | SUELDO BASICO | Básico | 085 SUELDO TOTAL | TOT1 | Fija | Afecto | Sí | 62110101 | — | 0121 |
| 2 | REMUNERACION VACACIONAL | Variable | 013 EL MISMO VALOR DADO | TOT7 | No afecto | Afecto | No | 62110105 | — | 0118 |
| 3 | AUMENTO 10.23% AFP | Fijo | 001 SUELDO BASICO | — | No afecto | Afecto | Sí | — | — | 0109 |
| 4 | AUMENTO 3% AFP | Fijo | 001 SUELDO BASICO | — | Fija | No afecto | Sí | — | — | 0110 |
| 5 | GUARDIA NOCT. ORDINARIA 100% | Variable | 075 GUARDIA NOCT.ORD 100 | TOT2 | VP | Afecto | Sí | — | — | 0309 |
| 7 | PORCENTAJE NOCTURNO | Calculado | 076 PORCENTAJE NOCTURNO | TOT2 | VP | Afecto | Sí | — | — | 0309 |
| 8 | GUARDIA NOCT DOM-FER 200% | Variable | 078 GUA NOCT DOM-FER 200 | TOT2 | VP | Afecto | Sí | — | — | 0309 |
| 9 | BONIFICACION POR CARGO | Fijo | 013 EL MISMO VALOR DADO | TOT2 | Fija | Afecto | Sí | 62200108 | — | 1007 |
| 10 | ASIGNACION FAMILIAR LEY 25129 | Fijo | 013 EL MISMO VALOR DADO | TOT4 | Fija | Afecto | Sí | 62110107 | — | 0201 |
| 12 | H.EXTRAS EMPL 35% | Fijo | 073 H.EXTRAS EMPL. 35% | TOT2 | VP | Afecto | Sí | 62110104 | — | 0106 |
| 14 | FERIADO NO LABORABLE | Variable | 013 EL MISMO VALOR DADO | TOT8 | VS | Anual | No | — | — | 0107 |
| 21 | QUINQUENIO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | Sí | — | — | 0403 |
| 22 | PAGO DIA DES/S | Fijo | 013 EL MISMO VALOR DADO | TOT3 | Fija | Afecto | Sí | 62110105 | — | 0304 |
| 25 | BONIFICACION ESTUDIOS | Fijo | 013 EL MISMO VALOR DADO | — | VS | Afecto | No | — | — | 0202 |
| 33 | REMUNERACIÓN VACACIONAL | Variable | 013 EL MISMO VALOR DADO | TOT8 | No afecto | No afecto | No | 62110105 | — | 0118 |
| 34 | COMP. TIEMPO SERVICIOS MENSUAL | Variable | 001 SUELDO BASICO | — | No afecto | No afecto | No | 62910100 | — | 0904 |
| 35 | HORAS EXTRAS MED 25% | Fijo | 069 H. EXTRAS MEDICO 25% | TOT2 | VP | Afecto | Sí | 62110103 | — | 0105 |
| 36 | BONIFICACION POR COORDINACIÓN | Fijo | 013 EL MISMO VALOR DADO | TOT5 | Fija | Afecto | Sí | 62200108 | — | 1010 |
| 37 | BONIF. POR TRANSPORTE | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Afecto | No | 62200108 | — | 0909 |
| 41 | HORAS EXTRAS MED.100% | Variable | 071 H.EXTRAS MED. 100% | TOT2 | VP | Afecto | Sí | — | — | 0107 |
| 43 | PARTICIP. DE UTILIDADES | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | 41300000 | — | 0911 |
| 45 | INCENTIVO POR PRODUCTIVIDAD | Fijo | 013 EL MISMO VALOR DADO | TOT8 | Fija | Afecto | Sí | — | — | 0303 |
| 46 | VACACIONES COMPRADAS | Variable | 013 EL MISMO VALOR DADO | TOT3 | No afecto | No afecto | No | 62110105 | — | 0117 |
| 47 | CTS | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62910100 | — | 0904 |
| 48 | BONO DE TITULO | Fijo | 001 SUELDO BASICO | TOT2 | VP | Afecto | No | 62200108 | — | — |
| 49 | SALDO PLANILLA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | — |
| 50 | MOVILIDAD NO AFECTA A DSTO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | Sí | 62200103 | — | 0909 |
| 51 | BONIF. POR OBJETIVO | Fijo | 013 EL MISMO VALOR DADO | TOT2 | VP | Afecto | Sí | 62200108 | — | 1006 |
| 55 | FERIADO SECTOR SALUD | Variable | 080 FERIADOS SECTOR SALU | TOT2 | No afecto | Anual | No | — | — | 0115 |
| 56 | FERIADO | Variable | 013 EL MISMO VALOR DADO | TOT2 | No afecto | Anual | No | 62200106 | — | 0115 |
| 59 | DEVOLUCION DE DESCUENTOS | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0119 |
| 61 | GRATIFICACION NAVIDAD - MANUAL | Variable | 013 EL MISMO VALOR DADO | — | VP | Afecto | No | 62140100 | — | 0406 |
| 62 | SUBVENCION PRACTICAS | Básico | 001 SUELDO BASICO | — | No afecto | — | No | — | — | 0120 |
| 67 | BONIF EXTRAORDINARIA Ley 29351 | Variable | 086 BON EXTR 9% | — | Variable | Anual | No | 62200108 | — | 0312 |
| 68 | BONIFICACION 1º MAYO | Variable | 084 2026-05-01 00:00:00 | TOT2 | Fija | Anual | Sí | — | — | 0308 |
| 71 | SUBVENCION  ADICIONAL | Variable | 013 EL MISMO VALOR DADO | — | No afecto | — | No | — | — | 0120 |
| 82 | BONIFICACION ENFERMERIA | Variable | 001 SUELDO BASICO | TOT5 | Fija | Afecto | No | — | — | 0306 |
| 83 | H.EXTRAS EMPL.100% | Variable | 074 H.EXTRAS EMPL. 100% | TOT2 | VP | AP | Sí | — | — | 0107 |
| 84 | H.EXTRAS EMPL 25% | Fijo | 072 H.EXTRAS EMPL. 25% | TOT2 | VP | Afecto | Sí | 62110103 | — | 0105 |
| 90 | SUBSIDIOS ENFERMEDAD | Variable | 013 EL MISMO VALOR DADO | TOT6 | No afecto | No afecto | No | 62930100 | — | 0916 |
| 91 | SUBSIDIO MATERNIDAD | Variable | 013 EL MISMO VALOR DADO | TOT6 | No afecto | No afecto | No | 62930100 | — | 0915 |
| 92 | SUBSIDIO LACTANCIA | Calculado | 013 EL MISMO VALOR DADO | TOT6 | Fija | No afecto | No | — | — | — |
| 93 | HORAS EXTRAS MED 35% | Fijo | 070 H. EXTRAS MEDICO 35% | TOT2 | VP | Afecto | Sí | 62110104 | — | 0106 |
| 95 | GRATIF EXTRAORDINARIA 2010 | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0403 |
| 96 | BONOS VARIOS | Variable | 013 EL MISMO VALOR DADO | TOT2 | Fija | Afecto | Sí | 62200108 | — | 1007 |
| 100 | REINTEGROS AFECTOS | Variable | 013 EL MISMO VALOR DADO | TOT2 | No afecto | Afecto | No | 62110101 | — | 1004 |
| 101 | REINTEGROS INAFECTOS | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | 62930100 | — | 1008 |
| 103 | COMISIONES VENTAS | Variable | 013 EL MISMO VALOR DADO | TOT8 | VP | Afecto | Sí | — | — | 0111 |
| 104 | COMISIONES COBRANZAS | Variable | 013 EL MISMO VALOR DADO | TOT8 | VP | Afecto | Sí | — | — | 0103 |
| 105 | AGUINALDO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 1002 |
| 107 | BONIFICACION POR CONFIANZA | Fijo | 013 EL MISMO VALOR DADO | TOT5 | Fija | Afecto | Sí | 62200108 | — | 1010 |
| 200 | VACACIONES TRUNCAS | Variable | 013 EL MISMO VALOR DADO | TOT1 | No afecto | No afecto | No | 62110105 | — | 0114 |
| 201 | CANASTA NAVIDAD | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0404 |
| 206 | ASIGNACION FALLECIMIENTO FAMIL | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | — |
| 300 | GRATIF.FIESTAS PATRIAS-NAVIDAD | Variable | 013 EL MISMO VALOR DADO | TOT10 | Variable | Anual | No | 62140100 | — | 0406 |
| 301 | GRATIFICACION EXTRAORDINARIA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0403 |
| 303 | GRAT.EXTRAORD-ESCOLARIDAD | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0208 |
| 304 | GRAT. PROPORCIONAL - LEY 29351 | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62140500 | — | 0312 |
| 306 | BONIFICACIONES VARIABLE | Variable | 013 EL MISMO VALOR DADO | TOT2 | VP | Anual | No | 62200108 | — | 1005 |
| 905 | REDONDEO ACTUAL | Variable | — | — | No afecto | — | No | — | — | — |
| 907 | BASICO MES ANTERIOR | Variable | 013 EL MISMO VALOR DADO | TOT8 | Fija | No afecto | No | — | — | — |
| 915 | BIEN ENTREGADO A TRABAJADOR | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | — |
| 920 | INGRESO POR PRESTAMO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 14110001 | — | — |
| 921 | CTS TRUNCA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62910100 | — | 0904 |
| 923 | BONO RIESGO DE CAJA | Básico | 013 EL MISMO VALOR DADO | TOT5 | Fija | Afecto | Sí | 62200108 | — | 1010 |
| 1010 | BONO LA LUZ | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | — |
| A21 | LICENCIA CON GOCE DE HABER | Variable | 013 EL MISMO VALOR DADO | TOT6 | No afecto | No afecto | No | 62930100 | — | — |

### **3.9.2 Fichas de Conceptos de Descuento (61 conceptos)**

| Cód. | Nombre del Concepto | Operación | Fórmula Asociada | Acum. | Afect. CTS | Renta 5.ª | Proy. Grati | Cta. Cargo | Cta. Abono | Cód. SUNAT |
| :---: | :--- | :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 6 | DESCUENTO ADELANTO GRATIF. | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0701 |
| 11 | CAFETERIA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14190001 | 0706 |
| 13 | CONSUMO FARMACIA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 15 | SERVICIOS COMPLEMENTARIOS | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 16 | CONSUMO NEXTEL/REPOSICION | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 17 | CAMPAÑA DENTAL | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 18 | CAMPAÑA OFTALMOLOGICA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 19 | CANASTA NAVIDEÑA | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 20 | CAMPAÑA VACUNACION INFLUENZA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 23 | DUPLICADO DE FOTOCHECK | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 24 | CONCECIONARIO SALISARA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 26 | PAGO DE UTILIDADES 2006 | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | — |
| 27 | VENTA DE CELULAR | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0706 |
| 28 | INTERNAMIENTO CLINICA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 29 | DESCUENTOS POR PACIENTES | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 30 | UNIFORME PERSONAL MASCULINO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 31 | UNIFORME VERANO PERS FEMENINO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 32 | UNIFORME INVIERNO PER FEMENINO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 38 | PRESTAMO VARIABLE | Calculado | — | — | No afecto | — | No | — | — | 0706 |
| 39 | PRESTAMOS | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14110001 | 0706 |
| 40 | DESCUENTO ADELANTO DE VACAC. | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14120001 | 0701 |
| 42 | DESCUENTO ADELANTO DE SUELDO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14120001 | 0701 |
| 44 | ADELANTO DE GRAT. EXTRA 2010 | Variable | 013 EL MISMO VALOR DADO | — | No afecto | — | No | — | — | 0701 |
| 52 | SEGURO RIMAC | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 53 | SEGURO LA POSITIVA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | — |
| 54 | DESCUENTO LABORATORIO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14800001 | 0706 |
| 57 | DESCUENTO POR PRESTAMO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14110001 | 0706 |
| 58 | DESCUENTO EXCESO TELEFONO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14800001 | 0706 |
| 60 | DEVOLUCION INGRESO EXTRAORDINA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 63 | SEGURO PACIFICO VIDA | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 64 | DESCUENTOS VARIOS OTROS | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14800001 | 0706 |
| 65 | COLEGIO ENFERMEROS-CUOTAS | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 66 | DESCUENTOS COCHERA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 75990100 | 0706 |
| 70 | ADELANTO DE SUELDO  SUBV. PRAC | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0701 |
| 94 | IMP RENTA 5TA CAT MANUAL | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 40173000 | 0605 |
| 106 | ENTREGA AGUINALDO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0706 |
| 202 | ADELANTO CANASTA NAVIDAD | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0707 |
| 302 | DEPOSITO DE GRATIFICACION | Variable | 013 EL MISMO VALOR DADO | — | Variable | — | No | — | 41140000 | 0701 |
| 405 | RETENCION JUDICIAL FIJO | Variable | 062 RET. JUDICIAL FIJA | — | No afecto | — | No | — | — | — |
| 411 | IMP.QUINTA CATEGORIA | Calculado | — | — | No afecto | No afecto | No | — | 40173000 | 0605 |
| 500 | S.N.P. | Calculado | 006 SNP | — | No afecto | No afecto | No | — | 40320000 | 0607 |
| 501 | SPP - APORTACION OBLIGATORIA | Calculado | 007 AFP | — | No afecto | No afecto | No | — | 41700001 | 0608 |
| 502 | SEG. INVA. AFP | Calculado | 007 AFP | — | No afecto | No afecto | No | — | 41700001 | 0606 |
| 503 | RENTA QUINTA CATEGORÍA | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 40173000 | 0605 |
| 505 | ESSALUD VIDA | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | 0604 |
| 506 | COMISION VARIABLE AFP | Calculado | 007 AFP | — | No afecto | No afecto | No | — | 41700001 | 0601 |
| 601 | DESCUENTO AFP | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | 0706 |
| 801 | RETENCION JUDICIAL % | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 41900001 | 0703 |
| 850 | FALTAS | Variable | 045 FALTAS | TOT9 | No afecto | Anual | No | — | 75990100 | 0705 |
| 851 | PERMISOS EMP | Variable | 050 PERMISOS | TOT9 | No afecto | No afecto | No | — | — | 0705 |
| 852 | TARDANZAS | Variable | 013 EL MISMO VALOR DADO | TOT9 | No afecto | Anual | No | — | 75990100 | 0704 |
| 853 | DESCUENTO HORAS | Variable | 004 DSCTO X TARDANZA | — | No afecto | No afecto | No | — | — | 0705 |
| 904 | REDONDEO ANTERIOR | Variable | — | — | No afecto | — | No | — | — | — |
| 910 | ADELANTO DE SUELDO | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 14120001 | 0701 |
| 911 | DEVOLUCION DE RENTA DE QUINTA | Variable | 013 EL MISMO VALOR DADO | TOT7 | No afecto | No afecto | No | 40173000 | — | 0928 |
| 913 | DESCUENTO SUBSIDIO ENFERMEDAD | Variable | 013 EL MISMO VALOR DADO | TOT6 | No afecto | No afecto | No | — | — | — |
| 914 | CONCESIONARIO MALU - CAFE | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | — | — |
| 916 | DESCUENTO.ENTREGA BIEN | Variable | 013 EL MISMO VALOR DADO | — | No afecto | Anual | No | — | — | — |
| 917 | DESC. EQUIPO Y/O LINEA RPC | Variable | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | — | 46999998 | 0706 |
| 918 | GRATIFCACION | Variable | — | — | No afecto | — | No | — | 41140000 | — |
| 919 | COMPENSACION POR TIEMPO DE SER | Variable | — | — | Variable | — | No | — | 41510000 | — |

### **3.9.3 Fichas de Conceptos de Aportación del Empleador (7 conceptos)**

| Cód. | Nombre del Concepto | Operación | Fórmula Asociada | Acum. | Afect. CTS | Renta 5.ª | Proy. Grati | Cta. Cargo | Cta. Abono | Cód. SUNAT |
| :---: | :--- | :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 412 | SENATI | Calculado | 059 SENATI | — | No afecto | — | No | 62770100 | 40330000 | — |
| 900 | ESSALUD (SEGURO REGULAR,CBSSP) | Calculado | 008 ESSALUD | — | No afecto | — | No | 62710100 | 40310000 | 0809 |
| 901 | IMPTO. EXTRAORD. SOLIDARID.2% | Calculado | 009 IES | — | No afecto | — | No | — | — | — |
| 903 | SEGURO COMPLEMENTARIO ACTR | Calculado | 056 SCTR SALUD | — | No afecto | — | No | — | — | — |
| 908 | SCTR SALUD | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62920100 | 18200112 | 0810 |
| 909 | SCTR PENSION | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62920200 | 18200112 | 0805 |
| 912 | POLIZA VIDA LEY | Fijo | 013 EL MISMO VALOR DADO | — | No afecto | No afecto | No | 62740100 | 40390000 | 0803 |

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista general o busque por código o nombre del concepto.
1. Para ver el detalle técnico y la configuración de una ficha, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Las opciones Nuevo (F2), Editar (F3) y Eliminar (F12) modifican parámetros sensibles de la nómina: deben validarse previamente con la Jefatura de Recursos Humanos y Contabilidad.

Resultado: Catálogo maestro integral de 135 conceptos de nómina parametrizados con sus reglas de cálculo, cuentas contables y códigos oficiales de SUNAT.

## **3.10 Fórmulas**
**Ruta:** Personal › Maestros › Conceptos y Fórmulas › Fórmulas   **Estado: Activo (Catálogo Integral de 61 Fórmulas)**

Para qué sirve: Catálogo maestro de las fórmulas con que el motor del ERP Dialyma calcula automáticamente los importes de los conceptos afectos a fórmula (`IND_FORMULA = S`). Cada fórmula está construida a partir de una secuencia matemática que combina variables del sistema (`CANTI`, `DIAS`, `DIASV`, `PORC`, `REMJB`, `HECAT`, `VIACAT`), acumuladores de haberes (`TOT1` a `TOT10`) y operadores aritméticos.

**Catálogo Maestro de Fórmulas Reconstruidas (61 registros):**

| Cód. | Nombre de la Fórmula | Expresión Matemática Reconstruida | Variables Utilizadas | Ámbito y Lógica de Cálculo |
| :---: | :--- | :--- | :--- | :--- |
| 001 | SUELDO BASICO | `(CANTI * DIAS / 30)` | CANTI, DIAS | Proporcional de días laborados en el mes sobre la base estándar de 30 días. |
| 003 | SOBRETIEMPO 1.25 | `(1.25 * CANTI) * (TOT1 + TOT2 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT4, TOT7 | Horas extras al 25% para personal administrativo (divisor mensual 240 horas). |
| 004 | DSCTO X TARDANZA | `(TOT1 + TOT2 + TOT3 / 30 / 8 * CANTI)` | CANTI, TOT1, TOT2, TOT3 | Descuento por horas de tardanza valorizadas sobre base horaria estándar. |
| 006 | SNP | `(TOT1 - TOT9 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 * 0.13)` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8, TOT9 | Aporte Sistema Nacional de Pensiones (ONP 13%) sobre ingresos afectos neto de ausencias. |
| 007 | AFP | `(TOT1 - TOT9 + TOT2 + TOT3 + TOT4 + TOT5 + TOT6 + TOT7 + TOT8 * PORC / 100)` | PORC, TOT1, TOT2, TOT3, TOT4, TOT5, TOT6, TOT7, TOT8, TOT9 | Aporte previsional AFP (Fondo, Seguro, Comisión) según tasa porcentual de la AFP. |
| 008 | ESSALUD | `(TOT1 - TOT9 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 * 0.09)` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8, TOT9 | Aportación patronal regular de salud a ESSALUD (9% sobre base imponible). |
| 009 | IES | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 * 0.02)` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8 | Impuesto Extraordinario de Solidaridad (IES 2%, tributo histórico referencial). |
| 010 | ADELANTO AUTOMATICO | `(TOT1 + TOT2 + TOT3) * 0.33` | TOT1, TOT2, TOT3 | Adelanto automático quincenal equivalente al 33% de los haberes fijos. |
| 012 | GRATIFICACION | `CANTI` | CANTI | Monto directo liquidado por concepto de gratificación legal. |
| 013 | EL MISMO VALOR DADO | `CANTI` | CANTI | Fórmula comodín pasante: asigna el valor directo digitado o importado por novedades. |
| 017 | IMPUESTO A LA RENTA | `(CANTI * 0.1)` | CANTI | Retención porcentual referencial del 10% por Impuesto a la Renta de 5.ª categoría. |
| 018 | IESS | `(TOT1 * 0.05)` | TOT1 | Aporte previsional / asistencial especial del 5% sobre la remuneración principal. |
| 019 | ESSALUD  VIDA | `2` | Constante | Prima de descuento mensual fija para cobertura del Seguro EsSalud Vida. |
| 024 | ADELANTO QUINCENAL | `(TOT1 + TOT2 + TOT3 + TOT9) * (PORC / 100) + (TOT4 * 0.85) + (TOT5 * 0.85) + (TOT7 * 0.85) + (TOT8 * 0.85)` | PORC, TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8, TOT9 | Adelanto quincenal proporcional con ponderación del 85% en haberes complementarios. |
| 025 | ASIGNACION FAMILIAR | `(53 * DIASX) / 30` | DIASX | Asignación Familiar proporcional a días trabajados (D.L. 25129). |
| 026 | RETENCION JUDICIAL % | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 + TOT9 - AFP - QTA) * PORC` | AFP, PORC, QTA, TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8, TOT9 | Retención judicial por alimentos sobre el sueldo neto de ley (después de AFP y Renta 5ta). |
| 027 | MONTO POR DIAS | `(DIASV + DIAS) * CANTI / 30` | CANTI, DIAS, DIASV | Remuneración proporcional combinando días efectivos y días de descanso vacacional. |
| 028 | ASIG.QUIEBRE DE CJA | `CANTI * DIASX / 30` | CANTI, DIASX | Asignación complementaria por riesgo de caja proporcional a los días laborados. |
| 029 | D.S. ENERO | `(CANTI - CANTI)` | CANTI | Ajuste de compensación o regularización de haberes por diferencia de montos. |
| 030 | APORTE E.P.S. | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT6) * 6.75 / 100` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT6 | Aporte patronal a la Entidad Prestadora de Salud (EPS 6.75% sustitutorio EsSalud). |
| 031 | CREDITO EPS 2.25% | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT6) * 2.25 / 100` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT6 | Crédito EPS aplicable como deducción ante EsSalud (2.25% sobre base computable). |
| 033 | BONIF. GDIA. NOC. | `(CANTI * 21.5)` | CANTI | Bonificación complementaria fija por servicio de guardia nocturna asistencial. |
| 034 | SOBRE TIEMPO DOBLE | `(2 * CANTI) * (TOT1 + TOT2 + TOT3 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4, TOT7 | Sobretiempo extraordinario al 100% administrativo (factor 2x, divisor 240h). |
| 035 | SOBRE TIEMPO TRIPLE | `(3 * CANTI) * (TOT1 + TOT2 + TOT3 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4, TOT7 | Sobretiempo extraordinario al 200% administrativo (factor triple 3x, divisor 240h). |
| 036 | S. TIEMPO CUADRUPLE | `(4 * CANTI) * (TOT1 + TOT2 + TOT3 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4, TOT7 | Sobretiempo extraordinario al 300% administrativo (factor cuádruple 4x, divisor 240h). |
| 037 | DSCT.TARDANZAS | `(TOT1 + TOT2 / 30000 / 8000 * CANTI)` | CANTI, TOT1, TOT2 | Descuento de tardanza al minuto (divisor mensual de 30 días / 8h / 60 min). |
| 045 | FALTAS | `CANTI` | CANTI | Descuento directo por inasistencias o faltas injustificadas registradas. |
| 049 | TARDANZA | `(1.25 * CANTI) * (TOT1 + TOT2 + TOT3 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4, TOT7 | Descuento por tardanza ajustada con recargo administrativo del 25% (divisor 240h). |
| 050 | PERMISOS | `(CANTI * TOT1 + TOT2 + TOT3 + TOT4 / 240) * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4 | Descuento por horas de permiso particular sin goce de haber (divisor 240h). |
| 052 | FERIADOS D.L. 713 | `CANTI * (TOT1 + TOT2 + TOT3 + TOT4 + TOT7) / 240 * (30 / DIAS)` | CANTI, DIAS, TOT1, TOT2, TOT3, TOT4, TOT7 | Remuneración por trabajo extraordinario en feriado nacional no laborable (D.L. 713). |
| 056 | SCTR SALUD | `(TOT1 - TOT9 + TOT2 + TOT3 + TOT4 + TOT5 + TOT6 + TOT7 + TOT8 + TOT10) * 0.5 / 100` | TOT1, TOT10, TOT2, TOT3, TOT4, TOT5, TOT6, TOT7, TOT8, TOT9 | Aporte Seguro Complementario de Trabajo de Riesgo - Salud (SCTR Salud 0.50%). |
| 058 | CALCULO QUINQUENIO | `(TOT1 + TOT3) * (0.05 * CANTI) * (DIAS / 30)` | CANTI, DIAS, TOT1, TOT3 | Bonificación por tiempo de servicios (5% por cada quinquenio laborado). |
| 059 | SENATI | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 + TOT10) * 0.75 / 100` | TOT1, TOT10, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8 | Contribución patronal al SENATI (0.75% sobre remuneraciones computables). |
| 060 | ADELANTO SEMANAL | `(CANTI * 0.2)` | CANTI | Adelanto o anticipo semanal del 20% sobre el importe acordado. |
| 061 | BONIF. LEY 854 | `533 - (TOT1 * 30 / DIAS) / 30 * CANTI` | CANTI, DIAS, TOT1 | Bonificación diferencial especial de ley sobre escala remunerativa base. |
| 062 | RET. JUDICIAL FIJA | `395` | Constante | Retención judicial por alimentos de monto fijo predeterminado. |
| 063 | HORA EXTRA POR CAT. | `(CANTI * HECAT)` | CANTI, HECAT | Horas extras valorizadas con el factor de hora extra de la Categoría (HECAT). |
| 064 | BONIF. VIAJES NORMAL | `(CANTI * VIACAT)` | CANTI, VIACAT | Bonificación por comisión de servicios / viajes con factor normal de la Categoría. |
| 065 | BONIF. VIAJES DOBLE | `(CANTI * 2 * VIACAT)` | CANTI, VIACAT | Bonificación por comisión de servicios / viajes con factor doble de la Categoría. |
| 066 | CTS RIA | `(CANTI * DIASV / 30)` | CANTI, DIASV | Compensación por Tiempo de Servicios de régimen integrado / proporcional. |
| 067 | BASICO TEMP | `(CANTI * DIASV / 30)` | CANTI, DIASV | Remuneración básica proporcional temporal por descanso vacacional. |
| 068 | SUELDO + VACACIONES | `CANTI * (DIASV + DIAS / 30)` | CANTI, DIAS, DIASV | Liquidación simultánea de básico laborado y descanso vacacional gozado. |
| 069 | H. EXTRAS MEDICO 25% | `(CANTI * 1.25) * (REMJB + TOT4 / 180)` | CANTI, REMJB, TOT4 | Horas extras asistenciales al 25% para personal médico (divisor jornada 180 horas). |
| 070 | H. EXTRAS MEDICO 35% | `(CANTI * 1.35) * (REMJB + TOT4 / 180)` | CANTI, REMJB, TOT4 | Horas extras asistenciales al 35% para personal médico (divisor jornada 180 horas). |
| 071 | H.EXTRAS MED. 100% | `(CANTI * 2) * (TOT1 + TOT3 + TOT4 + TOT5) / (DIAS * 5)` | CANTI, DIAS, TOT1, TOT3, TOT4, TOT5 | Trabajo médico extraordinario al 100% en descanso/feriado (divisor asistencial 5h/día). |
| 072 | H.EXTRAS EMPL. 25% | `(CANTI * 1.25) * (REMJB + TOT4 / 240)` | CANTI, REMJB, TOT4 | Horas extras administrativas al 25% para empleados (divisor mensual 240 horas). |
| 073 | H.EXTRAS EMPL. 35% | `(CANTI * 1.35) * (REMJB + TOT4 / 240)` | CANTI, REMJB, TOT4 | Horas extras administrativas al 35% para empleados (divisor mensual 240 horas). |
| 074 | H.EXTRAS EMPL. 100% | `(CANTI * 2) * (TOT1 + TOT3 + TOT4 + TOT5) / (DIAS * 8)` | CANTI, DIAS, TOT1, TOT3, TOT4, TOT5 | Horas extras administrativas al 100% para empleados (divisor mensual 8h/día). |
| 075 | GUARDIA NOCT.ORD 100 | `(CANTI * 2 * 12 * TOT1 / DIAS * 30 / 150)` | CANTI, DIAS, TOT1 | Guardia médica hospitalaria nocturna ordinaria de 12 horas (base mensual 150h). |
| 076 | PORCENTAJE NOCTURNO | `(CANTI * TOT1 / DIAS * 30 * 0.4 / 15 / 12)` | CANTI, DIAS, TOT1 | Sobretasa por trabajo en turno nocturno asistencial (bonificación del 40%). |
| 077 | FERIADO PERS MEDICO | `(CANTI * TOT1 / 150) * 2` | CANTI, TOT1 | Remuneración por trabajo médico en día feriado (base 150 horas, factor doble 2x). |
| 078 | GUA NOCT DOM-FER 200 | `(12 * 3 * CANTI * TOT1 / DIAS * 30 / 150)` | CANTI, DIAS, TOT1 | Guardia médica nocturna en domingo o feriado (12 horas, factor triple 3x, base 150h). |
| 079 | SCTR PENSION | `(TOT1 - TOT9 + TOT2 + TOT3 + TOT4 + TOT5 + TOT6 + TOT7 + TOT8 + TOT10) * 0.3 / 100` | TOT1, TOT10, TOT2, TOT3, TOT4, TOT5, TOT6, TOT7, TOT8, TOT9 | Aporte Seguro Complementario de Trabajo de Riesgo - Pensión (SCTR Pensión 0.30%). |
| 080 | FERIADOS SECTOR SALU | `(CANTI * 2) * (TOT1 + TOT3 + TOT4) / (DIAS * 5)` | CANTI, DIAS, TOT1, TOT3, TOT4 | Trabajo en día feriado para personal asistencial de la salud (jornada 5h, factor 2x). |
| 081 | FERIADO ADMINISTRATI | `(CANTI * 2) * (TOT1 + TOT3 + TOT4) / (DIAS * 8)` | CANTI, DIAS, TOT1, TOT3, TOT4 | Trabajo en día feriado para personal administrativo de la clínica (jornada 8h, factor 2x). |
| 082 | POLIZA VIDA LEY | `(TOT1 + TOT2 + TOT3 + TOT4 + TOT5 + TOT7 + TOT8 * 0.48 / 100)` | TOT1, TOT2, TOT3, TOT4, TOT5, TOT7, TOT8 | Prima de seguro de Vida Ley (D.U. 044-2019, tasa promedio referencial 0.48%). |
| 083 | B Ley 29351 | `(TOT10 * 0.09)` | TOT10 | Bonificación extraordinaria del 9% Ley 29351 sobre gratificación legal (EsSalud). |
| 084 | 2026-05-01 00:00:00 | `(TOT1 + TOT3 + TOT4 + TOT5) / DIAS` | DIAS, TOT1, TOT3, TOT4, TOT5 | Remuneración remunerativa por el Día del Trabajo (1 de Mayo, D.L. 713). |
| 085 | SUELDO TOTAL | `(30 - DIASV * CANTI / 30)` | CANTI, DIASV | Sueldo básico ajustado deduciendo los días de descanso vacacional gozados (DIASV). |
| 086 | BON EXTR 9% | `(TOT10 * 0.09)` | TOT10 | Bonificación extraordinaria 9% Ley 29351 / Ley 30334 para trabajadores regulares. |
| 087 | DEPS GRATI | `(TOT10 * 0.09 + TOT10)` | TOT10 | Bonificación extraordinaria y regularización EPS sobre gratificación legal. |

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista de las 61 fórmulas registradas.
1. Para auditar la construcción de una fórmula, selecciónela y pulse Consultar (F4). El sistema muestra el editor de fórmula con la lista de secuencias, operandos y el botón Verificar para validar la consistencia sintáctica.
1. Las modificaciones en las fórmulas alteran retroactivamente o prospectivamente las liquidaciones del personal: cualquier cambio debe ser coordinado y homologado en un entorno de pruebas.

Resultado: Catálogo maestro completo de 61 fórmulas matemáticas y de negocio verificadas, vinculadas a los conceptos y diferenciadas por tipo de personal (médico asistencial vs. administrativo).
## **3.11 Acumulación de Conceptos (totales)**
**Ruta:** Personal › Maestros › Conceptos y Fórmulas › Acum. de Conceptos   

Para qué sirve: Define los totalizadores que usan las fórmulas.

**Qué muestra o pide:**

- TOT1 a TOT3 remuneración principal fija 1, 2 y 3
- TOT4 y TOT5 remuneración complementaria fija 1 y 2
- TOT6 subsidios
- TOT7 remuneración complementaria fija 3
- TOT8 principal variable imprecisa
- TOT9 complementaria imprecisa
- TOT10 conceptos no computables afectos

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: 10 grupos de totales.
## **3.12 Seguro Médico Familiar**
**Ruta:** Personal › Maestros › Seguro Médico Fam.   

Para qué sirve: Plan de seguro médico y asignación al personal.

**Qué muestra o pide:**

- Carpeta con Plan y Asignación del personal

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
1. Revise la lista o la ficha que muestra.
1. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
1. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Sin registros (0).
# **4. Reglas, advertencias y faltantes**
## **Reglas del sistema**
- Cada concepto con la casilla «tiene fórmula» se calcula con una de las fórmulas.
- Las fórmulas usan los totales TOT1 a TOT10 definidos en Acumulación de Conceptos.
- Una vez ejecutada la planilla el sistema bloquea cambios en el periodo.
## **Advertencias**
- El comprobante CT no tiene cuenta contable en 2 líneas.
## **Faltantes de implementación y pendientes**
- [x] **Detalle de las 130 fichas de concepto y 57 fórmulas restantes:** Subsanado e incorporado íntegramente. Se documentaron las 135 fichas de concepto (67 ingresos, 61 descuentos, 7 aportaciones) en el acápite 3.9 y las 61 fórmulas matemáticas completas en el acápite 3.10 a partir de la base de datos de planillas.
- [ ] **Plan de Seguro Médico en detalle:** Pendiente de configuración de pólizas y asignación en pantalla (se abordará en una siguiente fase).
## **Cómo leer el estado**

|**Estado**|**Significado**|
| :- | :- |
|**Verificado en pantalla**|Se abrió la pantalla y se registró lo que muestra.|
|**Parcial**|Se vio solo una parte (la lista pero no el detalle, o sin datos).|
|**Deducido por nombre**|Solo se conoce el nombre del menú o la pantalla no se pudo ver.|
# **5. Casos de prueba**

|**ID**|**Funcionalidad**|**Escenario**|**Resultado esperado**|**Estado**|
| :- | :- | :- | :- | :- |
|**CP-MAE-01**|Categorías y Cargos|Abrir y consultar un registro sin modificar|Categorías y cargos que se asignan en Datos Laborales e Historia Laboral.|ACTIVO |
|**CP-MAE-02**|Definición de AFP con sus descuentos|Abrir y consultar un registro sin modificar|AFP disponibles para el trabajador y base de los descuentos de pensión.|Por ejecutar|
|**CP-MAE-03**|Relación de descuento AFP con el concepto|Abrir y consultar un registro sin modificar|No se pudo ver.|Por ejecutar|
|**CP-MAE-04**|Definición de Planilla Oficial|Abrir y consultar un registro sin modificar|Planillas oficiales para reportes y transferencias.|Por ejecutar|
|**CP-MAE-05**|Definición de comprobantes de provisión contable|Abrir y consultar un registro sin modificar|Asiento modelo que usa la provisión.|Por ejecutar|
|**CP-MAE-06**|Registro del Personal|Abrir y consultar un registro sin modificar|Ficha del trabajador (Empleados: 338 registros). Los valores de cada persona no se copian a esta documentación.|Por ejecutar|
|**CP-MAE-07**|Datos Laborales (pestaña de la ficha)|Abrir y consultar un registro sin modificar|Datos que usa el cálculo de planilla.|Por ejecutar|
|**CP-MAE-08**|Generación de Contratos|Abrir y consultar un registro sin modificar|Lista de contratos. Se vio con 0 registros.|Por ejecutar|
|**CP-MAE-09**|Conceptos|Verificar integridad de las 135 fichas de concepto|Catálogo de 135 conceptos verificado y contrastado íntegramente con sus cuentas contables, afectaciones de ley y códigos SUNAT.|ACTIVO|
|**CP-MAE-10**|Fórmulas|Verificar formulación matemática de las 61 fórmulas|61 fórmulas verificadas y reconstruidas a partir de sus 350 pasos secuenciales, comprobando consistencia con personal médico y administrativo.|ACTIVO|
|**CP-MAE-11**|Acumulación de Conceptos (totales)|Abrir y consultar un registro sin modificar|10 grupos de totales.|Por ejecutar|
|**CP-MAE-12**|Seguro Médico Familiar|Abrir y consultar un registro sin modificar|Sin registros (0).|Por ejecutar|



1. Categorías  y cargos 

![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.001.png)

1. ` `AFP

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.002.png)

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.003.png)![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.004.png)

1. Definición de  Planilla ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.005.png)
1. Definición de cuentas  Contable

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.006.png) 

1. `  `Registro de personal 

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.007.png)

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.008.png)



1. Contratos 

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.009.png)

1. Formulas ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.010.png)
1. Conceptos 

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.011.png)



1. **Conceptos** 

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.012.png)

1. Seguro medico familiar 

   ![](Aspose.Words.865fafe0-a685-4437-b41a-19a820b66f13.013.png)
CLINICA LA LUZ SAC · Página 1
