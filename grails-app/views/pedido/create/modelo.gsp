<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Selecione o modelo</title>
	</head>
	<body>
		<g:form action="create">
			Modelo: <g:select name="modelo.id" from="${jugmotors.Modelo.list()}" noSelection="${['':'-- selecione um modelo -- ']}" 
						optionKey="id" optionValue="nome"/>
			<g:submitButton name="next" value="Escolher o motor &gt;&gt;"/>
		</g:form>
	</body>
	
</html>