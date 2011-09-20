<%@ page import="jugmotors.Modelo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Login</title>
	</head>
	<body>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form>
				<fieldset class="form">
					<div class="fieldcontain login">
						<label for="login">
							Login
						</label>
						<g:textField name="login"/> (admin)
					</div>
					<div class="fieldcontain senha">
						<label for="senha">
							Senha
						</label>
						<g:passwordField name="senha"/> (admin)
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="logar" value="Login" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
