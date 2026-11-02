**PAQUETE DE DOCUMENTACIÓN**

**Movimientos**

Módulo Personal · ERP Dialyma

| **Empresa**                 | CLINICA LA LUZ SAC                                                                             |
| --------------------------- | ---------------------------------------------------------------------------------------------- |
| **Sistema**                 | ERP Dialyma (Sistema SAMI), versión 202610130001                                               |
| **Módulo**                  | Personal                                                                                       |
| **Submódulo**               | Movimientos                                                                                    |
| **Fecha del levantamiento** | 23/10/2026                                                                                     |
| **Método**                  | Revisión en pantalla en modo solo lectura; no se creó, modificó, calculó ni cerró información. |

# **Contenido**

| **Capítulo** | **Contenido**                                      |
| ------------ | -------------------------------------------------- |
| **1**        | Ficha del submódulo                                |
| **2**        | Especificación funcional                           |
| **3**        | Manual de usuario                                  |
| **4**        | Reglas, advertencias y faltantes de implementación |
| **5**        | Casos de prueba                                    |

# **1\. Ficha del submódulo**

| **Dato**      | **Contenido**                                                                                                                                                                                    |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Nombre**    | Movimientos                                                                                                                                                                                      |
| **Objetivo**  | Registrar los movimientos mensuales del personal: ingresos, descuentos, vacaciones, préstamos, EPS, pagos extraordinarios y retenciones de quinta categoría.                                     |
| **Pantallas** | Parámetros (sesión de planilla); Movimiento Ing/Dscto; Préstamos; Vacaciones; EPS; Aprobación de Préstamos; Pagos Extraordinarios; Retenciones de Quinta Categoría; Cambio Masivo de Movimientos |
| **Ruta**      | Sistema SAMI › Personal                                                                                                                                                                          |
| **Cobertura** | Solo lectura                                                                                                                                                                                     |

# **2\. Especificación funcional**

| **Funcionalidad**                   | **Ruta**                                                 | **Qué muestra o pide**                                                                                                                                                                                                                                                                                                                                                                                                                                     | **Resultado**                                                                         | **Estado**             |
| ----------------------------------- | -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ---------------------- |
| **Parámetros (sesión de planilla)** | Personal › Movimientos › Parámetros                      | Empresa, Tipo de planilla, Fecha (día) y Semana, Proceso y Tipo de cambio<br><br>Tipos de planilla: Empleados, Formación laboral, Funcionarios, Jubilados, Obreros, Practicantes<br><br>Procesos: 01 Planillas, 02 Vacaciones, 03 Gratificación ordinaria, 04 (sin nombre), 05 Subsidio, 06 Utilidades                                                                                                                                                     | Aceptar fija el contexto de las demás pantallas; Cancelar sale sin cambios.           | Verificado en pantalla |
| **Movimiento Ing/Dscto**            | Personal › Movimientos › Movimiento Ing/Dscto            | Lista de personal según tipo de planilla y proceso de la sesión<br><br>Acciones: Movimiento (Ctrl+G), Actualizar días trabajados y Cerrar<br><br>Días: vacaciones, laborados e injustificados, con botón Grabar<br><br>Cuadro de conceptos con importe u horas, importe en dólares y resultado<br><br>Tipos: ingreso (sueldo básico, remuneración vacacional, movilidad), descuento (AFP, cafetería, faltas) y aportación (ESSALUD, SCTR, póliza vida ley) | Movimiento que usa el cálculo de planilla.                                            | Verificado en pantalla |
| **Préstamos**                       | Personal › Movimientos › Préstamos                       | Lista de 338 empleados<br><br>Leyenda: con adelanto vigente / sin adelanto                                                                                                                                                                                                                                                                                                                                                                                 | Préstamos por persona.                                                                | Parcial                |
| **Vacaciones**                      | Personal › Movimientos › Vacaciones                      | Lista de personal (114; 17 con vacaciones)<br><br>Cabecera: código, nombre y monto total<br><br>Inicio, fin, total de días y días trabajados<br><br>Moneda, fecha de adelanto, préstamo y forma de pago<br><br>Detalle: fecha inicio y final, días, periodo desde/hasta, tipo (p. ej. VN vacaciones normales), importe del adelanto, año y mes de aplicación                                                                                               | Vacaciones aplicadas en el mes indicado. El mes debe estar cerrado para registrarlas. | Verificado en pantalla |
| **EPS**                             | Personal › Movimientos › EPS                             | Columnas: código de personal, apellido, sueldo, parientes, crédito y prima mensual                                                                                                                                                                                                                                                                                                                                                                         | Sin registros (0).                                                                    | Parcial                |
| **Aprobación de Préstamos**         | Personal › Movimientos › Aprobación de Préstamos         | Lista con código, apellidos, monto, moneda, número de cuotas y estado<br><br>Filtro por estado: AP aprobado o SO solicitado<br><br>Con el filtro Solicitado: 0 registros                                                                                                                                                                                                                                                                                   | Cambia el estado del préstamo al aprobar; no se usó.                                  | Verificado en pantalla |
| **Pagos Extraordinarios**           | Personal › Movimientos › Pagos Extraordinarios           | Con la planilla ya ejecutada, el sistema avisa: «No podrá realizar esta operación debido a que la planilla ha sido ejecutada»                                                                                                                                                                                                                                                                                                                              | No se pudo operar.                                                                    | Parcial                |
| **Retenciones de Quinta Categoría** | Personal › Movimientos › Retenciones de Quinta Categoría | Título «Retención de otras Empresas»; 14 trabajadores<br><br>Consulta: personal, importe percibido, importe retenido y última retención                                                                                                                                                                                                                                                                                                                    | Dato que usa el cálculo de quinta categoría.                                          | Verificado en pantalla |
| **Cambio Masivo de Movimientos**    | Personal › Movimientos › Cambio Masivo de Movimientos    | Se elige un concepto de una lista (p. ej. un adelanto de canasta navideña)<br><br>Muestra al personal activo (111) con columnas Ingresado, Resultado y DOI<br><br>Al pie, totales de lo ingresado y del resultado                                                                                                                                                                                                                                          | Carga masiva del concepto; no se ingresó ningún dato.                                 | Verificado en pantalla |

# **3\. Manual de usuario**

## **Antes de empezar**

- Ingrese a Dialyma con su usuario; el sistema muestra la empresa, la fecha y el tipo de cambio.
- Fije tipo de planilla y proceso en Parámetros de la sesión.
- Espere a que cada ventana abra antes de volver a hacer clic: Dialyma puede tardar.

## **3.1 Parámetros (sesión de planilla)**

**Ruta:** Personal › Movimientos › Parámetros **Estado: Verificado en pantalla**

Para qué sirve: Fija el contexto de trabajo: empresa, tipo de planilla, fecha, semana y proceso.

**Qué muestra o pide:**

- Empresa, Tipo de planilla, Fecha (día) y Semana, Proceso y Tipo de cambio
- Tipos de planilla: Empleados, Formación laboral, Funcionarios, Jubilados, Obreros, Practicantes
- Procesos: 01 Planillas, 02 Vacaciones, 03 Gratificación ordinaria, 04 (sin nombre), 05 Subsidio, 06 Utilidades

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Aceptar fija el contexto de las demás pantallas; Cancelar sale sin cambios.

## **3.2 Movimiento Ing/Dscto**

**Ruta:** Personal › Movimientos › Movimiento Ing/Dscto **Estado: Verificado en pantalla**

Para qué sirve: Registra los ingresos y descuentos del mes de cada trabajador.

**Qué muestra o pide:**

- Lista de personal según tipo de planilla y proceso de la sesión
- Acciones: Movimiento (Ctrl+G), Actualizar días trabajados y Cerrar
- Días: vacaciones, laborados e injustificados, con botón Grabar
- Cuadro de conceptos con importe u horas, importe en dólares y resultado
- Tipos: ingreso (sueldo básico, remuneración vacacional, movilidad), descuento (AFP, cafetería, faltas) y aportación (ESSALUD, SCTR, póliza vida ley)

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Movimiento que usa el cálculo de planilla.

## **3.3 Préstamos**

**Ruta:** Personal › Movimientos › Préstamos **Estado: Parcial**

Para qué sirve: Registra préstamos y adelantos al personal.

**Qué muestra o pide:**

- Lista de 338 empleados
- Leyenda: con adelanto vigente / sin adelanto

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Préstamos por persona.

## **3.4 Vacaciones**

**Ruta:** Personal › Movimientos › Vacaciones **Estado: Verificado en pantalla**

Para qué sirve: Registra las vacaciones de cada trabajador.

**Qué muestra o pide:**

- Lista de personal (114; 17 con vacaciones)
- Cabecera: código, nombre y monto total
- Inicio, fin, total de días y días trabajados
- Moneda, fecha de adelanto, préstamo y forma de pago
- Detalle: fecha inicio y final, días, periodo desde/hasta, tipo (p. ej. VN vacaciones normales), importe del adelanto, año y mes de aplicación

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Vacaciones aplicadas en el mes indicado. El mes debe estar cerrado para registrarlas.

## **3.5 EPS**

**Ruta:** Personal › Movimientos › EPS **Estado: Parcial**

Para qué sirve: Registra la EPS del personal.

**Qué muestra o pide:**

- Columnas: código de personal, apellido, sueldo, parientes, crédito y prima mensual

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Sin registros (0).

## **3.6 Aprobación de Préstamos**

**Ruta:** Personal › Movimientos › Aprobación de Préstamos **Estado: Verificado en pantalla**

Para qué sirve: Aprueba las solicitudes de préstamo.

**Qué muestra o pide:**

- Lista con código, apellidos, monto, moneda, número de cuotas y estado
- Filtro por estado: AP aprobado o SO solicitado
- Con el filtro Solicitado: 0 registros

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Cambia el estado del préstamo al aprobar; no se usó.

## **3.7 Pagos Extraordinarios**

**Ruta:** Personal › Movimientos › Pagos Extraordinarios **Estado: Parcial**

Para qué sirve: Registra pagos fuera de la planilla regular.

**Qué muestra o pide:**

- Con la planilla ya ejecutada, el sistema avisa: «No podrá realizar esta operación debido a que la planilla ha sido ejecutada»

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: No se pudo operar.

## **3.8 Retenciones de Quinta Categoría**

**Ruta:** Personal › Movimientos › Retenciones de Quinta Categoría **Estado: Verificado en pantalla**

Para qué sirve: Registra lo percibido y retenido en otras empresas, para calcular la quinta categoría.

**Qué muestra o pide:**

- Título «Retención de otras Empresas»; 14 trabajadores
- Consulta: personal, importe percibido, importe retenido y última retención

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Dato que usa el cálculo de quinta categoría.

## **3.9 Cambio Masivo de Movimientos**

**Ruta:** Personal › Movimientos › Cambio Masivo de Movimientos **Estado: Verificado en pantalla**

Para qué sirve: Agrega un concepto a muchas personas a la vez.

**Qué muestra o pide:**

- Se elige un concepto de una lista (p. ej. un adelanto de canasta navideña)
- Muestra al personal activo (111) con columnas Ingresado, Resultado y DOI
- Al pie, totales de lo ingresado y del resultado

**Cómo usarla:**

1. Abra la pantalla desde la ruta indicada.
2. Revise la lista o la ficha que muestra.
3. Para ver el detalle de un registro, selecciónelo y pulse Consultar (F4); ciérrelo sin guardar.
4. Nuevo, Editar y Eliminar crean o modifican datos: no se usaron y deben validarse con el responsable.

Resultado: Carga masiva del concepto; no se ingresó ningún dato.

# **4\. Reglas, advertencias y faltantes**

## **Reglas del sistema**

- El mes debe estar cerrado para registrar y aplicar vacaciones (indicación del usuario).
- Con la planilla ejecutada el sistema bloquea la operación.
- Cada movimiento se trabaja por tipo de planilla y por proceso de la sesión.

## **Advertencias**

- No se usaron Nuevo, Grabar ni Aprobar.
- EPS no tiene registros.

## **Faltantes de implementación y pendientes**

- Flujo de aprobación de préstamos con datos.
- Efecto del Cambio Masivo en la planilla.

## **Cómo leer el estado**

| **Estado**                 | **Significado**                                                   |
| -------------------------- | ----------------------------------------------------------------- |
| **Verificado en pantalla** | Se abrió la pantalla y se registró lo que muestra.                |
| **Parcial**                | Se vio solo una parte (la lista pero no el detalle, o sin datos). |
| **Deducido por nombre**    | Solo se conoce el nombre del menú o la pantalla no se pudo ver.   |

# **5\. Casos de prueba**

| **ID**        | **Funcionalidad**               | **Escenario**                               | **Resultado esperado**                                                                | **Estado**   |
| ------------- | ------------------------------- | ------------------------------------------- | ------------------------------------------------------------------------------------- | ------------ |
| **CP-MOV-01** | Parámetros (sesión de planilla) | Abrir y consultar un registro sin modificar | Aceptar fija el contexto de las demás pantallas; Cancelar sale sin cambios.           | Por ejecutar |
| **CP-MOV-02** | Movimiento Ing/Dscto            | Abrir y consultar un registro sin modificar | Movimiento que usa el cálculo de planilla.                                            | Por ejecutar |
| **CP-MOV-03** | Préstamos                       | Abrir y consultar un registro sin modificar | Préstamos por persona.                                                                | Por ejecutar |
| **CP-MOV-04** | Vacaciones                      | Abrir y consultar un registro sin modificar | Vacaciones aplicadas en el mes indicado. El mes debe estar cerrado para registrarlas. | Por ejecutar |
| **CP-MOV-05** | EPS                             | Abrir y consultar un registro sin modificar | Sin registros (0).                                                                    | Por ejecutar |
| **CP-MOV-06** | Aprobación de Préstamos         | Abrir y consultar un registro sin modificar | Cambia el estado del préstamo al aprobar; no se usó.                                  | Por ejecutar |
| **CP-MOV-07** | Pagos Extraordinarios           | Abrir y consultar un registro sin modificar | No se pudo operar.                                                                    | Por ejecutar |
| **CP-MOV-08** | Retenciones de Quinta Categoría | Abrir y consultar un registro sin modificar | Dato que usa el cálculo de quinta categoría.                                          | Por ejecutar |
| **CP-MOV-09** | Cambio Masivo de Movimientos    | Abrir y consultar un registro sin modificar | Carga masiva del concepto; no se ingresó ningún dato.                                 | Por ejecutar |