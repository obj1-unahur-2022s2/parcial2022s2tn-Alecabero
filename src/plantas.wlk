/*
 * - El archivo plantas.wlk no compila, tiene el error Mensaje incorrecto: altura<. Te faltaron los paréntesís para llamar al método.	
 * - En daNuevasSemillas() de Menta debias usar super() or la condición adicional (altura > 0.4)
 * - El método estaComodo Hierbabuena no es necesario porque tiene exactamente el mismo código que el de Menta
 * - En daNuevasSemillas() de Soja debías usar super() or la condición adicional (anioObtencionSemilla > 2007 and altura > 1)
 * - En daNuevasSemillas() de Soja Quinoa usar super() or la condición adicional (anioObtencionSemilla<2005)
 * - El método estaComodo de Quinoa esta mal, no hace lo que pide el enunciado. Debías usar all() o any()
 */
import parcelas.*
class Planta {
 	var anioObtencionSemilla
 	var property altura
 	
	method horasDeSolTolearadas()
 	method esFuerte() = self.horasDeSolTolearadas() > 10
 	method daNuevasSemillas() = self.esFuerte()
 	method espacioOcupado()
 	method condAlt()
 	method estaComodo(parcela)
}
 
class Menta inherits Planta {
 	override method horasDeSolTolearadas()=6
 	override method daNuevasSemillas()= super() or self.condAlt()
 	override method espacioOcupado()= altura * 3
 	override method condAlt()= altura > 0.4 
 	override method estaComodo(parcela)=parcela.superficie()>6
}
class Hierbabuena inherits Menta {
	override method espacioOcupado()= super()*2
	/*No es necesario porque es exactamente igual que el heredado de Menta
	 * override method estaComodo(parcela)=parcela.superficie()>6
	 * 
	 */
}

 
class Soja inherits Planta {
	override method horasDeSolTolearadas()=if(altura < 0.5) 6
											else if(altura.between(0.5,1)) 7
											else 9
	override method daNuevasSemillas()=super() or self.condAlt()
	
	override method espacioOcupado()=altura /2				
	override method condAlt()= anioObtencionSemilla > 2007 and altura > 1			
	override method estaComodo(parcela)=parcela.horaDeSol() == self.horasDeSolTolearadas()
}
 
class SojaTrangenica inherits Soja {
	override method daNuevasSemillas()=false
	override method estaComodo(parcela)=parcela.plantas()==1
}
 
class Quinoa inherits Planta {
	var property horaSol
	
	override method horasDeSolTolearadas()= horaSol
	override method espacioOcupado()=0.5
	override method daNuevasSemillas()=super() or self.condAlt()
	override method condAlt()= anioObtencionSemilla<2005
	override method estaComodo(parcela)=parcela.plantas().all({planta => planta.altura() < 1.5})
}


