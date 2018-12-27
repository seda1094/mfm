<?php
function shlori_tsar(){

    wp_enqueue_style('style', get_stylesheet_uri() );
    
}
add_action('wp_enqueue_scripts','shlori_tsar');

// custom excerpt length
function custom_excerpt_length(){
    return 24;
}

add_action('excerpt_length', 'custom_excerpt_length');

// Theme setup
function custom_setup_theme(){

    // register menus
    register_nav_menus( array(
        "poghos" => __("Primary menu"),
        "footer" => __("Social links")
    ) );

    // add featured image
    add_theme_support('post-thumbnails');
    add_theme_support('post-formats', array('aside', 'gallery', 'link'));

    // add image size
    // add_image_size('small', 300, 160, true);
    // add_image_size('cover', 1000, 200, array("left","bottom"));

}

add_action('after_setup_theme', 'custom_setup_theme');


// register sidebar 
function widgetInit(){
    register_sidebar( array(
        "id" => "sidebar1",
        "name" => "Sidebar",
        "before_widget" => "<div class=''>",
        "after_widget" => "</div>"
    ) );

    register_sidebar( array(
        "id" => "footer1",
        "name" => "Footer 1",
        "before_widget" => "<div class=''>",
        "after_widget" => "</div>"
    ) );

    register_sidebar( array(
        "id" => "footer2",
        "name" => "Footer 2",
        "before_widget" => "<div class=''>",
        "after_widget" => "</div>"
    ) );
}

add_action('widgets_init', 'widgetInit');

function last_3_posts(){
    global $authordata;
    
    echo "<h2>Recent Posts</h2>";

    $query = array(
        "author" => $authordata->ID,
        "posts_per_page" => 3
    );
    $last_posts = new WP_Query($query);

    echo "<ul>";

    if( $last_posts->have_posts() ){
        while($last_posts->have_posts()){
            $last_posts->the_post();
            ?>

            <div >
                <div class="float_left_thumb">
                     <?php the_post_thumbnail(); ?>
                </div>
                <div class="text_resent_post">
                    <a href="<?php the_permalink(); ?>">
                        <?php the_title(); ?>
                    </a>
                    <hr>
                </div>
                
            </div>
            <?php
        }
    }

    echo "</ul>";
}

?>