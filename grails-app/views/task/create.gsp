<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="create-task" class="content scaffold-create" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${taskInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${taskInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:taskInstance, action:'save']" >
			
					<g:render template="form"/>
			
				<nav>
				 	<g:submitButton name="create" id="saveTask"  class="save" value="${message(code: 'Salvar Tarefa', default: 'Salvar')}" />
					<a href="#" id="clearTask">Limpar tarefa</a>
					<a href="#" id="returnTask">
						<g:link class="list" action="index"><g:message code="Voltar" args="[entityName]" /></g:link>
					</a>
				</nav>
				
				
			
			</g:form>
		</div>
	</body>
</html>
