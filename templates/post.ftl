<#import "_main.ftl" as m />
<@m.page>
	
	<div class="page-header">
		<h1>${content.title?html}</h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

	<hr />

	<#if content.status == "published">
		<@m.disqusThread />
	</#if>

	<#-- Initialise code highlighting -->
	<script>hljs.initHighlightingOnLoad();</script>	
</@m.page>
