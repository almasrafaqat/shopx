<?php
/**
 * The template for Front Page
 *
 */

get_header();

// The Query.
$cat_slider_query = new WP_Query( array(
    'post_type' => 'category_slider'
) ); ?>

	<main id="primary" class="site-main container mt-5 mb-5">

	<?php

// The Loop.
if ( $cat_slider_query->have_posts() ) { ?>
	
    <div class="slider-row row">
    <?php 
    while ( $cat_slider_query->have_posts() ) {
		$cat_slider_query->the_post(); ?>
      <div class="col-12 col-md-8">
        <div class="row">
            <div class="col-6"> <h2><?php esc_html( the_field('slide_heading')); ?></h2> </div>
            <div class="col-6"><a href="">More</a></div>
        </div>
        <?php $slider_box_1 = get_field('slide_box_1');
            $slider_box_2 = get_field('slide_box_2');
        ?>
      <div class="row mt-5 mb-5">
        <?php 
            if($slider_box_1){?> 
            <div class="col-4">
            <div class="image">
                <?php $box_1_image = $slider_box_1['icon']['sizes']['thumbnail']; ?>
                <img src="<?php echo $box_1_image; ?>" alt="Box 1 Image" />
            </div>
            <div class="label">
                <?php $box_1_label = $slider_box_1['label'];?>
                <span>
                    <?php echo $box_1_label; ?>
                </span>
            </div>
        </div>
        <?php } ?>

        <?php 
            if($slider_box_2){?> 
            <div class="col-4">
            <div class="image">
                <?php $box_1_image = $slider_box_2['icon']['sizes']['thumbnail']; ?>
                <img src="<?php echo $box_1_image; ?>" alt="Box 1 Image" />
            </div>
            <div class="label">
                <?php $box_1_label = $slider_box_2['label'];?>
                <span>
                    <?php echo $box_1_label; ?>
                </span>
            </div>
        </div>
        <?php } ?>
       
        <div class="col-4">3</div>
      </div>
      <div class="row mt-5 mb-5">
        <div class="col-4">4</div>
        <div class="col-4">5</div>
        <div class="col-4">6</div>
      </div>
        
    </div>
    <div class="col-12 col-md-4">
        <?php the_post_thumbnail( 'full' ); ?>
    </div>

	 <?php }
    ?>
  
    </div>
	<?php
	
} else {
	esc_html_e( 'Sorry, no posts matched your criteria.' );
}
// Restore original Post Data.
wp_reset_postdata();
?>

	</main><!-- #main -->

<?php
get_sidebar();
get_footer();
