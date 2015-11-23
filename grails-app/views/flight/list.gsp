
<%@ page import="com.flightloglib.domain.Flight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'flight.label', default: 'Flight')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-flight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-flight" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="actualInstrument" title="${message(code: 'flight.actualInstrument.label', default: 'Actual Instrument')}" />
					
						<th><g:message code="flight.aircraftMakeAndModel.label" default="Aircraft Make And Model" /></th>
					
						<g:sortableColumn property="asFlightInstructor" title="${message(code: 'flight.asFlightInstructor.label', default: 'As Flight Instructor')}" />
					
						<g:sortableColumn property="crossCountry" title="${message(code: 'flight.crossCountry.label', default: 'Cross Country')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'flight.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="day" title="${message(code: 'flight.day.label', default: 'Day')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${flightInstanceList}" status="i" var="flightInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${flightInstance.id}">${fieldValue(bean: flightInstance, field: "actualInstrument")}</g:link></td>
					
						<td>${fieldValue(bean: flightInstance, field: "aircraftMakeAndModel")}</td>
					
						<td>${fieldValue(bean: flightInstance, field: "asFlightInstructor")}</td>
					
						<td>${fieldValue(bean: flightInstance, field: "crossCountry")}</td>
					
						<td><g:formatDate date="${flightInstance.date}" /></td>
					
						<td>${fieldValue(bean: flightInstance, field: "day")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${flightInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
