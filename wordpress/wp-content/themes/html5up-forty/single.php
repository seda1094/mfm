<?php get_header(); ?>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<?php the_post(); ?>
										<h1><?php the_title(); ?></h1>
									</header>
									<span class="image main"><?php the_post_thumbnail(); ?></span>
									<div class="single_content">
										<div class="col_1">
											<?php the_content(); ?>
										</div>

										<?php get_sidebar(); ?>
									</div>
								</div>
							</section>

					</div>

<?php get_footer(); ?>