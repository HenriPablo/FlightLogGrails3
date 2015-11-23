<%@ page import="com.flightloglib.domain.Pilot" %>



<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="pilot.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${pilotInstance?.address1}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="pilot.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${pilotInstance?.address2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'certificateNo', 'error')} ">
	<label for="certificateNo">
		<g:message code="pilot.certificateNo.label" default="Certificate No" />
		
	</label>
	<g:textField name="certificateNo" value="${pilotInstance?.certificateNo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="pilot.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${pilotInstance?.city}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pilot.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${pilotInstance?.email}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="pilot.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${pilotInstance?.firstName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="pilot.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${pilotInstance?.lastName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="pilot.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${pilotInstance?.notes}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="pilot.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${pilotInstance?.phone}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'stateProvince', 'error')} ">
	<label for="stateProvince">
		<g:message code="pilot.stateProvince.label" default="State Province" />
		
	</label>
	<g:textField name="stateProvince" value="${pilotInstance?.stateProvince}" />
</div>

<div class="fieldcontain ${hasErrors(bean: pilotInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="pilot.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${pilotInstance?.zip}" />
</div>

