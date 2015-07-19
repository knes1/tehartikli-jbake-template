<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>Teh Artikli</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${content.description!""}">
    <meta name="author" content="Krešimir Nesek">
    <meta name="keywords" content="${content.keywords!""}">
    <meta name="generator" content="JBake">
    <#list additionalMeta?keys as metaKey>
    <meta name="${metaKey?html}" content="${additionalMeta[metaKey]?html}">
    </#list> 

    <#assign root = (content.rootpath)!"" />
    <!-- Le styles -->
    <link href="${root}css/bootstrap.min.css" rel="stylesheet">
    <link href="${root}css/asciidoctor.css" rel="stylesheet">
    <link href="${root}css/base.css" rel="stylesheet">
    <link href="${root}css/prettify.css" rel="stylesheet">
    <link href="${root}css/highlight_default.min.css" rel="stylesheet">
    <!-- link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.6/styles/default.min.css" -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/highlight.js/8.6/highlight.min.js"></script>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="${root}js/html5shiv.min.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="${root}favicon.ico">
    <link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
  </head>
  <body onload="prettyPrint()">
    <div id="wrap">
   
