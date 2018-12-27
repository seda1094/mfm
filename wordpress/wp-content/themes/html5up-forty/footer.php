						<!-- Three -->
						<!-- 	<section id="three">
								<div class="inner">
									<header class="major">
										<h2>Massa libero</h2>
									</header>
									<p>Nullam et orci eu lorem consequat tincidunt vivamus et sagittis libero. Mauris aliquet magna magna sed nunc rhoncus pharetra. Pellentesque condimentum sem. In efficitur ligula tate urna. Maecenas laoreet massa vel lacinia pellentesque lorem ipsum dolor. Nullam et orci eu lorem consequat tincidunt. Vivamus et sagittis libero. Mauris aliquet magna magna sed nunc rhoncus amet pharetra et feugiat tempus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button next">Get Started</a></li>
									</ul>
								</div>
							</section> -->

					</div>

				<!-- Contact -->
				<?php if (!is_single()): ?>
					<section id="contact">
						<div class="inner">
							<section>
								<form method="post" action="send.php">
									<div class="fields">
										<div class="field half">
											<label for="name">Name</label>
											<input name="name" type="text" id="name" />
										</div>
										<div class="field half">
											<label for="email">Email</label>
											<input name="email" type="text"  id="email" />
										</div>
										<div class="field">
											<label for="message">Message</label>
											<textarea name="comment" id="message" rows="6"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" name="submit" value="Send Message" class="primary" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<a href="#">sedatathevik@gmail.com</a>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<span>+374 77 89 70 68</span>
									</div>
								</section>
								<!-- <section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<span>1234 Somewhere Road #5432<br />
										Nashville, TN 00000<br />
										United States of America</span>
									</div>
								</section> -->
							</section>
						</div>
					</section>

				<?php endif ?>
					
				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<!-- <li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li> -->
								<li><a href="https://www.facebook.com/MFM-Studio-1437185033247656/" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<!-- <li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li> -->
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="<?php bloginfo('template_url'); ?>/assets/js/jquery.min.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/jquery.scrolly.min.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/jquery.scrollex.min.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/browser.min.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/breakpoints.min.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/util.js"></script>
			<script src="<?php bloginfo('template_url'); ?>/assets/js/main.js"></script>
<?php wp_footer(); ?>
	</body>
</html>