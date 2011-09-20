package jugmotors

import grails.converters.*

class OpcionalController {

    static scaffold = true
	
	def info(){
		def opcional = Opcional.get(params.id)
		
		withFormat {
			html { render "$opcional.descricao do $opcional.modelo.nome, valor: R\$ $opcional.valor" }
			json { render opcional as JSON }
			xml { render opcional as XML }
		}
		
	}
}
