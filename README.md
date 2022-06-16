# CASO DEL BANCO EN SQL
Es un ejercicio introductorio a la asignatura de base de datos de la [Universidad Nebrija](https://www.nebrija.com/)

## Crea el esquema de una base de datos en SQL a partir de este enunciado
*(enunciado adaptado del caso del banco del libro de [__Abraham Silberschatz__](https://es.wikipedia.org/wiki/Abraham_Silberschatz)*

- El banco está organizado en sucursales. Cada sucursal está ubicada en una ciudad concreta y se identifica con un nombre único. El banco supervisa los activos de cada sucursal.

- Los clientes del banco se identifican mediante su valor de id cliente. El banco almacena cada nombre de cliente, y la calle y la ciudad donde vive cada cliente.Los clientes pueden tener cuentas y pueden solicitar préstamos. Cada cliente puede estar asociado con un empleado del banco concreto, que puede actuar como responsable de préstamos o como asesor personal de ese cliente. 

- Los empleados del banco se identifican mediante su valor de id empleado. La administración del banco almacena el nombre y el número de teléfono de cada empleado. El banco también mantiene un registro de la fecha de incorporación a la empresa del empleado Entre los empleados también existe una relación, ya que un empleado puede trabajar para un jefe, y este a su vez puede tener varios subordinados.

- El banco ofrece dos tipos de cuentas: cuentas de ahorro y cuentas corrientes. Las cuentas pueden tener como titular a más un cliente, y cada cliente puede tener más de una cuenta. Cada cuenta tiene asignado un número de cuenta único. El banco mantiene un registro del saldo de cada cuenta y de la fecha más reciente en que cada titular de la cuenta tuvo acceso a esa cuenta. Además, cada cuenta de ahorro tiene un tipo de interés y para cada cuenta corriente se registran los descubiertos generados.

- Cada préstamo se genera en una sucursal concreta y pueden solicitarlo uno o más clientes. Cada préstamo se identifica mediante un número de préstamo único. Para cada préstamo el banco mantiene un registro del importe del préstamo y de los pagos realizados el número de pago si que identifica cada pago de un préstamo concreto. De cada pago se registran la fecha y el importe.

## Ejecución
Antes de hacer el diseño físico en SQL, pasaremos en orden por las etapas de:

- __Diseño conceptual:__ El diseño conceptual se realiza a partir de la especificación de requisitos y se obtiene el esquema conceptual. En mi caso, el esquema conceptual sera un diagrama [__Entidad-Relación__](Diagrama%20caso%20del%20banco.png)
- __Diseño lógico:__El diseño lógico se realiza a partir del esquema conceptual y
se obtiene el esquema lógico. [__Modelo relacional__](Modelo%20Relacional.md)

Por último, haremos el [diseño físico](Database.sql) en lenguaje SQL. 