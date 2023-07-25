<?php


// add_action( 'acf/include_fields', function() {
// 	if ( ! function_exists( 'acf_add_local_field_group' ) ) {
// 		return;
// 	}

// 	acf_add_local_field_group( array(
// 	'key' => 'group_64be97c617b61',
// 	'title' => 'Category Slider Info',
// 	'fields' => array(
// 		array(
// 			'key' => 'field_64be97c696cdd',
// 			'label' => 'Category Title',
// 			'name' => 'Heading',
// 			'aria-label' => '',
// 			'type' => 'text',
// 			'instructions' => '',
// 			'required' => 0,
// 			'conditional_logic' => 0,
// 			'wrapper' => array(
// 				'width' => '50',
// 				'class' => '',
// 				'id' => '',
// 			),
// 			'default_value' => '',
// 			'maxlength' => '',
// 			'placeholder' => 'Heading Title',
// 			'prepend' => '',
// 			'append' => '',
// 		),
//         array(
// 			'key' => 'category_icon',
// 			'label' => 'Category Icon',
// 			'name' => 'category_icon',
// 			'aria-label' => '',
// 			'type' => 'image',
// 			'instructions' => '',
// 			'required' => 0,
// 			'conditional_logic' => 0,
// 			'wrapper' => array(
// 				'width' => '50',
// 				'class' => '',
// 				'id' => '',
// 			),
// 			'default_value' => '',
// 			'maxlength' => '',
// 			'placeholder' => '',
// 			'prepend' => '',
// 			'append' => '',
// 		),
// 	),
// 	'location' => array(
// 		array(
// 			array(
// 				'param' => 'post_type',
// 				'operator' => '==',
// 				'value' => 'category_slider',
// 			),
// 		),
// 	),
// 	'menu_order' => 0,
// 	'position' => 'normal',
// 	'style' => 'default',
// 	'label_placement' => 'top',
// 	'instruction_placement' => 'label',
// 	'hide_on_screen' => '',
// 	'active' => true,
// 	'description' => '',
// 	'show_in_rest' => 0,
// ) );
// } );


add_action( 'acf/include_fields', function() {
	if ( ! function_exists( 'acf_add_local_field_group' ) ) {
		return;
	}

	acf_add_local_field_group( array(
	'key' => 'group_64bfcf3013ce6',
	'title' => 'Slider Info',
	'fields' => array(
		array(
			'key' => 'field_64bfcf31817b6',
			'label' => 'Slide Heading',
			'name' => 'slide_heading',
			'aria-label' => '',
			'type' => 'text',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'default_value' => '',
			'maxlength' => '',
			'placeholder' => '',
			'prepend' => '',
			'append' => '',
		),
		array(
			'key' => 'field_64bfcf5e817b8',
			'label' => 'Slide More Link',
			'name' => 'slide_more_link',
			'aria-label' => '',
			'type' => 'url',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'default_value' => '',
			'placeholder' => '',
		),
		array(
			'key' => 'field_64bfcf7c817b9',
			'label' => 'Slide Box 1',
			'name' => 'slide_box_1',
			'aria-label' => '',
			'type' => 'group',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'layout' => 'block',
			'sub_fields' => array(
				array(
					'key' => 'field_64bfcf92817ba',
					'label' => 'Label',
					'name' => 'label',
					'aria-label' => '',
					'type' => 'text',
					'instructions' => '',
					'required' => 0,
					'conditional_logic' => 0,
					'wrapper' => array(
						'width' => '',
						'class' => '',
						'id' => '',
					),
					'default_value' => '',
					'maxlength' => '',
					'placeholder' => '',
					'prepend' => '',
					'append' => '',
				),
				array(
					'key' => 'field_64bfcfa4817bb',
					'label' => 'Icon',
					'name' => 'icon',
					'aria-label' => '',
					'type' => 'image',
					'instructions' => '',
					'required' => 0,
					'conditional_logic' => 0,
					'wrapper' => array(
						'width' => '',
						'class' => '',
						'id' => '',
					),
					'return_format' => 'array',
					'library' => 'all',
					'min_width' => '',
					'min_height' => '',
					'min_size' => '',
					'max_width' => '',
					'max_height' => '',
					'max_size' => '',
					'mime_types' => '',
					'preview_size' => 'medium',
				),
				array(
					'key' => 'field_64bfcfb9817bc',
					'label' => 'Link',
					'name' => 'link',
					'aria-label' => '',
					'type' => 'url',
					'instructions' => '',
					'required' => 0,
					'conditional_logic' => 0,
					'wrapper' => array(
						'width' => '',
						'class' => '',
						'id' => '',
					),
					'default_value' => '',
					'placeholder' => '',
				),
			),
		),
	),
	'location' => array(
		array(
			array(
				'param' => 'post_type',
				'operator' => '==',
				'value' => 'category_slider',
			),
		),
	),
	'menu_order' => 0,
	'position' => 'normal',
	'style' => 'default',
	'label_placement' => 'top',
	'instruction_placement' => 'label',
	'hide_on_screen' => '',
	'active' => true,
	'description' => '',
	'show_in_rest' => 0,
) );
} );

