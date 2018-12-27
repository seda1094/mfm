<?php get_header(); ?>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style2">
						<div class="inner">
							<span class="image">
								<img src="https://scontent.fevn1-1.fna.fbcdn.net/v/t1.0-9/46828859_107436043617191_8226753939861667840_n.jpg?_nc_cat=109&_nc_ht=scontent.fevn1-1.fna&oh=a1258ba8568f54b9584b23bade39df5a&oe=5C66F39F" alt="" />
							</span>
							<header class="major">
								<h1><a href="<?php echo home_url() ?>"><?php bloginfo('name'); ?></a></h1>
							</header>
							<div class="content">
								<p><?php bloginfo('description'); ?></p>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h2>Sed amet aliquam</h2>
									</header>
									<p>Nullam et orci eu lorem consequat tincidunt vivamus et sagittis magna sed nunc rhoncus condimentum sem. In efficitur ligula tate urna. Maecenas massa vel lacinia pellentesque lorem ipsum dolor. Nullam et orci eu lorem consequat tincidunt. Vivamus et sagittis libero. Nullam et orci eu lorem consequat tincidunt vivamus et sagittis magna sed nunc rhoncus condimentum sem. In efficitur ligula tate urna.</p>
								</div>
							</section>

						<!-- Two -->
<?php 



	while(have_posts() ) {
 the_post(); 


    //We are in loop so we can check if counter is odd or even
    if ($wp_query->current_post % 2 == 0){ //It's even

        ?>

			<section id="two" class="spotlights">
				<section>
					<a href="generic.html" class="image">
						<!-- <img src="<?php //bloginfo('template_url'); ?>/images/pic08.jpg" alt="" data-position="center center" /> -->
						<?php the_post_thumbnail() ?>
					</a>
					<div class="content">
						<div class="inner">
							<header class="major">
								<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
							</header>
							<p><?php the_excerpt(); ?></p>
							<ul class="actions">
								<li><a href="<?php the_permalink(); ?>" class="button">Learn more</a></li>
							</ul>
						</div>
					</div>
				</section>
        <?php

    }
    else{
?>
        <section>
			<a href="generic.html" class="image">
				<!-- <img src="<?php //bloginfo('template_url'); ?>/images/pic09.jpg" alt="" data-position="top center" /> -->
				<?php the_post_thumbnail() ?>
			</a>
			<div class="content">
				<div class="inner">
					<header class="major">
						<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
					</header>
					<p><?php the_excerpt(); ?></p>
					<ul class="actions">
						<li><a href="<?php the_permalink(); ?>" class="button">Learn more</a></li>
					</ul>
				</div>
			</div>
		</section>
<?php
    }

}



 ?>



<?php get_footer(); ?>
