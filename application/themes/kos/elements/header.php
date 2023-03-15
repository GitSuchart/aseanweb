<?php defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header_top.php');
?>
<!--
=======================================
Designed & built by KOS Design Co., Ltd
E-mail: hello(@)kos.co.th t: 02 7138625
Web: http://www.kos.co.th
=======================================
-->
<header class="main-header">
	<div class="header">
		<nav class="navbar header-navbar">
			<div class="container-fluid p-0 d-flex">
				<a href="/" class="navbar-brand header-logo main-logo"><?php $this->inc('svg/logo-aisin-asian.php');?></a>
				<div class="navbar-container d-none d-xl-flex justify-content-end">
					<div class="header-navigation">
					<?php
						$headerNavigation = new GlobalArea('Header: Navigation ' . LANGAREA);
						$headerNavigation->setBlockLimit(1);
						$headerNavigation->display();
					?>
					</div>
					<div class="header-search">
					<?php
						$headerSearch = new GlobalArea('Header: Search ' . LANGAREA);
						$headerSearch->setBlockLimit(1);
						$headerSearch->display();
					?>
					</div>
					<div class="header-other">
					<?php
						$headerOther = new GlobalArea('Header: Navigation Other' . LANGAREA);
						$headerOther->setBlockLimit(1);
						$headerOther->display();
					?>
					</div>
				</div>
				<div class="navbar-container d-flex d-xl-none justify-content-end">
					<div class="header-search mobile"><?php echo $headerSearch->display(); ?></div>
					<div class="d-flex d-xl-none align-items-center">
						<button type="button" class="btn btn-hamburger">
							<span></span>
							<span></span>
							<span></span>
						</button>
					</div>
					<div class="header-navigation mobile"><?php $headerNavigation->display(); ?></div>
				</div>
			</div>
		</nav>
	</div>
</header> 