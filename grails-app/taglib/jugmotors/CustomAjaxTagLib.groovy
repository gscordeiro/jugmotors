package jugmotors

class CustomAjaxTagLib {
	def ajaxFunction = { attrs, body ->
		
		def lista = attrs.params.collect{ key, value -> "\'$key=\' + $value" }
		def lista2 = attrs.ids.collect{ key, value -> "\'$key=\' + \$(\'#${value.replaceAll('\\.', '\\\\\\\\.')}\').val()" }
		def lista3 = attrs.names.collect{ key, value -> "\'$key=\' + \$(\'[name=${value.replaceAll('\\.', '\\\\\\\\.')}]\').val()" }
		
		def separador = " + \'&\' +"
		
		lista += lista2
		lista += lista3
		
		def str = lista.join(separador)
		
		out << g.remoteFunction(controller: attrs.controller, action: attrs.action, id: attrs.id, update: attrs.update ,params: str)
	}
}
