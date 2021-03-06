
<%@ page import="tasks.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<header>
		<span>Categorias</span>
	</header>
	<br/>
		<a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="list-category" class="content scaffold-list" role="main">
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				  <colgroup>
					<col width="90%">
					<col width="10%">
					
				</colgroup>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'category.description.label', default: 'Descrição')}" />
						<th></th>
					</tr>
					
				
				</thead>
				<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="edit" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "description")}</g:link></td>
					
					<td>
							<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE">
      			 <g:actionSubmit class="deleteRow" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </g:form>
    </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<nav>
			<g:link class="create" action="create"><g:message code="Novo" args="[entityName]" /></g:link>
			<g:link  controller="task"><g:message code="Voltar" args="[entityName]" /></g:link>
			</nav>
			
		</div>
	</body>
</html>
