import cosas.*
object camion {
const cosasCargadas = []
method agregarCosa(unaCosa){
cosasCargadas.add(unaCosa)
}

method objetoMasPesado() = cosasCargadas.max({c => c.peso()}) 

method cargaCosaQuePeseEntre (pesoMinimo,pesoMaximo){
cosasCargadas.between(pesoMinimo, pesoMaximo)
}

}
