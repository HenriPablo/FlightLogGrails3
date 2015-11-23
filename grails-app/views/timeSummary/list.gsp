
<%@ page import="com.flightloglib.domain.TimeSummary" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'timeSummary.label', default: 'TimeSummary')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-timeSummary" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-timeSummary" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="actualInstrument" title="${message(code: 'timeSummary.actualInstrument.label', default: 'Actual Instrument')}" />
					
						<g:sortableColumn property="airplaneMultiEngineLand" title="${message(code: 'timeSummary.airplaneMultiEngineLand.label', default: 'Airplane Multi Engine Land')}" />
					
						<g:sortableColumn property="airplaneSingeEngineLand" title="${message(code: 'timeSummary.airplaneSingeEngineLand.label', default: 'Airplane Singe Engine Land')}" />
					
						<g:sortableColumn property="asFlightInstructor" title="${message(code: 'timeSummary.asFlightInstructor.label', default: 'As Flight Instructor')}" />
					
						<g:sortableColumn property="crossCountry" title="${message(code: 'timeSummary.crossCountry.label', default: 'Cross Country')}" />
					
						<g:sortableColumn property="crossCountryInstReceived" title="${message(code: 'timeSummary.crossCountryInstReceived.label', default: 'Cross Country Inst Received')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${timeSummaryInstanceList}" status="i" var="timeSummaryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${timeSummaryInstance.id}">${fieldValue(bean: timeSummaryInstance, field: "actualInstrument")}</g:link></td>
					
						<td>${fieldValue(bean: timeSummaryInstance, field: "airplaneMultiEngineLand")}</td>
					
						<td>${fieldValue(bean: timeSummaryInstance, field: "airplaneSingeEngineLand")}</td>
					
						<td>${fieldValue(bean: timeSummaryInstance, field: "asFlightInstructor")}</td>
					
						<td>${fieldValue(bean: timeSummaryInstance, field: "crossCountry")}</td>
					
						<td>${fieldValue(bean: timeSummaryInstance, field: "crossCountryInstReceived")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${timeSummaryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
