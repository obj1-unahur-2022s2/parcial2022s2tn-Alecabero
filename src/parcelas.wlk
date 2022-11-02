/*
 * - El archivo no compila. En Parcela ecologica escribiste tieneComplicaciones como un mensaje solo sin objeto.
 * - El archivo no compila. En Parcela ecologica escribiste parIdeal como un mensaje solo sin objeto.
 * - horaDeSol debía ser un  property para que las puedas consutar las horas de sol que se usa en el método esa comodo de Soja 
 * - El método planta(planta) es un método de indicacion NO de consulta, no debe tener return o =
 * - El método planta(planta) no tiene las validaciones que se solicitaban, podias llamar al método auxiar que hicieste noSePuede() y completarlas ahí
 * - En el método noSePuede comparaste la coleccion de plantas con un numero plantas > 5, si plantas es una coleccion debes usar el size()
 * - La clase ParcelasIdeales no debia existir, solo debia existir Ecológica e Industrial el herenden de Parcela
 * - Parcela debía tener el método abstarto seAsociaBien(planta)
 * - Ecológica e Industrial debían sobreEscribir el método seAsociaBien(planta)
 */
import plantas.*

class Parcela{
 	var property ancho
 	var property largo
 	var property horaDeSol
 	const property plantas=[]
 	
 	method superficie()=ancho*largo
 	method capacidadMaxPlantas()= if(ancho>largo) self.superficie()/5
 	else self.superficie() / 3 + largo
 	
 	method tieneComplicaciones()=plantas.any({p=>p.horasDeSolTolearadas()< horaDeSol})
 	method plantar(planta){
 		self.noSePuede()
 		plantas.add(planta)
 	}  
	
 	method noSePuede(){
 		if(plantas.size() > 5) self.error("no se puede plantar")
 	} 
 	
 	
}
 
/* 
class ParcelasIdeales inherits Parcela{
	method parIdeal()=plantas //¿Qué es esto???????
}
* 
*/

class Ecologica inherits Parcela{
 // method esIdeal()= not self.tieneComplicaciones() and parIdeal()
 	
}
 
class Industrial inherits Parcela{
 // method esIdeal()= plantas>2 and plantas.esFuerte()
}
