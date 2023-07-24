<?php

// Register Custom Post Type Category Slider
function create_categoryslider_cpt() {

	$labels = array(
		'name' => _x( 'Category Sliders', 'Post Type General Name', 'shopx' ),
		'singular_name' => _x( 'Category Slider', 'Post Type Singular Name', 'shopx' ),
		'menu_name' => _x( 'Category Sliders', 'Admin Menu text', 'shopx' ),
		'name_admin_bar' => _x( 'Category Slider', 'Add New on Toolbar', 'shopx' ),
		'archives' => __( 'Category Slider Archives', 'shopx' ),
		'attributes' => __( 'Category Slider Attributes', 'shopx' ),
		'parent_item_colon' => __( 'Parent Category Slider:', 'shopx' ),
		'all_items' => __( 'All Category Sliders', 'shopx' ),
		'add_new_item' => __( 'Add New Category Slider', 'shopx' ),
		'add_new' => __( 'Add New', 'shopx' ),
		'new_item' => __( 'New Category Slider', 'shopx' ),
		'edit_item' => __( 'Edit Category Slider', 'shopx' ),
		'update_item' => __( 'Update Category Slider', 'shopx' ),
		'view_item' => __( 'View Category Slider', 'shopx' ),
		'view_items' => __( 'View Category Sliders', 'shopx' ),
		'search_items' => __( 'Search Category Slider', 'shopx' ),
		'not_found' => __( 'Not found', 'shopx' ),
		'not_found_in_trash' => __( 'Not found in Trash', 'shopx' ),
		'featured_image' => __( 'Featured Image', 'shopx' ),
		'set_featured_image' => __( 'Set featured image', 'shopx' ),
		'remove_featured_image' => __( 'Remove featured image', 'shopx' ),
		'use_featured_image' => __( 'Use as featured image', 'shopx' ),
		'insert_into_item' => __( 'Insert into Category Slider', 'shopx' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Category Slider', 'shopx' ),
		'items_list' => __( 'Category Sliders list', 'shopx' ),
		'items_list_navigation' => __( 'Category Sliders list navigation', 'shopx' ),
		'filter_items_list' => __( 'Filter Category Sliders list', 'shopx' ),
	);
	$args = array(
		'label' => __( 'Category Slider', 'shopx' ),
		'description' => __( '', 'shopx' ),
		'labels' => $labels,
		'menu_icon' => 'dashicons-format-gallery',
		'supports' => array('title', 'thumbnail', 'revisions', 'custom-fields'),
		'taxonomies' => array(),
		'public' => true,
		'show_ui' => true,
		'show_in_menu' => true,
		'menu_position' => 5,
		'show_in_admin_bar' => true,
		'show_in_nav_menus' => true,
		'can_export' => true,
		'has_archive' => false,
		'hierarchical' => true,
		'exclude_from_search' => true,
		'show_in_rest' => true,
		'publicly_queryable' => true,
		'capability_type' => 'post',
	);
	register_post_type( 'category_slider', $args );

}
add_action( 'init', 'create_categoryslider_cpt', 0 );