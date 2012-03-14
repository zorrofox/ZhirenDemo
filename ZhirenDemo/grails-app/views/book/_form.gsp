<%@ page import="zhirendemo.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookName', 'error')} ">
	<label for="bookName">
		<g:message code="book.bookName.label" default="书名" />
		
	</label>
	<g:textField name="bookName" value="${bookInstance?.bookName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isdnNumber', 'error')} ">
	<label for="isdnNumber">
		<g:message code="book.isdnNumber.label" default="ISBN编码" />
		
	</label>
	<g:textField name="isdnNumber" value="${bookInstance?.isdnNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishDate', 'error')} required">
	<label for="publishDate">
		<g:message code="book.publishDate.label" default="出版日期" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publishDate" precision="day"  value="${bookInstance?.publishDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'sellingPrice', 'error')} required">
	<label for="sellingPrice">
		<g:message code="book.sellingPrice.label" default="销售价格" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="sellingPrice" required="" value="${fieldValue(bean: bookInstance, field: 'sellingPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'memo', 'error')} ">
	<label for="memo">
		<g:message code="book.memo.label" default="备注" />
		
	</label>
	<g:textField name="memo" value="${bookInstance?.memo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="作者" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${zhirendemo.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one"/>
</div>

