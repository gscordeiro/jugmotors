
<g:select name="opcionais" from="${opcionaisList}" multiple="multiple" optionKey="id" optionValue="descricao" size="5" class="many-to-many"
onchange="${remoteFunction(controller: 'opcional', action: 'info', update: 'valorOpcional', params: '\'id=\' + escape(this.value)') }"/>

<span id="valorOpcional"></span>

<%--
<g:each var="opcional" in="${opcionaisList}">
	<g:checkBox name="opcionais" value="${opcional.id}"/> ${opcional.descricao}
</g:each>
 --%>

