<?
session_start();
$design_hidden=1;
//include "conf.php";
include "code.php";
require_once "inc/global.php";
//$sql=new sql($mysql_data);
include "xml.php";
user_check_auth();
call_hooks("ajax_start", null);

function error($msg) {
  /// Do something with this error
}

function build_request($param, $prefix, $ret) {
  if(is_array($param)) {
    foreach($param as $k=>$v) {
      build_request($v, "{$prefix}[$k]", &$ret);
    }
  }
  else {
    $param=strtr($param, array("#"=>"%23", "'"=>"%27"));
    array_push($ret, "$prefix=$param");
  }
}

function ajax_bla($bla) {
  return array("foo"=>array(1, 2, "ein text"), "bla", $bla);
}

Header("Content-Type: text/xml; charset=UTF-8");
//print "<?xml version='1.0' encoding='UTF-8'? >\n";

$fun="ajax_$_REQUEST[func]";
//print "<data>\n";
$xml=new DOMDocument();
//$ret=export_formated_text("value", html_var_to_js($fun($_REQUEST["param"], $xml)));
$return=$fun($_REQUEST["param"], $xml);

if($return&&(!$xml->firstChild)) {
  $ret=dom_create_append($xml, "return", $xml);
  dom_create_append_text($ret, html_var_to_js($return), $xml);
}
else if($xml->firstChild) {
  call_hooks("xml_done", $xml);
}
print $xml->saveXML();

//print $ret;
//print "</data>\n";
