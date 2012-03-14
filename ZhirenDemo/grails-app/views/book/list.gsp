
<%@ page import="zhirendemo.Book" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: '著作')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="bookName" title="${message(code: 'book.bookName.label', default: '书名')}" />
					
						<g:sortableColumn property="isdnNumber" title="${message(code: 'book.isdnNumber.label', default: 'ISBN编码')}" />
					
						<g:sortableColumn property="publishDate" title="${message(code: 'book.publishDate.label', default: '出版日期')}" />
					
						<g:sortableColumn property="sellingPrice" title="${message(code: 'book.sellingPrice.label', default: '销售价格')}" />
					
						<g:sortableColumn property="memo" title="${message(code: 'book.memo.label', default: '备注')}" />
					
						<th><g:message code="book.author.label" default="作者" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "bookName")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "isdnNumber")}</td>
					
						<td><g:formatDate date="${bookInstance.publishDate}" /></td>
					
						<td>${fieldValue(bean: bookInstance, field: "sellingPrice")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "memo")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "author")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
