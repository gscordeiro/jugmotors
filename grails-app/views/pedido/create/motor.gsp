<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Selecione o motor</title>
	</head>
	<body>
		<g:form action="create">
			Motor: <g:select name="motor.id" from="${pedidoInstance.modelo.motores}" noSelection="${['':'-- selecione um motor -- ']}" 
						optionKey="id" optionValue="cilindrada"/>
			<g:submitButton name="back" value="&lt;&lt; Escolher o modelo"/>
			<g:submitButton name="next" value="Escolher a cor &gt;&gt;"/>
		</g:form>
	</body>
	
</html>