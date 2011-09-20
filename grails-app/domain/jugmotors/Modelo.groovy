package jugmotors

import groovy.transform.EqualsAndHashCode;
import groovy.transform.ToString;

@ToString
@EqualsAndHashCode
class Modelo {

	static searchable = true
	
	String nome
	Float motor
	BigDecimal valor
	
	static hasMany = [opcionais:Opcional]
	
    static constraints = {
    }
}
