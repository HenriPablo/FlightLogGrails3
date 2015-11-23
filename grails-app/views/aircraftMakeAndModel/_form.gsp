<%@ page import="com.flightloglib.domain.AircraftMakeAndModel" %>



<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'aircraftCategoryAndClass', 'error')} ">
	<label for="aircraftCategoryAndClass">
		<g:message code="aircraftMakeAndModel.aircraftCategoryAndClass.label" default="Aircraft Category And Class" />
		
	</label>
	<g:select id="aircraftCategoryAndClass" name="aircraftCategoryAndClass.id" from="${com.flightloglib.domain.AircraftCategoryAndClass.list()}" optionKey="id" required="" value="${aircraftMakeAndModelInstance?.aircraftCategoryAndClass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'aircraftMake', 'error')} ">
	<label for="aircraftMake">
		<g:message code="aircraftMakeAndModel.aircraftMake.label" default="Aircraft Make" />
		
	</label>
	<g:textField name="aircraftMake" value="${aircraftMakeAndModelInstance?.aircraftMake}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'aircraftModel', 'error')} ">
	<label for="aircraftModel">
		<g:message code="aircraftMakeAndModel.aircraftModel.label" default="Aircraft Model" />
		
	</label>
	<g:textField name="aircraftModel" value="${aircraftMakeAndModelInstance?.aircraftModel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'aircraftTailNumber', 'error')} ">
	<label for="aircraftTailNumber">
		<g:message code="aircraftMakeAndModel.aircraftTailNumber.label" default="Aircraft Tail Number" />
		
	</label>
	<g:textField name="aircraftTailNumber" value="${aircraftMakeAndModelInstance?.aircraftTailNumber}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'complex', 'error')} ">
	<label for="complex">
		<g:message code="aircraftMakeAndModel.complex.label" default="Complex" />
		
	</label>
	<g:checkBox name="complex" value="${aircraftMakeAndModelInstance?.complex}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'hiPerformance', 'error')} ">
	<label for="hiPerformance">
		<g:message code="aircraftMakeAndModel.hiPerformance.label" default="Hi Performance" />
		
	</label>
	<g:checkBox name="hiPerformance" value="${aircraftMakeAndModelInstance?.hiPerformance}" />
</div>

<div class="fieldcontain ${hasErrors(bean: aircraftMakeAndModelInstance, field: 'nickname', 'error')} ">
	<label for="nickname">
		<g:message code="aircraftMakeAndModel.nickname.label" default="Nickname" />
		
	</label>
	<g:textField name="nickname" value="${aircraftMakeAndModelInstance?.nickname}" />
</div>

