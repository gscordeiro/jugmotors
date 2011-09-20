package jugmotors

class Pedido {

	Modelo modelo
	BigDecimal valor
	
	static hasMany = [opcionais:Opcional]
	
	
	def beforeValidate() {
		valor = 0
		valor += modelo.valor
		opcionais.each { valor += it.valor }
	}
	
 
	
    static constraints = {
		
		opcionais validator: {opcionais, pedido ->
			
			opcionais.each {
				if(it.modelo != pedido.modelo){
					
					pedido.errors.rejectValue('opcionais',
						"pedido.opcionais.invalid",
						 [it, pedido.modelo] as Object[],
						 "Opcional [$it.descricao] é do [$it.modelo.nome] e não do [$pedido.modelo.nome]")
				}
			}
			
			!pedido.hasErrors()
			
		}
		
    }
}
