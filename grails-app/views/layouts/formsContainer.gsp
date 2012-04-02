<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-mobile.css')}"
	type="text/css">

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-main.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-search.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-forms.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-nav.css')}" type="text/css">


<g:javascript library="topMenuResources" />
<g:javascript library="jquery" />
<g:javascript library="jqueryui" />
<g:layoutHead />
<r:layoutResources />

</head>
<body>

	<g:render template="/layouts/header" />
	<span class="preload1"></span>
	<span class="preload2"></span>
	<div id="content-wrapper">

		<g:include controller="generateMenu" params="[pos:'top']" />

		<g:layoutBody />


		<div id="footer-push"></div>
	</div>
	<g:render template="/layouts/footer" />
	<div id="spinner" style="display: none;">
			<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />
	<r:layoutResources />


</body>
</html>