<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<footer class="main-footer">
	<div class="footer">
		<div class="container-fluid footer-container">
			<div class="row">
				<div class="col-12">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<?php
									$footer = new GlobalArea('Footer: Social ' . LANGAREA);
									$footer->display();
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid footer-container">
			<div class="row">
				<div class="col-12">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="navigation">
									<?php
										$footer = new GlobalArea('Footer: Navigation ' . LANGAREA);
										$footer->display();
									?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid footer-copyright">
			<div class="row">
				<div class="col-12">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<?php
									$footer = new GlobalArea('Footer: Copyright ' . LANGAREA);
									$footer->setBlockLimit(1);
									$footer->display();
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<?php $this->inc('elements/footer_bottom.php');?>