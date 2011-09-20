<%@ page import="jugmotors.Modelo" %>



<div class="fieldcontain ${hasErrors(bean: modeloInstance, field: 'motor', 'error')} required">
	<label for="motor">
		<g:message code="modelo.motor.label" default="Motor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" step="0.1" name="motor" required="" value="${fieldValue(bean: modeloInstance, field: 'motor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modeloInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="modelo.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${modeloInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: modeloInstance, field: 'opcionais', 'error')} ">
	<label for="opcionais">
		<g:message code="modelo.opcionais.label" default="Opcionais" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${modeloInstance?.opcionais?}" var="o">
    <li><g:link controller="opcional" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="opcional" action="create" params="['modelo.id': modeloInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'opcional.label', default: 'Opcional')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: modeloInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="modelo.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="valor" required="" value="${fieldValue(bean: modeloInstance, field: 'valor')}"/>
</div>

