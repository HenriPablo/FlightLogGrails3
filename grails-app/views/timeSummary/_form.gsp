<%@ page import="com.flightloglib.domain.TimeSummary" %>



<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'actualInstrument', 'error')} ">
	<label for="actualInstrument">
		<g:message code="timeSummary.actualInstrument.label" default="Actual Instrument" />
		
	</label>
	<g:field type="number" name="actualInstrument" value="${fieldValue(bean: timeSummaryInstance, field: 'actualInstrument')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'airplaneMultiEngineLand', 'error')} ">
	<label for="airplaneMultiEngineLand">
		<g:message code="timeSummary.airplaneMultiEngineLand.label" default="Airplane Multi Engine Land" />
		
	</label>
	<g:field type="number" name="airplaneMultiEngineLand" value="${fieldValue(bean: timeSummaryInstance, field: 'airplaneMultiEngineLand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'airplaneSingeEngineLand', 'error')} ">
	<label for="airplaneSingeEngineLand">
		<g:message code="timeSummary.airplaneSingeEngineLand.label" default="Airplane Singe Engine Land" />
		
	</label>
	<g:field type="number" name="airplaneSingeEngineLand" value="${fieldValue(bean: timeSummaryInstance, field: 'airplaneSingeEngineLand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'asFlightInstructor', 'error')} ">
	<label for="asFlightInstructor">
		<g:message code="timeSummary.asFlightInstructor.label" default="As Flight Instructor" />
		
	</label>
	<g:field type="number" name="asFlightInstructor" value="${fieldValue(bean: timeSummaryInstance, field: 'asFlightInstructor')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'crossCountry', 'error')} ">
	<label for="crossCountry">
		<g:message code="timeSummary.crossCountry.label" default="Cross Country" />
		
	</label>
	<g:field type="number" name="crossCountry" value="${fieldValue(bean: timeSummaryInstance, field: 'crossCountry')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'crossCountryInstReceived', 'error')} ">
	<label for="crossCountryInstReceived">
		<g:message code="timeSummary.crossCountryInstReceived.label" default="Cross Country Inst Received" />
		
	</label>
	<g:field type="number" name="crossCountryInstReceived" value="${fieldValue(bean: timeSummaryInstance, field: 'crossCountryInstReceived')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'crossCountryPic', 'error')} ">
	<label for="crossCountryPic">
		<g:message code="timeSummary.crossCountryPic.label" default="Cross Country Pic" />
		
	</label>
	<g:field type="number" name="crossCountryPic" value="${fieldValue(bean: timeSummaryInstance, field: 'crossCountryPic')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'crossCountrySolo', 'error')} ">
	<label for="crossCountrySolo">
		<g:message code="timeSummary.crossCountrySolo.label" default="Cross Country Solo" />
		
	</label>
	<g:field type="number" name="crossCountrySolo" value="${fieldValue(bean: timeSummaryInstance, field: 'crossCountrySolo')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'dayTime', 'error')} ">
	<label for="dayTime">
		<g:message code="timeSummary.dayTime.label" default="Day Time" />
		
	</label>
	<g:field type="number" name="dayTime" value="${fieldValue(bean: timeSummaryInstance, field: 'dayTime')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'dualReceived', 'error')} ">
	<label for="dualReceived">
		<g:message code="timeSummary.dualReceived.label" default="Dual Received" />
		
	</label>
	<g:field type="number" name="dualReceived" value="${fieldValue(bean: timeSummaryInstance, field: 'dualReceived')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'groundTrainer', 'error')} ">
	<label for="groundTrainer">
		<g:message code="timeSummary.groundTrainer.label" default="Ground Trainer" />
		
	</label>
	<g:field type="number" name="groundTrainer" value="${fieldValue(bean: timeSummaryInstance, field: 'groundTrainer')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'instrument', 'error')} ">
	<label for="instrument">
		<g:message code="timeSummary.instrument.label" default="Instrument" />
		
	</label>
	<g:field type="number" name="instrument" value="${fieldValue(bean: timeSummaryInstance, field: 'instrument')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightInstructionReceived', 'error')} ">
	<label for="nightInstructionReceived">
		<g:message code="timeSummary.nightInstructionReceived.label" default="Night Instruction Received" />
		
	</label>
	<g:field type="number" name="nightInstructionReceived" value="${fieldValue(bean: timeSummaryInstance, field: 'nightInstructionReceived')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightPic', 'error')} ">
	<label for="nightPic">
		<g:message code="timeSummary.nightPic.label" default="Night Pic" />
		
	</label>
	<g:field type="number" name="nightPic" value="${fieldValue(bean: timeSummaryInstance, field: 'nightPic')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightPicSolo', 'error')} ">
	<label for="nightPicSolo">
		<g:message code="timeSummary.nightPicSolo.label" default="Night Pic Solo" />
		
	</label>
	<g:field type="number" name="nightPicSolo" value="${fieldValue(bean: timeSummaryInstance, field: 'nightPicSolo')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightTakeOffAndLandingSolo', 'error')} ">
	<label for="nightTakeOffAndLandingSolo">
		<g:message code="timeSummary.nightTakeOffAndLandingSolo.label" default="Night Take Off And Landing Solo" />
		
	</label>
	<g:field type="number" name="nightTakeOffAndLandingSolo" value="${fieldValue(bean: timeSummaryInstance, field: 'nightTakeOffAndLandingSolo')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightTakeOffAndLandings', 'error')} ">
	<label for="nightTakeOffAndLandings">
		<g:message code="timeSummary.nightTakeOffAndLandings.label" default="Night Take Off And Landings" />
		
	</label>
	<g:field type="number" name="nightTakeOffAndLandings" value="${fieldValue(bean: timeSummaryInstance, field: 'nightTakeOffAndLandings')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'nightTime', 'error')} ">
	<label for="nightTime">
		<g:message code="timeSummary.nightTime.label" default="Night Time" />
		
	</label>
	<g:field type="number" name="nightTime" value="${fieldValue(bean: timeSummaryInstance, field: 'nightTime')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'noInstrumentApproaches', 'error')} ">
	<label for="noInstrumentApproaches">
		<g:message code="timeSummary.noInstrumentApproaches.label" default="No Instrument Approaches" />
		
	</label>
	<g:field type="number" name="noInstrumentApproaches" value="${fieldValue(bean: timeSummaryInstance, field: 'noInstrumentApproaches')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'noLanding', 'error')} ">
	<label for="noLanding">
		<g:message code="timeSummary.noLanding.label" default="No Landing" />
		
	</label>
	<g:field type="number" name="noLanding" value="${fieldValue(bean: timeSummaryInstance, field: 'noLanding')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'pilotInCommand', 'error')} ">
	<label for="pilotInCommand">
		<g:message code="timeSummary.pilotInCommand.label" default="Pilot In Command" />
		
	</label>
	<g:field type="number" name="pilotInCommand" value="${fieldValue(bean: timeSummaryInstance, field: 'pilotInCommand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'rotorcraftHelicopter', 'error')} ">
	<label for="rotorcraftHelicopter">
		<g:message code="timeSummary.rotorcraftHelicopter.label" default="Rotorcraft Helicopter" />
		
	</label>
	<g:field type="number" name="rotorcraftHelicopter" value="${fieldValue(bean: timeSummaryInstance, field: 'rotorcraftHelicopter')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'secondInCommand', 'error')} ">
	<label for="secondInCommand">
		<g:message code="timeSummary.secondInCommand.label" default="Second In Command" />
		
	</label>
	<g:field type="number" name="secondInCommand" value="${fieldValue(bean: timeSummaryInstance, field: 'secondInCommand')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'simulatedInstrument', 'error')} ">
	<label for="simulatedInstrument">
		<g:message code="timeSummary.simulatedInstrument.label" default="Simulated Instrument" />
		
	</label>
	<g:field type="number" name="simulatedInstrument" value="${fieldValue(bean: timeSummaryInstance, field: 'simulatedInstrument')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'solo', 'error')} ">
	<label for="solo">
		<g:message code="timeSummary.solo.label" default="Solo" />
		
	</label>
	<g:field type="number" name="solo" value="${fieldValue(bean: timeSummaryInstance, field: 'solo')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'totalDurationOfFlight', 'error')} ">
	<label for="totalDurationOfFlight">
		<g:message code="timeSummary.totalDurationOfFlight.label" default="Total Duration Of Flight" />
		
	</label>
	<g:field type="number" name="totalDurationOfFlight" value="${fieldValue(bean: timeSummaryInstance, field: 'totalDurationOfFlight')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: timeSummaryInstance, field: 'totalTimePerAircraftType', 'error')} ">
	<label for="totalTimePerAircraftType">
		<g:message code="timeSummary.totalTimePerAircraftType.label" default="Total Time Per Aircraft Type" />
		
	</label>
	
</div>

