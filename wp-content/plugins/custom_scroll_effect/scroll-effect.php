<?php
//blocks direct access to this plugin
defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

/*
Plugin Name: Porsha's Title Scroll
Description: Makes Site Titles have a scroll effect
Version:     0.0.1
Author:      Porsha Robinson
License:     GPL2
License URI: https://www.gnu.org/licenses/gpl-2.0.html
*/


function scroll_title(){   
    // Register and Enqueue JavaScript file that requires jQuery
    wp_register_script( 'scroll-effect-script', plugins_url( '/scroll-effect-script.js', __FILE__ ), array( 'jquery' )  );
    wp_enqueue_script( 'scroll-effect-script' );   
   
}

add_action('wp_enqueue_scripts', 'scroll_title');
