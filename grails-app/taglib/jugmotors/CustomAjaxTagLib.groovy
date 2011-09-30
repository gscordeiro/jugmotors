package jugmotors

class CustomAjaxTagLib {
	def ajaxFunction = { attrs, body ->
		
		def params = attrs.params.collect{ key, value -> "\'$key=\' + $value" }
		def ids = attrs.ids.collect{ key, value -> "\'$key=\' + \$(\'#${value.replaceAll('\\.', '\\\\\\\\.')}\').val()" }
		def names = attrs.names.collect{ key, value -> "\'$key=\' + \$(\'[name=${value.replaceAll('\\.', '\\\\\\\\.')}]\').val()" }
		
		def separador = " + \'&\' +"
		
		params += ids
		params += names
		
		def str = params.join(separador)
		
		out << g.remoteFunction(controller: attrs.controller, action: attrs.action, id: attrs.id, update: attrs.update, params: str)
	}
}
