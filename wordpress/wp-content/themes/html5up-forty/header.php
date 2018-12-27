<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title><?php bloginfo('name'); ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
		<link rel='stylesheet' href='<?php bloginfo('stylesheet_url');?>'>
		<noscript><link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/assets/css/noscript.css" /></noscript>
	</head>
<?php wp_head(); ?>

	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						 <?php 
                    $shlor = array(
                        "theme_location" => "poghos"
                    );
                    wp_nav_menu( $shlor );
                    ?>
					</nav>