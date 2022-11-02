import parcelas.*
object inta{
	var property parcela
	method promedioPlantas(parcelas)=parcelas.plantas().sum() / parcela()
	method sustentable()=parcela>4
}