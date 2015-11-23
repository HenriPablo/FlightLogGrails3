
<%@ page import="com.flightloglib.domain.Pilot" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pilot.label', default: 'Pilot')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pilot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pilot" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pilot">
			
				<g:if test="${pilotInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="pilot.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${pilotInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="pilot.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${pilotInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.certificateNo}">
				<li class="fieldcontain">
					<span id="certificateNo-label" class="property-label"><g:message code="pilot.certificateNo.label" default="Certificate No" /></span>
					
						<span class="property-value" aria-labelledby="certificateNo-label"><g:fieldValue bean="${pilotInstance}" field="certificateNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="pilot.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${pilotInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="pilot.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pilotInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="pilot.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${pilotInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="pilot.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${pilotInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="pilot.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${pilotInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="pilot.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${pilotInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.stateProvince}">
				<li class="fieldcontain">
					<span id="stateProvince-label" class="property-label"><g:message code="pilot.stateProvince.label" default="State Province" /></span>
					
						<span class="property-value" aria-labelledby="stateProvince-label"><g:fieldValue bean="${pilotInstance}" field="stateProvince"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pilotInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="pilot.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${pilotInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pilotInstance?.id}" />
					<g:link class="edit" action="edit" id="${pilotInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
