<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
	
</script>
<g:javascript library="fgMenuResources" />
<g:layoutHead />
<r:layoutResources />
<g:set var="eName"
	value="${pageProperty(name:'page.pageEName')}"/>
</head>
<body>
	<div id="leftMenu" >
	<g:include controller="generateMenu" action="generateOnScreenMenu" params="[pos:'left',menuCode:eName]" />
	</div>
		<g:layoutBody />


	<g:javascript library="application" />
	<r:layoutResources />


</body>
</html>