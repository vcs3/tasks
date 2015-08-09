<%@ page import="tasks.Task" %>

<header>
		<span>Lista de Tarefas</span>
	</header>
	<main id="taskPage">
	<section id="taskCreation" >
<div class=" ${hasErrors(bean: taskInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="task.task.label" default="Tarefa" />
		<span class="required-indicator">*</span>
	</label>
	 <g:textField name="task" class="large"  required="" value="${taskInstance?.task}" />

</div>

 <div  class=" ${hasErrors(bean: taskInstance, field: 'requiredBy', 'error')} required">
	<label for="requiredBy">
		<g:message code="task.requiredBy.label" default="Finalizar até" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="requiredBy" precision="day"  value="${taskInstance?.requiredBy}"  />

</div>

<div class="${hasErrors(bean: taskInstance, field: 'complete', 'error')} ">
	<label for="complete">
		<g:message code="task.complete.label" default="Finalizado?" />
		
	</label>
	<g:checkBox name="complete" value="${taskInstance?.complete}" />

</div>

<div class="${hasErrors(bean: taskInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="task.category.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${tasks.Category.list()}" optionKey="id" required="" value="${taskInstance?.category?.id}" class="many-to-one"/>

</div>
</section>
