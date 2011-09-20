
<%@ page import="jugmotors.Modelo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelo.label', default: 'Modelo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-modelo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-modelo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:form method="post">
			
				<g:hiddenField name="id"/>
			
				<table>
					<thead>
						<tr>
						
							<g:sortableColumn property="motor" title="${message(code: 'modelo.motor.label', default: 'Motor')}" />
						
							<g:sortableColumn property="nome" title="${message(code: 'modelo.nome.label', default: 'Nome')}" />
						
							<g:sortableColumn property="valor" title="${message(code: 'modelo.valor.label', default: 'Valor')}" />
						
							<th>Ações</th>
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${modeloInstanceList}" status="i" var="modeloInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td>${fieldValue(bean: modeloInstance, field: "motor")}</td>
							
							<td>${fieldValue(bean: modeloInstance, field: "nome")}</td>
						
							<td>${fieldValue(bean: modeloInstance, field: "valor")}</td>
							
							<td>
								<fieldset class="buttons">
									<g:link class="edit" action="edit" id="${modeloInstance?.id}">Editar</g:link>
									<g:actionSubmit class="delete" action="delete" value="Apagar" onclick="document.forms[0].id.value='${modeloInstance.id}';"/>
								</fieldset>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
			
			</g:form>
			
			<div class="pagination">
				<g:paginate total="${modeloInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
