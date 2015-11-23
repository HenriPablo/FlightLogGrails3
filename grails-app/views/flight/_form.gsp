<%@ page import="com.flightloglib.domain.Flight" %>



<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'actualInstrument', 'error')} ">
	<label for="actualInstrument">
		<g:message code="flight.actualInstrument.label" default="Actual Instrument" />
		
	</label>
	<g:field type="number" name="actualInstrument" value="${fieldValue(bean: flightInstance, field: 'actualInstrument')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'aircraftMakeAndModel', 'error')} ">
	<label for="aircraftMakeAndModel">
		<g:message code="flight.aircraftMakeAndModel.label" default="Aircraft Make And Model" />
		
	</label>
	<g:select id="aircraftMakeAndModel" name="aircraftMakeAndModel.id" from="${com.flightloglib.domain.AircraftMakeAndModel.list()}" optionKey="id" required="" value="${flightInstance?.aircraftMakeAndModel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'asFlightInstructor', 'error')} ">
	<label for="asFlightInstructor">
		<g:message code="flight.asFlightInstructor.label" default="As Flight Instructor" />
		
	</label>
	<g:field type="number" name="asFlightInstructor" value="${fieldValue(bean: flightInstance, field: 'asFlightInstructor')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'crewMembers', 'error')} ">
	<label for="crewMembers">
		<g:message code="flight.crewMembers.label" default="Crew Members" />
		
	</label>
	<g:select name="crewMembers" from="${com.flightloglib.domain.CrewMember.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${flightInstance?.crewMembers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'crossCountry', 'error')} ">
	<label for="crossCountry">
		<g:message code="flight.crossCountry.label" default="Cross Country" />
		
	</label>
	<g:field type="number" name="crossCountry" value="${fieldValue(bean: flightInstance, field: 'crossCountry')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="flight.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day" value="${flightInstance?.date}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="flight.day.label" default="Day" />
		
	</label>
	<g:field type="number" name="day" value="${fieldValue(bean: flightInstance, field: 'day')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'departure', 'error')} ">
	<label for="departure">
		<g:message code="flight.departure.label" default="Departure" />
		
	</label>
	<g:select id="departure" name="departure.id" from="${com.flightloglib.domain.Airport.list()}" optionKey="id" required="" value="${flightInstance?.departure?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'destination', 'error')} ">
	<label for="destination">
		<g:message code="flight.destination.label" default="Destination" />
		
	</label>
	<g:select id="destination" name="destination.id" from="${com.flightloglib.domain.Airport.list()}" optionKey="id" required="" value="${flightInstance?.destination?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'dualReceived', 'error')} ">
	<label for="dualReceived">
		<g:message code="flight.dualReceived.label" default="Dual Received" />
		
	</label>
	<g:field type="number" name="dualReceived" value="${fieldValue(bean: flightInstance, field: 'dualReceived')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'groundTrainer', 'error')} ">
	<label for="groundTrainer">
		<g:message code="flight.groundTrainer.label" default="Ground Trainer" />
		
	</label>
	<g:field type="number" name="groundTrainer" value="${fieldValue(bean: flightInstance, field: 'groundTrainer')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'night', 'error')} ">
	<label for="night">
		<g:message code="flight.night.label" default="Night" />
		
	</label>
	<g:field type="number" name="night" value="${fieldValue(bean: flightInstance, field: 'night')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'noDayLandings', 'error')} ">
	<label for="noDayLandings">
		<g:message code="flight.noDayLandings.label" default="No Day Landings" />
		
	</label>
	<g:field type="number" name="noDayLandings" value="${fieldValue(bean: flightInstance, field: 'noDayLandings')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'noInstAproaches', 'error')} ">
	<label for="noInstAproaches">
		<g:message code="flight.noInstAproaches.label" default="No Inst Aproaches" />
		
	</label>
	<g:field type="number" name="noInstAproaches" value="${fieldValue(bean: flightInstance, field: 'noInstAproaches')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'noNightLandings', 'error')} ">
	<label for="noNightLandings">
		<g:message code="flight.noNightLandings.label" default="No Night Landings" />
		
	</label>
	<g:field type="number" name="noNightLandings" value="${fieldValue(bean: flightInstance, field: 'noNightLandings')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'pilotInCommand', 'error')} ">
	<label for="pilotInCommand">
		<g:message code="flight.pilotInCommand.label" default="Pilot In Command" />
		
	</label>
	<g:field type="number" name="pilotInCommand" value="${fieldValue(bean: flightInstance, field: 'pilotInCommand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="flight.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${flightInstance?.remarks}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'secondInCommand', 'error')} ">
	<label for="secondInCommand">
		<g:message code="flight.secondInCommand.label" default="Second In Command" />
		
	</label>
	<g:field type="number" name="secondInCommand" value="${fieldValue(bean: flightInstance, field: 'secondInCommand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'simulatedInstrument', 'error')} ">
	<label for="simulatedInstrument">
		<g:message code="flight.simulatedInstrument.label" default="Simulated Instrument" />
		
	</label>
	<g:field type="number" name="simulatedInstrument" value="${fieldValue(bean: flightInstance, field: 'simulatedInstrument')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'totalDurationOfFlight', 'error')} ">
	<label for="totalDurationOfFlight">
		<g:message code="flight.totalDurationOfFlight.label" default="Total Duration Of Flight" />
		
	</label>
	<g:field type="number" name="totalDurationOfFlight" value="${fieldValue(bean: flightInstance, field: 'totalDurationOfFlight')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: flightInstance, field: 'via', 'error')} ">
	<label for="via">
		<g:message code="flight.via.label" default="Via" />
		
	</label>
	<g:textField name="via" value="${flightInstance?.via}" />
</div>

