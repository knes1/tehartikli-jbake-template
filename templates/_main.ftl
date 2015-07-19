<#macro page additionalMeta={}>
	<#include '_header.ftl'>
		<#include "_menu.ftl">
		<#nested />
	<#include '_footer.ftl'>
</#macro>

<#function summary content marker=(config.summary_marker)!"<!-- more -->">
	<#assign idx = content?index_of(marker) />
	<#if idx gt 0>
		<#return content?substring(0,idx)>
	<#else>
		<#return content>
	</#if>
</#function>

<#-- Includes disqus comments count script -->
<#macro disqusCounts shortname=config.disqus_shortname>
	<script type="text/javascript">
		var disqus_shortname = '${shortname?js_string}';

		(function () {
		var s = document.createElement('script'); s.async = true;
		s.type = 'text/javascript';
		s.src = '//' + disqus_shortname + '.disqus.com/count.js';
		(document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
		}());
	</script> 
</#macro>

<#-- Adds disqus thread (comments section) to the page-->
<#macro disqusThread shortname=config.disqus_shortname identifier=content.uri url=config.site_host + content.uri>
	<div id="disqus_thread"></div>
	<script type="text/javascript">
	    /* * * CONFIGURATION VARIABLES * * */
	    var disqus_shortname = '${shortname?js_string}';
		var disqus_identifier = '${identifier?js_string}';
	    var disqus_url = '${url?js_string}';
       
	    /* * * DON'T EDIT BELOW THIS LINE * * */
	    (function() {
	        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
	        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
	        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	    })();
	</script>
	<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
</#macro>