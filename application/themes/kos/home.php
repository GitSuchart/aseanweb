<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php');
// $current = Page::getCurrentPage();
// $isEdit
?>

<article class="main-article home">


	<section class="container-fluid p-0 home-section home-highlight">
		<h2 class="d-none"><?php echo t('Highlight');?></h2>
		<div class="row g-0">
			<div class="col-12">
				<div class="highlight-video video-background">
					<?php
						$content = new Area('Home Page: Highlight - Video');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
				<div class="highlight-content">
					<div>
						<?php
							$content = new Area('Home Page: Highlight - Content');
							$content->setBlocklimit(1);
							$content->display($c);
						?>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section home-intro">
		<h2 class="d-none"><?php echo t('Intro');?></h2>
		<div class="row g-0">
			<div class="col-12">
				<div class="intro-video video-background">
					<?php
						$content = new Area('Home Page: Intro - Video');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
				<div class="intro-content">
					<div class="container">
						<div class="row">
							<div class="col-12 col-md-6">
								<?php
									$content = new Area('Home Page: Intro - Content 1');
									$content->setBlocklimit(1);
									$content->display($c);
								?>
							</div>
						</div>
					</div>
				</div>
				<div class="intro-list">
					<div>
						<?php
							$content = new Area('Home Page: Intro - Content 2');
							$content->setBlocklimit(1);
							$content->display($c);
						?>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section home-newsroom">
		<h2 class="d-none"><?php echo t('Newsroom');?></h2>
		<div class="row g-0">
			<div class="col-12">
				<div class="newsroom">
					<?php
						$content = new Area('Home Page: Newsroom - List');
						$content->display($c);
					?>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section home-about">
		<h2 class="d-none"><?php echo t('About Us');?></h2>
		<div class="row g-0">
			<div class="col-12 <?php if (EDITMODE) { echo 'col-md-6'; } ?>">
				<div class="about-image">
					<?php
						$content = new Area('Home Page: About Us - Background');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
			</div>
			<div class="col-12 <?php if (EDITMODE) { echo 'col-md-6'; } ?>">
				<div class="container">
					<div class="row">
						<div class="col-12 <?php if (!EDITMODE) { echo 'col-md-6 offset-md-6'; } ?> d-flex justify-content-end">
							<div class="about-content">
								<div class="content">
									<?php
										$content = new Area('Home Page: About Us - Content');
										$content->display($c);
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section home-product">
		<h2 class="d-none"><?php echo t('Products and Services');?></h2>
		<div class="row g-0">
			<div class="product-video">
				<?php
					$content = new Area('Home Page: Products & Services - Video');
					$content->setBlocklimit(1);
					$content->display($c);
				?>
			</div>
			<div class="col-12 <?php if (EDITMODE) { echo 'col-md-6'; } ?>">
				<div class="container">
					<div class="row">
						<div class="col-12 <?php if (!EDITMODE) { echo 'col-md-6 offset-md-6'; } ?> d-flex justify-content-end">
							<div class="product-content">
								<div class="content">
									<?php
										$content = new Area('Home Page: Products & Services - Content');
										$content->display($c);
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="container-fluid p-0 home-section home-sustainability">
		<h2 class="d-none"><?php echo t('Sustainability');?></h2>
		<div class="row g-0">	
			<div class="col-12">
				<div class="sustainability-video video-background">
					<?php
						$content = new Area('Home Page: Sustainability - Video');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
			</div>
			<div class="col-12">
				<div class="container">
					<div class="row">
						<div class="col-12 <?php if (!EDITMODE) { echo 'col-md-6 offset-md-6'; } ?> d-flex justify-content-end">
							<div class="sustainability-content">
								<div class="content">
									<?php
										$content = new Area('Home Page: Sustainability - Content');
										$content->display($c);
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section">
		<h2 class="d-none"><?php echo t('Career');?></h2>
		<div class="row g-0">	
			<div class="col-12 col-lg-6">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div>
								<div class="title">
									<?php
										$content = new Area('Home Page: Career - Title');
										$content->display($c);
									?>
								</div>
								<div class="content">
									<?php
										$content = new Area('Home Page: Career - Content');
										$content->display($c);
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-lg-6">
				<div class="image">
					<?php
						$content = new Area('Home Page: Career - Image');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
			</div>
		</div>
	</section>


	<section class="container-fluid p-0 home-section">
		<h2 class="d-none"><?php echo t('Contact');?></h2>
		<div class="row g-0">	
			<div class="col-12">
				<div class="video-background">
					<?php
						$content = new Area('Home Page: Contact - video');
						$content->setBlocklimit(1);
						$content->display($c);
					?>
				</div>
			</div>
			<div class="col-12">
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-6 offset-lg-3">
							<div class="content">
								<?php
									$content = new Area('Home Page: Contact - Content');
									$content->display($c);
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


</article>

<?php  $this->inc('elements/footer.php'); ?>
