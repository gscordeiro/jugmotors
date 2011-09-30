<%@ page import="jugmotors.Pedido" %>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="pedido.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modelo" name="modelo.id" from="${jugmotors.Modelo.list()}" optionKey="id" required="" value="${pedidoInstance?.modelo?.id}" class="many-to-one"
		noSelection="${['': 'Selecione um modelo'] }"
		onchange="${ajaxFunction(action: 'buscarOpcionais', update: 'opcionais', params: ['modelo': 'escape(this.value)']) }"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'opcionais', 'error')} ">
	<label for="opcionais">
		<g:message code="pedido.opcionais.label" default="Opcionais" />
		
	</label>
	
	<span id="opcionais">
		<g:if test="${pedidoInstance.modelo}">
			<g:render template="opcionais" model="['opcionaisList': pedidoInstance.modelo.opcionais]"/>
		</g:if>
		<g:else>
			Selecione um modelo
		</g:else>
	</span>
</div>

