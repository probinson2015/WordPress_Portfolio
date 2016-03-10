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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_portfolio');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'jXOw@&5c]|:pKm.&>/=;_-14iP39!PY*MJ3].#(LA)SLdOwp08{:Xz)j^Pw;8}3k');
define('SECURE_AUTH_KEY',  '`~~wA:Wl^)!jg[rpl|{+#pQ~j7^r|Mci#?}^/HxpjiHld-Oz*F#f|hk4G9<9)Ww7');
define('LOGGED_IN_KEY',    '^=i_sO[>m@:}Pi$8#R]-c,]|N0b<v]ePy~ pNX2+7Oi4Zu>6.;.Tt}P3~h9SBvf%');
define('NONCE_KEY',        'xS?xyVy~`[JbZZLw6A&=:V)2d8awyC+DCFmR2[Pm!)^z>;[Y..-F-*^?%rW=M*Du');
define('AUTH_SALT',        ',EtIQ)?>v*q1rTNJfwVE[Kspn8gKO[3.?D?8i;YoVG+4?cn.-NbLIV8tlM5fM|8u');
define('SECURE_AUTH_SALT', ']/Jk$VJ(o?tbfwyg%3)gi8u#q+^0P/+|Fs)&gIMMb-5_4$5Qzp<|JLGv3K>Zw<vm');
define('LOGGED_IN_SALT',   'gy4stw??}Sf.o`=-nthSuzXlBOOGq>Ij:2L-X3rJxb!+>dE$^**r-}}?L_;y#]F[');
define('NONCE_SALT',       '$P=0>+11BxAit`,tt3}@I9I1VN|Sx>/ ?!QGNR^:c->1T`.oA{;W)+bj!cGEk$<k');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
