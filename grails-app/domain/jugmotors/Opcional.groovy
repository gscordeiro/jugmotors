package jugmotors

import groovy.transform.ToString;

@ToString
class Opcional {

	static searchable = true
	
	String descricao
	BigDecimal valor
	
	static belongsTo = [modelo:Modelo]
	
    static constraints = {
    }
}
