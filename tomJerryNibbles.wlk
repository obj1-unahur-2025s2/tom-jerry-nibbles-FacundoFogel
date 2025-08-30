object tom {

    var energia = 50

    method correr(distancia){
        energia = 0.max(energia - distancia / 2)
    }

    method comer(unRaton){
        energia = 1000.min(energia + 12 + unRaton.peso())
        unRaton.serComido()
    }

    method velocidadMaxima(){
        return 5 + energia / 10
    }

    method energia(){
        return energia
    }

    method puedeCazar(unaDistancia) {
        return energia >= unaDistancia / 2
    }

    method cazar(unRaton, distancia){
        if (self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(unRaton)
        }

    }
}

object jerry {
  var edad = 2

  method peso(){
    return edad * 20
    }

  method cumplirAnios(){
    edad = edad + 1
  }

  method serComido() {}
}

object nibbles {
  method peso() {
    return 35
  }
  method serComido() {}
}

object bizcocho {
    var estaSeco = true
    method peso(){
        if(estaSeco){
            return 20
        }
        else{
            return 30
        }
    }

    method serComido(){
        estaSeco = false
    }
}
// Inventar otro ratón