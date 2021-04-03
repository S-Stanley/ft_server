<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpressuser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'user42' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '_nOV*+G$Xd;T@}Dx$eBY2ePQv*E&>}}2a{)p50iG[1Hi!DOJ|+_ 9W~S/{f_wT2O');
define('SECURE_AUTH_KEY',  '.7N,fDGxI+0`J^b;/Dx(.vvqU=cPaw!(52z0]^p#ymT:8&szjJ$*1oP5965t)^Gh');
define('LOGGED_IN_KEY',    '$:]RNoc54+ta$7qv1Y%]u7Huq85LJ$!K3<)mVHNE_xRt{Yf,jYI+W#{|o{k@4bO?');
define('NONCE_KEY',        '-42p:LGjW;4+s| `BP=Tio[ -KTlm=( C0OKEPn2w#<{oD+kH:x7-fOcyHQm>c`U');
define('AUTH_SALT',        'WZWC<NtdenZ9P-)D@4RTZmQ{(Zw_ZDO.]h@!>]$3r`J>Y?yW9_kHWE/1r,&DNe$r');
define('SECURE_AUTH_SALT', 'YCu:QJDQ4/8yOD9xOT-M18usE PYpFVtJU=1z+ISc1}}UMkG`:k}%;waa&sJfJFm');
define('LOGGED_IN_SALT',   'bU|.du/?IKymU]7^W&1=Y=>EY%TKf+mWwTYl.uOe+ MWhJONNGnEJie-I(S&aYT9');
define('NONCE_SALT',       '+sB7@#}eCs) v.UrC&a_M57r3Vo-<Jb&S%A-|!+QfA,v -^C;Zc!3r K:{%u?;/B');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
