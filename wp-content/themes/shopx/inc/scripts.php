<?php 
function shopx_scripts() {

  /**Bootstrap css */
  wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(), "5.3.0");

  /**Font-awesome css all */
  wp_enqueue_style('font-awesome', get_template_directory_uri() .'/assets/font-awesome/css/all.min.css', array(), '6.4.0');

  /**Font-awesome css min */
  wp_enqueue_style('font-awesome-v4', get_template_directory_uri() .'/assets/font-awesome/css/v4-shims.min.css', array(), '6.4.0');



/**Default */
	wp_enqueue_style( 'shopx-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_enqueue_script( 'shopx-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

  

  /**Jquery */
  wp_enqueue_script('jquery');

  /**Bootstrap js */
  wp_enqueue_script("bootstrap-js", get_template_directory_uri(). '/assets/js/bootstrap.min.js', array('jquery'), '5.3.0', false);


	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'shopx_scripts' );


?>