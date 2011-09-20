
<%@ page import="jugmotors.Modelo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'modelo.label', default: 'Modelo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-modelo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-modelo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list modelo">
			
				<g:if test="${modeloInstance?.motor}">
				<li class="fieldcontain">
					<span id="motor-label" class="property-label"><g:message code="modelo.motor.label" default="Motor" /></span>
					
						<span class="property-value" aria-labelledby="motor-label"><g:fieldValue bean="${modeloInstance}" field="motor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modeloInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="modelo.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${modeloInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${modeloInstance?.opcionais}">
				<li class="fieldcontain">
					<span id="opcionais-label" class="property-label"><g:message code="modelo.opcionais.label" default="Opcionais" /></span>
					
						<g:each in="${modeloInstance.opcionais}" var="o">
						<span class="property-value" aria-labelledby="opcionais-label"><g:link controller="opcional" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${modeloInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="modelo.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${modeloInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${modeloInstance?.id}" />
					<g:link class="edit" action="edit" id="${modeloInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
