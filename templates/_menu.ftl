	<!-- Fixed navbar -->
    <#assign root = (content.rootpath)!"" />
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${root}">Teh Artikli
          </a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="${root}archive.html"><i class="icon-calendar"></i> Archive</a></li>
            <li><a href="${root}${config.feed_file}"><i class="icon-rss"></i> Feed</a></li>
            <li><a href="https://github.com/knes1"><i class="icon-github"></i> knes1</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">