<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Selecione a cor</title>
	</head>
	<body>
		<g:form action="create">
			Motor: <g:select name="cor.id" from="${pedidoInstance.modelo.cores}" noSelection="${['':'-- selecione uma cor -- ']}" 
						optionKey="id" optionValue="nome"/>
			<g:submitButton name="back" value="&lt;&lt; Escolher o motor"/>
			<g:submitButton name="next" value="Escolher os opcionais &gt;&gt;"/>
		</g:form>
	</body>
	
</html>