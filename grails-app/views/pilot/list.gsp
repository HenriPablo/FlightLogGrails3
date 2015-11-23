
<%@ page import="com.flightloglib.domain.Pilot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pilot.label', default: 'Pilot')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pilot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pilot" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address1" title="${message(code: 'pilot.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'pilot.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="certificateNo" title="${message(code: 'pilot.certificateNo.label', default: 'Certificate No')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'pilot.city.label', default: 'City')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'pilot.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'pilot.firstName.label', default: 'First Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pilotInstanceList}" status="i" var="pilotInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pilotInstance.id}">${fieldValue(bean: pilotInstance, field: "address1")}</g:link></td>
					
						<td>${fieldValue(bean: pilotInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: pilotInstance, field: "certificateNo")}</td>
					
						<td>${fieldValue(bean: pilotInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: pilotInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: pilotInstance, field: "firstName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pilotInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
