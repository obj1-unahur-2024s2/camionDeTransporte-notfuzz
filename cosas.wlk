object kinghtRider {

  method peso() = 500

  method peligrosidad() = 10
}

object bumbleBee {
  var property modoAuto = true

  method peso() = 800

  method peligrosidad() = if(modoAuto) 15 else 30 
}

object ladrillos {
    var property cantLadrillos = 100

    method peligrosidad() = 2 

    method peso() = cantLadrillos * 2 
}

object arena {
  var property peso = 100

  method peligrosidad() =  1
}

object bateriaAntiaerea {
  var property tieneMisiles = true

  method peso() =  if(tieneMisiles) 300 else 200

  method peligrosidad() = if(tieneMisiles) 100 else 0  
}

object contenedor {
  const property contenido = []

  method agregarContenido(unContenido) {
    contenido.add(unContenido)
  }
  method peso() = 100 + contenido.sum({c => c.peso()}) 

  method peligrosidad() = contenido.max({c=> c.peligrosidad()}).peligrosidad()
}

object residuosRadioActivos {
  var property peso = 100

  method peligrosidad() = 200


}

object embalaje {
  var property contenido = null


  method peso() = contenido.peso()

  method peligrosidad() = contenido.peligrosidad() * 0.5

}