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
 	override method daNuevasSemillas()= altura > 0.4 or self.condAlt()
 	override method espacioOcupado()= altura * 3
 	override method condAlt()= altura > 5
 	override method estaComodo(parcela)=parcela.superficie()>6
}
class Hierbabuena inherits Menta {
	override method espacioOcupado()= super()*2
	override method estaComodo(parcela)=arcela.superficie()>6
}

 
class Soja inherits Planta {
	override method horasDeSolTolearadas()=if(altura < 0.5) 6
											else if(altura.between(0.5,1)) 7
											else 9
	override method daNuevasSemillas()=anioObtencionSemilla > 2007 and altura > 1 or self.condAlt()
	
	override method espacioOcupado()=altura /2				
	override method condAlt()= altura > 4			
		override method estaComodo(parcela)=parcela.horaDeSol == self.horasDeSolTolearadas()
}
 
class SojaTrangenica inherits Soja {
	override method daNuevasSemillas()=false
	override method estaComodo(parcela)=parcela.plantas==1
}
 
class Quinoa inherits Planta {
	var property horaSol
	
	override method horasDeSolTolearadas()= horaSol
	override method espacioOcupado()=0.5
	override method daNuevasSemillas()=anioObtencionSemilla<2005 or self.condAlt()
	override method condAlt()= horaSol > 10
	override method estaComodo(parcela)=parcela.plantas=0 and  self.altura < 1.5
}


