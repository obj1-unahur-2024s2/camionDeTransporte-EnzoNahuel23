object knightRider{
method peso() = 500
method peligrosidad() = 10

}

object bumblebee{
var estado = robot
method peso() = 800
method peligrosidad() = estado.peligrosidad()
method transformate(unEstado){
estado = unEstado
}
}

object robot {
method peligrosidad() = 30
}
object auto{
method peligrosidad() = 15
}
object paqueteDeLadrillos{
var property cantidad = 0
method peso() = 2 * cantidad
method peligrosidad() = 2
}

object arenaGranel{
var property peso = 0
method peligrosidad() = 1
}

object bateriaAntiaerea{
var tieneMisil = false
method peso() = if (tieneMisil) 300 else 200
method peligrosidad() = if (tieneMisil) 100 else 0
method cargar(){
tieneMisil = true
}

method descargar(){
tieneMisil = false
}
}

object contenedorPortuario{
const cosas = []

method agregarCosa(unaCosa){
cosas.add(unaCosa)
}
method peso(){
return 100 + cosas.sum ( {c=> c.peso()})
}

method peligrosidad(){
if (cosas.isEmpty()) return 0
return cosas.max({c=> c.peligrosidad() }).peligrosidad()
}
}

object residuosRadioactivos{
var property peso = 0
method peligrosidad() = 200
}

object embalajeDeSeguridad{
var property cosaEnvuelta = cosaNulleable
method peso() = cosaEnvuelta.peso()
method peligrosidad()= cosaEnvuelta.peligrosidad() * 0.5
}

object cosaNulleable{
method peso() = 0
method peligrosidad() = 0
}

