<#-- https://github.com/spring-projects/spring-security/issues/3275 -->
<#--
<#macro authorize ifAnyGranted>
	<#assign authorized = false>
	<#list Session["SPRING_SECURITY_CONTEXT"].authentication.authorities as authority>
		<#if authority == ifAnyGranted>
			<#assign authorized = true>
		</#if>
	</#list>
	<#if authorized>
		<#nested>
	</#if>
</#macro>
-->

<#macro requiredRole Role="GUEST">
	<#assign authorized = false>
	<#if SPRING_SECURITY_CONTEXT??>
		<#list SPRING_SECURITY_CONTEXT.authentication.authorities as authority>
			<#if authority == Role>
				<#assign authorized = true>
			</#if>
		</#list>
	</#if>
	<#if authorized>
		<#nested>
	</#if>
</#macro>