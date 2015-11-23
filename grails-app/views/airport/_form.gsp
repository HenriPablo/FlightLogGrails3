<%@ page import="com.flightloglib.domain.Airport" %>



<div class="fieldcontain ${hasErrors(bean: airportInstance, field: 'icaoIdentifier', 'error')} ">
	<label for="icaoIdentifier">
		<g:message code="airport.icaoIdentifier.label" default="Icao Identifier" />
		
	</label>
	<g:textField name="icaoIdentifier" value="${airportInstance?.icaoIdentifier}" />
</div>

<div class="fieldcontain ${hasErrors(bean: airportInstance, field: 'longName', 'error')} ">
	<label for="longName">
		<g:message code="airport.longName.label" default="Long Name" />
		
	</label>
	<g:textField name="longName" value="${airportInstance?.longName}" />
</div>

