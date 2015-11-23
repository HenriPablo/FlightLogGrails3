<%@ page import="com.flightloglib.domain.CrewMember" %>



<div class="fieldcontain ${hasErrors(bean: crewMemberInstance, field: 'crewMemberRole', 'error')} ">
	<label for="crewMemberRole">
		<g:message code="crewMember.crewMemberRole.label" default="Crew Member Role" />
		
	</label>
	<g:select id="crewMemberRole" name="crewMemberRole.id" from="${com.flightloglib.domain.CrewMemberRole.list()}" optionKey="id" required="" value="${crewMemberInstance?.crewMemberRole?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: crewMemberInstance, field: 'pilot', 'error')} ">
	<label for="pilot">
		<g:message code="crewMember.pilot.label" default="Pilot" />
		
	</label>
	<g:select id="pilot" name="pilot.id" from="${com.flightloglib.domain.Pilot.list()}" optionKey="id" required="" value="${crewMemberInstance?.pilot?.id}" class="many-to-one"/>
</div>

