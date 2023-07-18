<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'shopx_db' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'qI5dW6l#Au+spmO^G@.As~L:75>QUhlFmyUMSw(vjecs##Xd$MH{R8Y?aGKF~q.x' );
define( 'SECURE_AUTH_KEY',  'l*#c0j%6~#}[(4~ixclT:FqV;vxtU>P>Ao6%XJ4dEv]bR5gJ(9LUlZ4r*]P?cT$N' );
define( 'LOGGED_IN_KEY',    '.ySfnGshe=F-wh`v7~IMkQ.z?EV2UOcK!g.-W+2E99G.=`YeROyYO)14Ey?/I3`{' );
define( 'NONCE_KEY',        '6^5[I_sCD~:_HVCftITX0t}*u24J87*8{bR-QUb@pHflt0,k %^BUeBYrd6Mc%wR' );
define( 'AUTH_SALT',        '13sSS&;5w8AdM,S6m]YV#@]TUS;zK<vb][WIe&HA||avQum~j+7C;5%k;KrNaJLV' );
define( 'SECURE_AUTH_SALT', 'r=TRj8,J#URG-?eXea-&2]#P?g])t$oQg$eQ6f%ujqJ?LjT|Wx0YT0sS0MDVOmr#' );
define( 'LOGGED_IN_SALT',   '2H|NZ|{_<Nn^P.%#hv^kK#LS4|*omxj~tT2#wGxb0gxWbaE~t-Scb{G(kl(xr)-=' );
define( 'NONCE_SALT',       '>*1?d$A+]j_}MC)^yd>UaVOpw9i3;{~vM2b>{J:q<p>K9hNWg(}om?255Q3j)vyd' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
