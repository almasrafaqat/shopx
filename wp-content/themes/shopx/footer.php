<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package ShopX
 */

?>

<div class="shopx-widget-container container">
	<div class="row">
		<div class="col-md-4">
			<div class="subsriber-container">
				<?php dynamic_sidebar('footer-1'); ?>
				<div class="footer-social-icons">
					<ul>
						<li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>

					</ul>
				</div>
			</div>

		</div>
		<div class="col-md-8 site-links">
			<div class="row">
				<div class="col-md-4">
					<?php dynamic_sidebar('footer-2'); ?>
				</div>
				<div class="col-md-4">
					<?php dynamic_sidebar('footer-3'); ?>
				</div>
				<div class="col-md-4">
					<?php dynamic_sidebar('footer-4'); ?>
				</div>
			</div>
		</div>

	</div>
</div>



<footer id="colophon" class="site-footer">
	<div class="site-info">
		<a href="<?php echo esc_url(__('https://wordpress.org/', 'shopx')); ?>">
			<?php
			/* translators: %s: CMS name, i.e. WordPress. */
			printf(esc_html__('Proudly powered by %s', 'shopx'), 'AlmasThemes');
			?>
		</a>
		<span class="sep"> | </span>
		<?php
		/* translators: 1: Theme name, 2: Theme author. */
		printf(esc_html__('Theme: %1$s by %2$s.', 'shopx'), 'shopx', '<a href="http://almasthemes.com">AlmasThemes</a>');
		?>


	</div><!-- .site-info -->
</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>