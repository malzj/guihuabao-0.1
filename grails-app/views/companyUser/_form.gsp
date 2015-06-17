<%@ page import="com.guihuabao.CompanyUser" %>



<div class="fieldcontain ${hasErrors(bean: companyUserInstance, field: 'bumen', 'error')} required">
	<label for="bumen">
		<g:message code="companyUser.bumen.label" default="Bumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="bumen" name="bumen.id" from="${com.guihuabao.Bumen.list()}" optionKey="id" required="" value="${companyUserInstance?.bumen?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="companyUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${companyUserInstance?.name}"/>
</div>

