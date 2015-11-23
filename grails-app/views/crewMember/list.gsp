
<%@ page import="com.flightloglib.domain.CrewMember" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'crewMember.label', default: 'CrewMember')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-crewMember" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-crewMember" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="crewMember.crewMemberRole.label" default="Crew Member Role" /></th>
					
						<th><g:message code="crewMember.pilot.label" default="Pilot" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${crewMemberInstanceList}" status="i" var="crewMemberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${crewMemberInstance.id}">${fieldValue(bean: crewMemberInstance, field: "crewMemberRole")}</g:link></td>
					
						<td>${fieldValue(bean: crewMemberInstance, field: "pilot")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${crewMemberInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
