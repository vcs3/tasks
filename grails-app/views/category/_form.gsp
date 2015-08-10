<%@ page import="tasks.Category" %>

<main id="taskPage">

<div class=" ${hasErrors(bean: categoryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="category.description.label" default="Descrição" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${categoryInstance?.description}"/>

</div>
	
</main>



