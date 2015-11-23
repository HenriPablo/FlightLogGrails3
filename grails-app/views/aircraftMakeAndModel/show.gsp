
<%@ page import="com.flightloglib.domain.AircraftMakeAndModel" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aircraftMakeAndModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aircraftMakeAndModel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aircraftMakeAndModel">
			
				<g:if test="${aircraftMakeAndModelInstance?.aircraftCategoryAndClass}">
				<li class="fieldcontain">
					<span id="aircraftCategoryAndClass-label" class="property-label"><g:message code="aircraftMakeAndModel.aircraftCategoryAndClass.label" default="Aircraft Category And Class" /></span>
					
						<span class="property-value" aria-labelledby="aircraftCategoryAndClass-label"><g:link controller="aircraftCategoryAndClass" action="show" id="${aircraftMakeAndModelInstance?.aircraftCategoryAndClass?.id}">${aircraftMakeAndModelInstance?.aircraftCategoryAndClass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.aircraftMake}">
				<li class="fieldcontain">
					<span id="aircraftMake-label" class="property-label"><g:message code="aircraftMakeAndModel.aircraftMake.label" default="Aircraft Make" /></span>
					
						<span class="property-value" aria-labelledby="aircraftMake-label"><g:fieldValue bean="${aircraftMakeAndModelInstance}" field="aircraftMake"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.aircraftModel}">
				<li class="fieldcontain">
					<span id="aircraftModel-label" class="property-label"><g:message code="aircraftMakeAndModel.aircraftModel.label" default="Aircraft Model" /></span>
					
						<span class="property-value" aria-labelledby="aircraftModel-label"><g:fieldValue bean="${aircraftMakeAndModelInstance}" field="aircraftModel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.aircraftTailNumber}">
				<li class="fieldcontain">
					<span id="aircraftTailNumber-label" class="property-label"><g:message code="aircraftMakeAndModel.aircraftTailNumber.label" default="Aircraft Tail Number" /></span>
					
						<span class="property-value" aria-labelledby="aircraftTailNumber-label"><g:fieldValue bean="${aircraftMakeAndModelInstance}" field="aircraftTailNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.complex}">
				<li class="fieldcontain">
					<span id="complex-label" class="property-label"><g:message code="aircraftMakeAndModel.complex.label" default="Complex" /></span>
					
						<span class="property-value" aria-labelledby="complex-label"><g:formatBoolean boolean="${aircraftMakeAndModelInstance?.complex}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.hiPerformance}">
				<li class="fieldcontain">
					<span id="hiPerformance-label" class="property-label"><g:message code="aircraftMakeAndModel.hiPerformance.label" default="Hi Performance" /></span>
					
						<span class="property-value" aria-labelledby="hiPerformance-label"><g:formatBoolean boolean="${aircraftMakeAndModelInstance?.hiPerformance}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${aircraftMakeAndModelInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="aircraftMakeAndModel.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${aircraftMakeAndModelInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${aircraftMakeAndModelInstance?.id}" />
					<g:link class="edit" action="edit" id="${aircraftMakeAndModelInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
