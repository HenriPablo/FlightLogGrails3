
<%@ page import="com.flightloglib.domain.Airport" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airport.label', default: 'Airport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-airport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list airport">
			
				<g:if test="${airportInstance?.icaoIdentifier}">
				<li class="fieldcontain">
					<span id="icaoIdentifier-label" class="property-label"><g:message code="airport.icaoIdentifier.label" default="Icao Identifier" /></span>
					
						<span class="property-value" aria-labelledby="icaoIdentifier-label"><g:fieldValue bean="${airportInstance}" field="icaoIdentifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airportInstance?.longName}">
				<li class="fieldcontain">
					<span id="longName-label" class="property-label"><g:message code="airport.longName.label" default="Long Name" /></span>
					
						<span class="property-value" aria-labelledby="longName-label"><g:fieldValue bean="${airportInstance}" field="longName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${airportInstance?.id}" />
					<g:link class="edit" action="edit" id="${airportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
