
<%@ page import="com.flightloglib.domain.AircraftCategoryAndClass" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aircraftCategoryAndClass.label', default: 'AircraftCategoryAndClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aircraftCategoryAndClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aircraftCategoryAndClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aircraftCategoryAndClass">
			
				<g:if test="${aircraftCategoryAndClassInstance?.aircraftCategory}">
				<li class="fieldcontain">
					<span id="aircraftCategory-label" class="property-label"><g:message code="aircraftCategoryAndClass.aircraftCategory.label" default="Aircraft Category" /></span>
					
						<span class="property-value" aria-labelledby="aircraftCategory-label"><g:fieldValue bean="${aircraftCategoryAndClassInstance}" field="aircraftCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftCategoryAndClassInstance?.aircraftClass}">
				<li class="fieldcontain">
					<span id="aircraftClass-label" class="property-label"><g:message code="aircraftCategoryAndClass.aircraftClass.label" default="Aircraft Class" /></span>
					
						<span class="property-value" aria-labelledby="aircraftClass-label"><g:fieldValue bean="${aircraftCategoryAndClassInstance}" field="aircraftClass"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aircraftCategoryAndClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${aircraftCategoryAndClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
