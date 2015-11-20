
<%@ page import="com.flightloglib.domain.AircraftCategoryAndClass" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aircraftCategoryAndClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aircraftCategoryAndClass" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="aircraftCategory" title="${message(code: 'aircraftCategoryAndClass.aircraftCategory.label', default: 'Aircraft Category')}" />
					
						<g:sortableColumn property="aircraftClass" title="${message(code: 'aircraftCategoryAndClass.aircraftClass.label', default: 'Aircraft Class')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aircraftCategoryAndClassInstanceList}" status="i" var="aircraftCategoryAndClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aircraftCategoryAndClassInstance.id}">${fieldValue(bean: aircraftCategoryAndClassInstance, field: "aircraftCategory")}</g:link></td>
					
						<td>${fieldValue(bean: aircraftCategoryAndClassInstance, field: "aircraftClass")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aircraftCategoryAndClassInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
