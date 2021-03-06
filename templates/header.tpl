<!DOCTYPE html>
<html lang="{function.localeToHTML, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection -->>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->
	{function.buildLinkTag}
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- END -->

</head>

<body class="{bodyClass} <!-- IF config.bannerMessage -->banner-visible<!-- ENDIF config.bannerMessage -->">
	<div class="navbar navbar-default navbar-fixed-top header" role="navigation" component="navbar">
		<div class="loading-bar"></div>
		<!-- IMPORT partials/banner.tpl -->
		<header id="header-menu">
			<!-- IMPORT partials/menu.tpl -->
		</header>
	</div>
	<div class="container" id="content" component="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
