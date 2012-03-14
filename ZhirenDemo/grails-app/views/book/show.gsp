
<%@ page import="zhirendemo.Book" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: '著作')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.bookName}">
				<li class="fieldcontain">
					<span id="bookName-label" class="property-label"><g:message code="book.bookName.label" default="书名" /></span>
					
						<span class="property-value" aria-labelledby="bookName-label"><g:fieldValue bean="${bookInstance}" field="bookName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.isdnNumber}">
				<li class="fieldcontain">
					<span id="isdnNumber-label" class="property-label"><g:message code="book.isdnNumber.label" default="ISBN编码" /></span>
					
						<span class="property-value" aria-labelledby="isdnNumber-label"><g:fieldValue bean="${bookInstance}" field="isdnNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publishDate}">
				<li class="fieldcontain">
					<span id="publishDate-label" class="property-label"><g:message code="book.publishDate.label" default="出版日期" /></span>
					
						<span class="property-value" aria-labelledby="publishDate-label"><g:formatDate date="${bookInstance?.publishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.sellingPrice}">
				<li class="fieldcontain">
					<span id="sellingPrice-label" class="property-label"><g:message code="book.sellingPrice.label" default="销售价格" /></span>
					
						<span class="property-value" aria-labelledby="sellingPrice-label"><g:fieldValue bean="${bookInstance}" field="sellingPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.memo}">
				<li class="fieldcontain">
					<span id="memo-label" class="property-label"><g:message code="book.memo.label" default="备注" /></span>
					
						<span class="property-value" aria-labelledby="memo-label"><g:fieldValue bean="${bookInstance}" field="memo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="book.author.label" default="作者" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="author" action="show" id="${bookInstance?.author?.id}">${bookInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bookInstance?.id}" />
					<g:link class="edit" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
