<%@ page import="com.flightloglib.domain.AircraftCategoryAndClass" %>



<div class="fieldcontain ${hasErrors(bean: aircraftCategoryAndClassInstance, field: 'aircraftCategory', 'error')} ">
	<label for="aircraftCategory">
		<g:message code="aircraftCategoryAndClass.aircraftCategory.label" default="Aircraft Category" />
		
	</label>
	<g:textField name="aircraftCategory" value="${aircraftCategoryAndClassInstance?.aircraftCategory}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftCategoryAndClassInstance, field: 'aircraftClass', 'error')} ">
	<label for="aircraftClass">
		<g:message code="aircraftCategoryAndClass.aircraftClass.label" default="Aircraft Class" />
		
	</label>
	<g:textField name="aircraftClass" value="${aircraftCategoryAndClassInstance?.aircraftClass}" />
</div>

