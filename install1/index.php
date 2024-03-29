<?php
// HTTP
define('HTTP_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(dirname($_SERVER['PHP_SELF']), '/.\\') . '/');
define('HTTP_OPENCART', 'http://' . $_SERVER['HTTP_HOST'] . rtrim(rtrim(dirname($_SERVER['PHP_SELF']), 'install'), '/.\\'). '/');

// DIR
define('DIR_APPLICATION', str_replace('\'', '/', realpath(dirname(__FILE__))) . '/');
define('DIR_SYSTEM', str_replace('\'', '/', realpath(dirname(__FILE__) . '/../')) . '/system/');
define('DIR_OPENCART', str_replace('\'', '/', realpath(DIR_APPLICATION . '../')) . '/');
define('DIR_DATABASE', DIR_SYSTEM . 'database/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');

// Startup 
require_once(DIR_SYSTEM . 'startup.php');

// Registry
$registry = new Registry();

// Loader
$loader = new Loader($registry);
$registry->set('load', $loader);

// Config
$config = new Config();
$registry->set('config', $config);

// Session
$session = new Session();
$registry->set('session', $session); 

// Request
$request = new Request();
$registry->set('request', $request);

// Response
$response = new Response();
$response->addHeader('Content-Type: text/html; charset=UTF-8');
$registry->set('response', $response);

// Language Detection
 $detect = "en";
if (isset($request->get['language'])) {
	$session->data['language'] = $request->get['language'];
	$languages = $session->data['language'];
} elseif (isset($session->data['language'])) {
	$languages = $session->data['language'];
} elseif (isset($request->cookie['language'])) {
	$languages = $request->cookie['language'];
} else {
	$languages =  $detect;
}

$language = new Language($languages);
$language->load($languages);	
$registry->set('language', $language); 

// Document
$document = new Document();
$registry->set('document', $document);

// Front Controller 
$controller = new Front($registry);

// Router
if (isset($request->get['route'])) {
	$action = new Action($request->get['route']);
} else {
	$action = new Action('step_0');
}

// Dispatch
$controller->dispatch($action, new Action('not_found'));

// Output
$response->output();
?>