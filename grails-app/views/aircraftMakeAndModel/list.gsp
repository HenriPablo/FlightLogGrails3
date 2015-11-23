
<%@ page import="com.flightloglib.domain.AircraftMakeAndModel" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aircraftMakeAndModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aircraftMakeAndModel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="aircraftMakeAndModel.aircraftCategoryAndClass.label" default="Aircraft Category And Class" /></th>
					
						<g:sortableColumn property="aircraftMake" title="${message(code: 'aircraftMakeAndModel.aircraftMake.label', default: 'Aircraft Make')}" />
					
						<g:sortableColumn property="aircraftModel" title="${message(code: 'aircraftMakeAndModel.aircraftModel.label', default: 'Aircraft Model')}" />
					
						<g:sortableColumn property="aircraftTailNumber" title="${message(code: 'aircraftMakeAndModel.aircraftTailNumber.label', default: 'Aircraft Tail Number')}" />
					
						<g:sortableColumn property="complex" title="${message(code: 'aircraftMakeAndModel.complex.label', default: 'Complex')}" />
					
						<g:sortableColumn property="hiPerformance" title="${message(code: 'aircraftMakeAndModel.hiPerformance.label', default: 'Hi Performance')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aircraftMakeAndModelInstanceList}" status="i" var="aircraftMakeAndModelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aircraftMakeAndModelInstance.id}">${fieldValue(bean: aircraftMakeAndModelInstance, field: "aircraftCategoryAndClass")}</g:link></td>
					
						<td>${fieldValue(bean: aircraftMakeAndModelInstance, field: "aircraftMake")}</td>
					
						<td>${fieldValue(bean: aircraftMakeAndModelInstance, field: "aircraftModel")}</td>
					
						<td>${fieldValue(bean: aircraftMakeAndModelInstance, field: "aircraftTailNumber")}</td>
					
						<td><g:formatBoolean boolean="${aircraftMakeAndModelInstance.complex}" /></td>
					
						<td><g:formatBoolean boolean="${aircraftMakeAndModelInstance.hiPerformance}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aircraftMakeAndModelInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
