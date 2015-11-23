<%@ page import="com.flightloglib.domain.CrewMemberRole" %>



<div class="fieldcontain ${hasErrors(bean: crewMemberRoleInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="crewMemberRole.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${crewMemberRoleInstance?.description}" />
</div>

