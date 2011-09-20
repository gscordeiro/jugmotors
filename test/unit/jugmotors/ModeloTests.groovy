package jugmotors



import jugmotors.Modelo;
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Modelo)
class ModeloTests {

    void testPersistenciaSimples() {

		assert 0 == Modelo.count()
		
		def modelo = new Modelo(nome: 'fusca', motor: 1.6, valor: 10000)
		
		modelo.save()
		
		assert 1 == Modelo.count()
    }
}
