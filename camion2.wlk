import cosas.*
object camion {
    const property carga = [] 

    method peso() = 1000 + carga.sum({c => c.peso()})

    method cargarAlgo(unaCosa) {
      carga.add(unaCosa)
    }

    method descargarAlgo(unaCosa) {
      carga.remove(unaCosa)
    }

    method bultos() = carga.sum({c => c.bultos()}) 

    method peligrosidad() = carga.sum({c => c.peligrosidad()})

    method pesosDeCargaImpares() = carga.all({c => c.odd()})

    method unaCargaPesa(unValor) = carga.any ({c => c.peso() == unValor})
 
    method primeraCargaConPeligrosidad(unValor) = carga.find({c => c.peligrosidad() == unValor})

    method cargaConNivelDePeligrosidad(unValor) = carga.filter({c => c.peligrosidad() >= unValor})

    method cargaConNivelDePeligrosidadMayorA(unaCosa) = carga.filter({c => c.peligrosidad() >= unaCosa.peligrosidad()})   

    method estaExcedidoDePeso() = self.peso() >= 2500 

    method puedeCircular(nivelPeligrosidad) = not self.estaExcedidoDePeso() and carga.any({c => c.peligrosidad() <= nivelPeligrosidad})

    method cosaQuePesaEntre(minPeso,maxPeso) = carga.any({c => c.peso().between(minPeso, maxPeso)}) 

    method cosaMasPesada() = carga.max({c => c.peso()})
}