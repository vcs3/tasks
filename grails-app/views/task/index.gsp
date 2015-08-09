
<%@ page import="tasks.Task" %>
<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<header>
		<span>Lista de Tarefas</span>
	</header>
		<a href="#list-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	
		<div id="list-task" class="content scaffold-list" role="main">
	
	<br clear="all"/>
	<br clear="all"/>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="tblTasks">
						  <colgroup>
					<col width="40%">
					<col width="15%">
					<col width="15%">
					<col width="30%">
				</colgroup>
				</colgroup>
			<thead>
					<tr>
					
						<g:sortableColumn property="task" title="${message(code: 'task.task.label', default: 'Tarefa')}" />
					
						<g:sortableColumn property="requiredBy" title="${message(code: 'task.requiredBy.label', default: 'Dedline')}" />
					
					
						<th><g:message code="task.category.label" default="Categoria" /></th>
						<th>Ações</th>
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="edit" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "task")}</g:link></td>
					
						<td><g:formatDate date="${taskInstance.requiredBy}" /></td>

					
						<td>${fieldValue(bean: taskInstance, field: "category")}</td>
										<td>
					<nav>
					<g:link class="editRow" action="edit" id="${taskInstance.id}">Editar</g:link>
				
					
					<g:form url="[resource:taskInstance, action:'delete']" method="DELETE">
      			 <g:actionSubmit class="deleteRow" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </g:form>
    <g:link class="completeRow" action="edit" id="${taskInstance.id}">Completar</g:link>
					</nav>
    
</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<nav>
			<g:link class="create"  id="btnAddTask" action="create"><g:message code="Adicionar tarefa" args="[entityName]" /></g:link>
			<g:link controller="category" action="index"><g:message code="Categorias" args="[Category]" /></g:link>
					
			</nav>
			<br clear="all"/>
			<footer>Você tem <span id="taskCount">
			${taskInstance}</span> tarefa(s) aberta(s)</footer>
			
		</div>
	</body>
</html>

,