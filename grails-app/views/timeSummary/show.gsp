
<%@ page import="com.flightloglib.domain.TimeSummary" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeSummary.label', default: 'TimeSummary')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-timeSummary" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-timeSummary" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list timeSummary">
			
				<g:if test="${timeSummaryInstance?.actualInstrument}">
				<li class="fieldcontain">
					<span id="actualInstrument-label" class="property-label"><g:message code="timeSummary.actualInstrument.label" default="Actual Instrument" /></span>
					
						<span class="property-value" aria-labelledby="actualInstrument-label"><g:fieldValue bean="${timeSummaryInstance}" field="actualInstrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.airplaneMultiEngineLand}">
				<li class="fieldcontain">
					<span id="airplaneMultiEngineLand-label" class="property-label"><g:message code="timeSummary.airplaneMultiEngineLand.label" default="Airplane Multi Engine Land" /></span>
					
						<span class="property-value" aria-labelledby="airplaneMultiEngineLand-label"><g:fieldValue bean="${timeSummaryInstance}" field="airplaneMultiEngineLand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.airplaneSingeEngineLand}">
				<li class="fieldcontain">
					<span id="airplaneSingeEngineLand-label" class="property-label"><g:message code="timeSummary.airplaneSingeEngineLand.label" default="Airplane Singe Engine Land" /></span>
					
						<span class="property-value" aria-labelledby="airplaneSingeEngineLand-label"><g:fieldValue bean="${timeSummaryInstance}" field="airplaneSingeEngineLand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.asFlightInstructor}">
				<li class="fieldcontain">
					<span id="asFlightInstructor-label" class="property-label"><g:message code="timeSummary.asFlightInstructor.label" default="As Flight Instructor" /></span>
					
						<span class="property-value" aria-labelledby="asFlightInstructor-label"><g:fieldValue bean="${timeSummaryInstance}" field="asFlightInstructor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.crossCountry}">
				<li class="fieldcontain">
					<span id="crossCountry-label" class="property-label"><g:message code="timeSummary.crossCountry.label" default="Cross Country" /></span>
					
						<span class="property-value" aria-labelledby="crossCountry-label"><g:fieldValue bean="${timeSummaryInstance}" field="crossCountry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.crossCountryInstReceived}">
				<li class="fieldcontain">
					<span id="crossCountryInstReceived-label" class="property-label"><g:message code="timeSummary.crossCountryInstReceived.label" default="Cross Country Inst Received" /></span>
					
						<span class="property-value" aria-labelledby="crossCountryInstReceived-label"><g:fieldValue bean="${timeSummaryInstance}" field="crossCountryInstReceived"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.crossCountryPic}">
				<li class="fieldcontain">
					<span id="crossCountryPic-label" class="property-label"><g:message code="timeSummary.crossCountryPic.label" default="Cross Country Pic" /></span>
					
						<span class="property-value" aria-labelledby="crossCountryPic-label"><g:fieldValue bean="${timeSummaryInstance}" field="crossCountryPic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.crossCountrySolo}">
				<li class="fieldcontain">
					<span id="crossCountrySolo-label" class="property-label"><g:message code="timeSummary.crossCountrySolo.label" default="Cross Country Solo" /></span>
					
						<span class="property-value" aria-labelledby="crossCountrySolo-label"><g:fieldValue bean="${timeSummaryInstance}" field="crossCountrySolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.dayTime}">
				<li class="fieldcontain">
					<span id="dayTime-label" class="property-label"><g:message code="timeSummary.dayTime.label" default="Day Time" /></span>
					
						<span class="property-value" aria-labelledby="dayTime-label"><g:fieldValue bean="${timeSummaryInstance}" field="dayTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.dualReceived}">
				<li class="fieldcontain">
					<span id="dualReceived-label" class="property-label"><g:message code="timeSummary.dualReceived.label" default="Dual Received" /></span>
					
						<span class="property-value" aria-labelledby="dualReceived-label"><g:fieldValue bean="${timeSummaryInstance}" field="dualReceived"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.groundTrainer}">
				<li class="fieldcontain">
					<span id="groundTrainer-label" class="property-label"><g:message code="timeSummary.groundTrainer.label" default="Ground Trainer" /></span>
					
						<span class="property-value" aria-labelledby="groundTrainer-label"><g:fieldValue bean="${timeSummaryInstance}" field="groundTrainer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.instrument}">
				<li class="fieldcontain">
					<span id="instrument-label" class="property-label"><g:message code="timeSummary.instrument.label" default="Instrument" /></span>
					
						<span class="property-value" aria-labelledby="instrument-label"><g:fieldValue bean="${timeSummaryInstance}" field="instrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightInstructionReceived}">
				<li class="fieldcontain">
					<span id="nightInstructionReceived-label" class="property-label"><g:message code="timeSummary.nightInstructionReceived.label" default="Night Instruction Received" /></span>
					
						<span class="property-value" aria-labelledby="nightInstructionReceived-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightInstructionReceived"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightPic}">
				<li class="fieldcontain">
					<span id="nightPic-label" class="property-label"><g:message code="timeSummary.nightPic.label" default="Night Pic" /></span>
					
						<span class="property-value" aria-labelledby="nightPic-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightPic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightPicSolo}">
				<li class="fieldcontain">
					<span id="nightPicSolo-label" class="property-label"><g:message code="timeSummary.nightPicSolo.label" default="Night Pic Solo" /></span>
					
						<span class="property-value" aria-labelledby="nightPicSolo-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightPicSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightTakeOffAndLandingSolo}">
				<li class="fieldcontain">
					<span id="nightTakeOffAndLandingSolo-label" class="property-label"><g:message code="timeSummary.nightTakeOffAndLandingSolo.label" default="Night Take Off And Landing Solo" /></span>
					
						<span class="property-value" aria-labelledby="nightTakeOffAndLandingSolo-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightTakeOffAndLandingSolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightTakeOffAndLandings}">
				<li class="fieldcontain">
					<span id="nightTakeOffAndLandings-label" class="property-label"><g:message code="timeSummary.nightTakeOffAndLandings.label" default="Night Take Off And Landings" /></span>
					
						<span class="property-value" aria-labelledby="nightTakeOffAndLandings-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightTakeOffAndLandings"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.nightTime}">
				<li class="fieldcontain">
					<span id="nightTime-label" class="property-label"><g:message code="timeSummary.nightTime.label" default="Night Time" /></span>
					
						<span class="property-value" aria-labelledby="nightTime-label"><g:fieldValue bean="${timeSummaryInstance}" field="nightTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.noInstrumentApproaches}">
				<li class="fieldcontain">
					<span id="noInstrumentApproaches-label" class="property-label"><g:message code="timeSummary.noInstrumentApproaches.label" default="No Instrument Approaches" /></span>
					
						<span class="property-value" aria-labelledby="noInstrumentApproaches-label"><g:fieldValue bean="${timeSummaryInstance}" field="noInstrumentApproaches"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.noLanding}">
				<li class="fieldcontain">
					<span id="noLanding-label" class="property-label"><g:message code="timeSummary.noLanding.label" default="No Landing" /></span>
					
						<span class="property-value" aria-labelledby="noLanding-label"><g:fieldValue bean="${timeSummaryInstance}" field="noLanding"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.pilotInCommand}">
				<li class="fieldcontain">
					<span id="pilotInCommand-label" class="property-label"><g:message code="timeSummary.pilotInCommand.label" default="Pilot In Command" /></span>
					
						<span class="property-value" aria-labelledby="pilotInCommand-label"><g:fieldValue bean="${timeSummaryInstance}" field="pilotInCommand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.rotorcraftHelicopter}">
				<li class="fieldcontain">
					<span id="rotorcraftHelicopter-label" class="property-label"><g:message code="timeSummary.rotorcraftHelicopter.label" default="Rotorcraft Helicopter" /></span>
					
						<span class="property-value" aria-labelledby="rotorcraftHelicopter-label"><g:fieldValue bean="${timeSummaryInstance}" field="rotorcraftHelicopter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.secondInCommand}">
				<li class="fieldcontain">
					<span id="secondInCommand-label" class="property-label"><g:message code="timeSummary.secondInCommand.label" default="Second In Command" /></span>
					
						<span class="property-value" aria-labelledby="secondInCommand-label"><g:fieldValue bean="${timeSummaryInstance}" field="secondInCommand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.simulatedInstrument}">
				<li class="fieldcontain">
					<span id="simulatedInstrument-label" class="property-label"><g:message code="timeSummary.simulatedInstrument.label" default="Simulated Instrument" /></span>
					
						<span class="property-value" aria-labelledby="simulatedInstrument-label"><g:fieldValue bean="${timeSummaryInstance}" field="simulatedInstrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.solo}">
				<li class="fieldcontain">
					<span id="solo-label" class="property-label"><g:message code="timeSummary.solo.label" default="Solo" /></span>
					
						<span class="property-value" aria-labelledby="solo-label"><g:fieldValue bean="${timeSummaryInstance}" field="solo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.totalDurationOfFlight}">
				<li class="fieldcontain">
					<span id="totalDurationOfFlight-label" class="property-label"><g:message code="timeSummary.totalDurationOfFlight.label" default="Total Duration Of Flight" /></span>
					
						<span class="property-value" aria-labelledby="totalDurationOfFlight-label"><g:fieldValue bean="${timeSummaryInstance}" field="totalDurationOfFlight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeSummaryInstance?.totalTimePerAircraftType}">
				<li class="fieldcontain">
					<span id="totalTimePerAircraftType-label" class="property-label"><g:message code="timeSummary.totalTimePerAircraftType.label" default="Total Time Per Aircraft Type" /></span>
					
						<span class="property-value" aria-labelledby="totalTimePerAircraftType-label"><g:fieldValue bean="${timeSummaryInstance}" field="totalTimePerAircraftType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${timeSummaryInstance?.id}" />
					<g:link class="edit" action="edit" id="${timeSummaryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
