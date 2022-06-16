# Modelo Relacional
sucursal = (<u>nombre_sucursal</u>, ciudad_sucursal, activos)

cliente = (<u>id_cliente</u>, nombre_cliente, calle_cliente, ciudad_cliente)

préstamo = (<u>numero_préstamo</u>, importe)

cuenta = (<u>numero_cuenta</u>, saldo)

empleado = (<u>id_empleado</u>, nombre_empleado, numero_teléfono, fecha_contratación)

---

sucursal_cuenta = (<u>numero_cuenta</u>, nombre_sucursal)

sucursal_préstamo = (<u>numero_préstamo</u>, nombre_sucursal)

prestatario = (<u>id_cliente, numero_préstamo</u>, fecha_acceso)

impositor = (<u>id_cliente, numero_cuenta</u>)

asesor = (<u>id_cliente</u>, id_empleado, tipo)

trabaja_para = (<u>id_empleado_trabajador</u>, id_empleado_jefe)

pago = (<u>numero_préstamos, numero_pago</u>, fecha_pago, importe_pago)

cuenta_ahorro = (<u>numero_cuenta</u>, tasa_interés)

cuenta_corriente = (<u>numero_cuenta</u>, importe_descubierto)