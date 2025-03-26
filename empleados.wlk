//Escribir aqui los objetos

// Galvan: 
//          Sueldo fijo : 15mil (puede cambiar mes a mes)

//Baigorria:
//          Sueldo : en base a las empanadas vendidas
//          Empanada (Unidad): 15$

//Gimenez:
//         Fondo de sueldos: 300mil

// Se puede preguntar: 
//                      El sueldo de los empleados
//                      El importe de los fondos

//  Registrar la venta de 500 empanadas por parte de Baigorria
//  Cambiar el sueldo de Galvan a 20mil
//  Registrar la venta de otras 300 empanadas 
//  Pagar el sueldo a Baigorrria
//  Pagar a Galvan 

// Lo esperado es:
//                  Sueldo de Baigorria: 12000 pesos
//                  Sueldo de Galvan : 268000 pesos

object baigorria {
   
    const  precioPorEmp = 15 
    var cantDeEmpVendidas = 0

    method sueldo() = (cantDeEmpVendidas * precioPorEmp) 

    method cantDeEmpVendidas() = cantDeEmpVendidas

    method vender(cantidad) {
        cantDeEmpVendidas += cantidad
    }
}

object galvan {
  
    const sueldoFijo = 15000

    method sueldo() = sueldoFijo  
}

object gimenez {
    var fondos = 300000

    method fondosTotales() = fondos

    method pagarA(empleado) {
      fondos = fondos - empleado.sueldo() 
    }  
  
}

