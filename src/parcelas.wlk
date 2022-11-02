import plantas.*

class Parcela{
 	var property ancho
 	var property largo
 	var horaDeSol
 	const plantas=[]
 	
 	method superficie()=ancho*largo
 	method capacidadMaxPlantas()= if(ancho>largo) self.superficie()/5
 	else self.superficie() / 3 + largo
 	
 	method tieneComplicaciones()=plantas.any({p=>p.horasDeSolTolearadas()< horaDeSol})
 	method plantar(planta)= plantas.add(planta)
	
 	method noSePuede(planta)=if(plantas > 5) self.error("no se puede plantar") else self.plantar(planta)
 	
 	
}
 

class ParcelasIdeales inherits Parcela{
	method parIdeal()=plantas
}

class Ecologica inherits Parcela{
 method esIdeal()= not tieneComplicaciones() and parIdeal()
 	
}
 
class Industrial inherits Parcela{
 	method esIdeal()= plantas>2 and plantas.esFuerte()
}
