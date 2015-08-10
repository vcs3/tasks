<%@ page import="tasks.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
			<header>
		<span>Lista de tarefas</span>
	</header>
		<div id="edit-task" class="content scaffold-edit" role="main">
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
			<g:form url="[resource:taskInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${taskInstance?.version}" />
			
					<g:render template="form"/>
			
			
				<nav>
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</nav>
			</g:form>
			</section>
		</div>
	</body>
</html>
