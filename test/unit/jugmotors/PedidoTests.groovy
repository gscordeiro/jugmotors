package jugmotors



import jugmotors.Modelo;
import jugmotors.Opcional;
import jugmotors.Pedido;
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Pedido)
class PedidoTests {

    void testPedidoComOpcionaisMisturados() {

		
		def gol = new Modelo(nome:'Gol', valor: 20000)
		def polo = new Modelo(nome: 'Polo', valor: 40000)
		
		def opcionais = [new Opcional(descricao: 'ar condicionado', modelo:gol, valor: 2000),
							new Opcional(descricao: 'roda liga leve', modelo:gol, valor: 1500),
							new Opcional(descricao: 'air bag', modelo: polo, valor: 3000)
						]
		
		def pedido = new Pedido(modelo: gol, opcionais: opcionais)
		
		mockForConstraintsTests(Pedido, [pedido])
		
		assert ! pedido.validate()
		
		assert 'pedido.opcionais.invalid' == pedido.errors['opcionais']
		
    }
}
