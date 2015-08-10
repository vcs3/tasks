<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<header>
		<span>Lista de tarefas</span>
	</header>
		<div id="create-task" class="content scaffold-create" role="main">
					<section id="taskCreation" >
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
				 	 <g:submitButton name="create" id="saveTask"  class="save" value="${message(code: 'Salvar ', default: 'Salvar')}" />
				   	 <input type="button" name="clear" id="clearTask"  class="clear" value="${message(code: 'Limpar', default: 'Limpar')}" />
					</nav>
				   </g:form>		
				 
			
				
				
			
			</section>
		</div>
	</body>
</html>
