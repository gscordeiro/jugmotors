<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Selecione a cor</title>
	</head>
	<body>
		<g:form action="create">
			Opcionais: <g:select name="opcionais" from="${pedidoInstance.modelo.opcionais}" multiple="multiple" optionKey="id" optionValue="descricao" size="5" class="many-to-many"
onchange_="${remoteFunction(controller: 'opcional', action: 'info', update: 'valorOpcional', params: '\'id=\' + escape(this.value)') }"/>

		<span id="valorOpcional"></span>


			<g:submitButton name="back" value="&lt;&lt; Escolher a cor"/>
			<g:submitButton name="next" value="Efetuar pedido &gt;&gt;"/>
		</g:form>
	</body>
	
</html>





