<#import "_main.ftl" as m />
<#assign additionalMeta = {} />
<#if config.google_site_verification?has_content >
	<#assign additionalMeta = {"google-site-verification" : config.google_site_verification} />
</#if>
<@m.page additionalMeta = additionalMeta>	
	<div>
		<h1>Teh Artikli - Recent Posts</h1>
	</div>
	<hr>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<#assign author = (post.author)!((config.posts_author)!"") />
  			<a href="${post.uri}"><h1>${post.title?html}</h1></a>
  			<p class="post-info">
	  			<i class="icon-calendar"></i> ${post.date?string("dd MMMM yyyy")} |
	  			<#if author?has_content><i class="icon-user"></i> ${author} |</#if>
	  			<i class="icon-comment"></i> <a href="${config.site_host}${post.uri}#disqus_thread">0 Comments</a>
  			</p>
  			<p>${m.summary(post.body)}</p>
			<a class="btn btn-default" href="${post.uri}">Read More →</a>
			<hr>
  		</#if>
  	</#list>
	
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>
	<@m.disqusCounts />
</@m.page>