object kinghtRider {

  method peso() = 500

  method peligrosidad() = 10

  method bultos() = 1 

  method consecuenciaCarga() = {} 
}

object bumbleBee {
  var property modoAuto = true

  method peso() = 800

  method peligrosidad() = if(modoAuto) 15 else 30 

  method bultos() = 2

  method consecuenciaCarga() {self.modoAuto(false)} 
}

object ladrillos {
    var property cantLadrillos = 100

    method peligrosidad() = 2 

    method peso() = cantLadrillos * 2 

    method bultos() = 
    if(cantLadrillos < 101){1}
    else if (cantLadrillos.between(101, 300)) {2} 
    else {3} 

    method consecuenciaCarga() {cantLadrillos += + 12}
}

object arena {
  var property peso = 100

  method peligrosidad() =  1

  method bultos() = 1 

  method consecuenciaCarga() {peso = 0.max(peso - 12)}
}

object bateriaAntiaerea {
  var property tieneMisiles = true

  method peso() =  if(tieneMisiles) 300 else 200

  method peligrosidad() = if(tieneMisiles) 100 else 0  

  method bultos() = if(tieneMisiles) {2} else {1} 

  method consecuenciaCarga() {tieneMisiles = true}
}

object contenedor {
  const property contenido = []

  method agregarContenido(unContenido) {
    contenido.add(unContenido)
  }
  method peso() = 100 + contenido.sum({c => c.peso()}) 

  method peligrosidad() = contenido.max({c=> c.peligrosidad()}).peligrosidad()

  method bultos() = 1 + contenido.sum({c => c.bultos()}) 

  method consecuenciaCarga() {contenido.forEach({c => c.consecuenciaCarga()})}
}

object residuosRadioActivos {
  var property peso = 100

  method peligrosidad() = 200

  method bultos() = 1 

  method consecuenciaCarga() {peso = peso + 15}
}

object embalaje {
  var property contenido = null


  method peso() = contenido.peso()

  method peligrosidad() = contenido.peligrosidad() * 0.5

  method bultos() = 2 + contenido.bultos() 

  method consecuenciaCarga() {}

}