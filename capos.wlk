object rolando {
    var property mochila = #{} // const, porque "construyo" la mochila una sola vez
    var property capacidad = 2
    var property hogar = castillo // eso es un hogar porque estoy pensando en el ROL que cumple el castillo, por eso es un var.
    const property historial = []

    method encontrar(artefacto) {
        if (mochila.size() < capacidad){
            mochila.add(artefacto)
        }
        historial.add(artefacto)
    }

    method posesiones() {
      return mochila + hogar.almacen() // sino fuese una variable, preguntaria todo el tiempo SOLO POR EL CASTILLO, en cambio como es una variable, puede que tarde o temprano rolando cambie el hogar
    }

    method posee(artefacto) {
      return self.posesiones().contains(artefacto) // contains(param) devuelve un booleano de si un conjutno posee o no el parametro dado
    }

    method artefactoEnHistorial(indice) {
      return historial.get(indice) // me devuelve el elemnto de la lista que esta en el indice que le pase, SOLO SIRVE PARA LISTAS NO PARA CONJUNTOS
    }

    method llegarAHogar() {
        hogar.almacenar(mochila)
        mochila.clear()
    }
}

///// LUGARES /////

object castillo {
    var property almacen = #{}

    method almacenar(artefactos) {
        almacen.addAll(artefactos)
    }

}



///// ARTEFACTOS /////
object espada {
  
}
object libro {
  
}
object collar {
  
}
object armadura {
  
}