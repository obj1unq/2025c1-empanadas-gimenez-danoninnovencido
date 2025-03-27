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
// ---------------------------------------------------------------
// Agregar el cobro de sueldo:
//                  Baigorria lo suma a un acumulador --> totalCobrado()
//                  La cantidad de empanadas vuelve a CERO al pagarle

object baigorria {
   
    const  precioPorEmp = 15 
    var cantDeEmpVendidas = 0
    var totalCobrado = 0

    method sueldo() = (cantDeEmpVendidas * precioPorEmp) 

    method cantDeEmpVendidas() = cantDeEmpVendidas

    method vender(cantidad) {
        cantDeEmpVendidas += cantidad
    }

    method totalCobrado() = totalCobrado 
    
    method cobrarSueldo(){
        totalCobrado = totalCobrado + self.sueldo()
        cantDeEmpVendidas = 0    
    }
}

// Galvan :
//      PRIMER ESC.:    Deuda : 0       Sueldo : 15mil (sin cobrar)
//      SEG. ESC.:      Deuda: 4000     Dinero : 0 (gastó sin cobrar)
//      TERCER ESC.:    Deuda: 8000     Dinero : 0 (se le suma a la deuda)
//      CUARTO ESC.:    Cobra: 15mil    Deuda: 0    Dinero: 3000 (pago de deuda)
//      QUINTO ESC.:    Gasto:25mil     Dinero:0    Deuda:22mil (se resta una parte del dinero que ya tenia)
//      SEXTO ESC.:     Deuda: 7000     Dinero:0    (paga la deuda pero no le alcanza)

object galvan {
    
    var dinero = 0 
    var deuda = 0
    var sueldoFijo = 15000

    method sueldo() = sueldoFijo  

    method cambiarSueldo(nuevoSueldo) {
        sueldoFijo = nuevoSueldo
    }

    method deuda() = deuda

    method dinero() = dinero 

    method gasto(monto) {
       if (monto > dinero){
         deuda = deuda + (monto - dinero) 
         dinero = 0
         
         }
       else {
        dinero = dinero - monto
       }
    }

    method cobrarSueldo() {
        
        if (deuda == 0){
            dinero = dinero +  self.sueldo()
         }
        else {
            self.actualizarDeuda(self.sueldo())
            
        }
    }

    method actualizarDeuda(aCobrar){
        if(aCobrar > deuda){
            dinero = aCobrar - deuda
            deuda = 0
        } else{
            deuda -= aCobrar
        }
    }

}

object gimenez {
    var fondos = 300000

    method fondosTotales() = fondos

    method pagarA(empleado) {
      fondos = fondos - empleado.sueldo() 
    }  
}

// Agregar el cobro de sueldo:
//                  Baigorria lo suma a un acumulador --> totalCobrado()
//                  La cantidad de empanadas vuelve a CERO al pagarle




