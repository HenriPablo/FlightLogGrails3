
<%@ page import="com.flightloglib.domain.Flight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'flight.label', default: 'Flight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-flight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-flight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list flight">
			
				<g:if test="${flightInstance?.actualInstrument}">
				<li class="fieldcontain">
					<span id="actualInstrument-label" class="property-label"><g:message code="flight.actualInstrument.label" default="Actual Instrument" /></span>
					
						<span class="property-value" aria-labelledby="actualInstrument-label"><g:fieldValue bean="${flightInstance}" field="actualInstrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.aircraftMakeAndModel}">
				<li class="fieldcontain">
					<span id="aircraftMakeAndModel-label" class="property-label"><g:message code="flight.aircraftMakeAndModel.label" default="Aircraft Make And Model" /></span>
					
						<span class="property-value" aria-labelledby="aircraftMakeAndModel-label"><g:link controller="aircraftMakeAndModel" action="show" id="${flightInstance?.aircraftMakeAndModel?.id}">${flightInstance?.aircraftMakeAndModel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.asFlightInstructor}">
				<li class="fieldcontain">
					<span id="asFlightInstructor-label" class="property-label"><g:message code="flight.asFlightInstructor.label" default="As Flight Instructor" /></span>
					
						<span class="property-value" aria-labelledby="asFlightInstructor-label"><g:fieldValue bean="${flightInstance}" field="asFlightInstructor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.crewMembers}">
				<li class="fieldcontain">
					<span id="crewMembers-label" class="property-label"><g:message code="flight.crewMembers.label" default="Crew Members" /></span>
					
						<g:each in="${flightInstance.crewMembers}" var="c">
						<span class="property-value" aria-labelledby="crewMembers-label"><g:link controller="crewMember" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.crossCountry}">
				<li class="fieldcontain">
					<span id="crossCountry-label" class="property-label"><g:message code="flight.crossCountry.label" default="Cross Country" /></span>
					
						<span class="property-value" aria-labelledby="crossCountry-label"><g:fieldValue bean="${flightInstance}" field="crossCountry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="flight.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${flightInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="flight.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${flightInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.departure}">
				<li class="fieldcontain">
					<span id="departure-label" class="property-label"><g:message code="flight.departure.label" default="Departure" /></span>
					
						<span class="property-value" aria-labelledby="departure-label"><g:link controller="airport" action="show" id="${flightInstance?.departure?.id}">${flightInstance?.departure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.destination}">
				<li class="fieldcontain">
					<span id="destination-label" class="property-label"><g:message code="flight.destination.label" default="Destination" /></span>
					
						<span class="property-value" aria-labelledby="destination-label"><g:link controller="airport" action="show" id="${flightInstance?.destination?.id}">${flightInstance?.destination?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.dualReceived}">
				<li class="fieldcontain">
					<span id="dualReceived-label" class="property-label"><g:message code="flight.dualReceived.label" default="Dual Received" /></span>
					
						<span class="property-value" aria-labelledby="dualReceived-label"><g:fieldValue bean="${flightInstance}" field="dualReceived"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.groundTrainer}">
				<li class="fieldcontain">
					<span id="groundTrainer-label" class="property-label"><g:message code="flight.groundTrainer.label" default="Ground Trainer" /></span>
					
						<span class="property-value" aria-labelledby="groundTrainer-label"><g:fieldValue bean="${flightInstance}" field="groundTrainer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.night}">
				<li class="fieldcontain">
					<span id="night-label" class="property-label"><g:message code="flight.night.label" default="Night" /></span>
					
						<span class="property-value" aria-labelledby="night-label"><g:fieldValue bean="${flightInstance}" field="night"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.noDayLandings}">
				<li class="fieldcontain">
					<span id="noDayLandings-label" class="property-label"><g:message code="flight.noDayLandings.label" default="No Day Landings" /></span>
					
						<span class="property-value" aria-labelledby="noDayLandings-label"><g:fieldValue bean="${flightInstance}" field="noDayLandings"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.noInstAproaches}">
				<li class="fieldcontain">
					<span id="noInstAproaches-label" class="property-label"><g:message code="flight.noInstAproaches.label" default="No Inst Aproaches" /></span>
					
						<span class="property-value" aria-labelledby="noInstAproaches-label"><g:fieldValue bean="${flightInstance}" field="noInstAproaches"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.noNightLandings}">
				<li class="fieldcontain">
					<span id="noNightLandings-label" class="property-label"><g:message code="flight.noNightLandings.label" default="No Night Landings" /></span>
					
						<span class="property-value" aria-labelledby="noNightLandings-label"><g:fieldValue bean="${flightInstance}" field="noNightLandings"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.pilotInCommand}">
				<li class="fieldcontain">
					<span id="pilotInCommand-label" class="property-label"><g:message code="flight.pilotInCommand.label" default="Pilot In Command" /></span>
					
						<span class="property-value" aria-labelledby="pilotInCommand-label"><g:fieldValue bean="${flightInstance}" field="pilotInCommand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="flight.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${flightInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.secondInCommand}">
				<li class="fieldcontain">
					<span id="secondInCommand-label" class="property-label"><g:message code="flight.secondInCommand.label" default="Second In Command" /></span>
					
						<span class="property-value" aria-labelledby="secondInCommand-label"><g:fieldValue bean="${flightInstance}" field="secondInCommand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.simulatedInstrument}">
				<li class="fieldcontain">
					<span id="simulatedInstrument-label" class="property-label"><g:message code="flight.simulatedInstrument.label" default="Simulated Instrument" /></span>
					
						<span class="property-value" aria-labelledby="simulatedInstrument-label"><g:fieldValue bean="${flightInstance}" field="simulatedInstrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.totalDurationOfFlight}">
				<li class="fieldcontain">
					<span id="totalDurationOfFlight-label" class="property-label"><g:message code="flight.totalDurationOfFlight.label" default="Total Duration Of Flight" /></span>
					
						<span class="property-value" aria-labelledby="totalDurationOfFlight-label"><g:fieldValue bean="${flightInstance}" field="totalDurationOfFlight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${flightInstance?.via}">
				<li class="fieldcontain">
					<span id="via-label" class="property-label"><g:message code="flight.via.label" default="Via" /></span>
					
						<span class="property-value" aria-labelledby="via-label"><g:fieldValue bean="${flightInstance}" field="via"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${flightInstance?.id}" />
					<g:link class="edit" action="edit" id="${flightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
