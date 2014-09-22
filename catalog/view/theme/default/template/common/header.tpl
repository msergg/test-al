<!doctype html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
	<meta charset="UTF-8">
	
	<title><?php echo $title; ?></title>

	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	 
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
	<![endif]-->
	<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
	<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
	<script type="text/javascript">
	DD_belatedPNG.fix('#logo img');
	</script>
	<![endif]-->
	
	 <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/styles.css">
	 <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
	<?php echo $google_analytics; ?>
</head>
<body>
	<div class="header">
				<ul class="top-cart-menu">
				<!--<li>0.00 грн</li>
				<li>0 товаров</li>-->
				<li> <a href="<?php echo $shopping_cart;; ?>"><?php echo $cart; ?></a> </li> 
				<li> <a href="<?php echo $checkout; ?>"><?php echo $text_checkout;?></a> </li>
			</ul>
				
				
				
		<div class="top-block">
		
		
			<img src="catalog/view/theme/default/images/logo.png" alt="АвтоЛиния"  >
		
			<div class="search-form" >
			 
				
				<?php if ($filter_name) { ?>
				<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
				<?php } else { ?>
				<input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" size="40" onkeydown="this.style.color = '#000000';" />
				<?php } ?>
					<button class="button-search" type="submit"  > </button>	
				
				<!--<input type="search" value="Поиск товара..." size="40">-->
			</div>
			
			<div class="phones-block">
				<div class="life">
					<div class="logo"></div>
					<div class="phone-number">(093) 000-00-00</div>
				</div>
				<div class="ks">
					<div class="logo"></div>
					<div class="phone-number">(097) 000-00-00</div>
				</div>
				<div class="mts">
					<div class="logo"></div>
					<div class="phone-number">(095) 000-00-00</div>
				</div>
			</div>
		</div>
		
		
		<div class="header-menu">
			<ul class="top-menu">
				
				<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
				<!--<li><a href="#">Доставка и оплата</a></li>
				<li><a href="#">Статьи</a></li>
				<li><a href="#">Получите скидку</a></li>
				<li><a href="#">О нас</a></li>-->
				<?php if ($informations) { ?>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } } ?>
				
			</ul>
		</div>
		
		<div class="menu-effects"></div>
		
	</div>
	