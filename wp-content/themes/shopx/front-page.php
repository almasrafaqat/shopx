<?php
/**
 * The template for Front Page
 *
 */

get_header();

// The Query.
$cat_slider_query = new WP_Query( array('post_type' => 'category_slider')); ?>

	<main id="primary" class="slider-container container mt-5 mb-5">

	<?php

// The Loop.
if ( $cat_slider_query->have_posts() ) { ?>
	
    <div class="owl-carousel slider-wrapper">
    <?php 
    while ( $cat_slider_query->have_posts() ) :
		$cat_slider_query->the_post(); ?>
      <div class="slider-row row">
        
        <div class="col-12 col-md-7">
            <div class="row slide-heading d-flex align-items-center mb-3">
                <div class="col-md-8">
                    <?php $heading = get_field('slide_heading'); ?>
                    <?php if($heading) :?>
                        <h2 class="slider-heading"><?php echo esc_html( $heading ); ?> </h2>
                    <?php endif; ?>
                    
                </div>
                <div class="col-md-4 slider-more-link">
                <?php $morelink = get_field('slide_more_link'); ?>
                    <?php if($morelink) :?>
                        <a href="<?php echo $morelink ?>"><span class="me-1">More</span> <span><i class="fa  fa-long-arrow-right"></i></span></a>
                        
                    <?php endif; ?>
                </div>
            </div>
            <div class="row box-wrapper">
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_1' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_1' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_2' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_2' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_1' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_1' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_1' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_1' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_1' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_1' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                <div class="icon-box">
                    <?php if ( have_rows( 'slide_box_1' ) ) : ?>
                        <?php while ( have_rows( 'slide_box_1' ) ) : the_row(); ?>
                            <?php $icon = get_sub_field( 'icon' ); ?>
                            <?php if ( $icon ) : ?>
                                <div class="icon-image">
                                    <img src="<?php echo esc_url( $icon['url'] ); ?>" alt="<?php echo esc_attr( $icon['alt'] ); ?>" />
                                </div>
                            <?php endif; ?>
                                <div class="icon-label">
                                    <?php the_sub_field( 'label' ); ?>
                                </div>
                
                        <?php endwhile; ?>
                    <?php endif; ?> 
                </div>
                
            </div>
            
        </div> <!--col-md-7 -->

        <div class="col-12 col-md-5">
            <div class="image-wrapper">
                <?php if ( has_post_thumbnail() ) : ?>
                    <?php the_post_thumbnail('full'); ?>
                <?php endif; ?>
            </div> <!--image-wrapper-->
        </div> <!--col-md-5-->
      </div> <!--slider-row-->

	 <?php endwhile; ?>
    
     </div> <!--owl-carousel-->

	<?php
	
} else {
	esc_html_e( 'Sorry, no posts matched your criteria.' );
}
// Restore original Post Data.
wp_reset_postdata();
?>

	</main><!-- #main -->
    <script>

jQuery(document).ready(function(){
  jQuery(".owl-carousel").owlCarousel({
                    items: 1,
                    loop: true,
                    dots: false,
                    nav: true,
                    navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>']
                });
});
    </script>

<?php
get_sidebar();
get_footer();

