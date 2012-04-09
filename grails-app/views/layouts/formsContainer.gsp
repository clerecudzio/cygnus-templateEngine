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
	href="${resource(dir: 'css', file: 'cygnus-search.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'cygnus-forms.css')}"
	type="text/css">
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
	<g:javascript library="application" />
	<r:layoutResources />
	<div id="spinner" title="Loading page" style="display: none;">
		<p>
			<g:message code="spinner.alt"
				default="Your page is being displayed &hellip;" />
			<br> <br> <img
				src="${resource(dir: 'images', file: 'cygnus-formspinner.gif')}"
				alt="spinner" />

		</p>
	</div>
	<div id="ajaxRequestError" title="Ajax request returned an error"
		style="display: none;">
		<div class="errorMessage">
			<h1>
				<g:message code="cygnus.ajaxError" />
				<div class="cygnusAjaxErrorRespondText">&nbsp;</div>
			</h1>
		</div>
		<div id="openError">show detail</div>
		</br>
		<div id="ajaxError" style="display: none;"></div>
	</div>


</body>
</html>