
<%@ page import="com.flightloglib.domain.CrewMember" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'crewMember.label', default: 'CrewMember')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-crewMember" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-crewMember" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list crewMember">
			
				<g:if test="${crewMemberInstance?.crewMemberRole}">
				<li class="fieldcontain">
					<span id="crewMemberRole-label" class="property-label"><g:message code="crewMember.crewMemberRole.label" default="Crew Member Role" /></span>
					
						<span class="property-value" aria-labelledby="crewMemberRole-label"><g:link controller="crewMemberRole" action="show" id="${crewMemberInstance?.crewMemberRole?.id}">${crewMemberInstance?.crewMemberRole?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${crewMemberInstance?.pilot}">
				<li class="fieldcontain">
					<span id="pilot-label" class="property-label"><g:message code="crewMember.pilot.label" default="Pilot" /></span>
					
						<span class="property-value" aria-labelledby="pilot-label"><g:link controller="pilot" action="show" id="${crewMemberInstance?.pilot?.id}">${crewMemberInstance?.pilot?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${crewMemberInstance?.id}" />
					<g:link class="edit" action="edit" id="${crewMemberInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
