<?php
    $xml = simplexml_load_file('web.xml') or die("Error: Unable to load XML file.");

    /*
        iterate through the arrays using for loop
        grab the index of servlet or whatever you need
    */
    $servlet = $xml->servlet; //servlet array
    $servlet_mapping = $xml->{'servlet-mapping'}; //servlet-mapping array
    $error_page = $xml->{'error-page'}; //error-page array

    $context_param = $xml->{'context-param'};
    $header = $context_param[0]->{'param-value'}; //header
    $footer = $context_param[1]->{'param-value'}; //footer

    $welcome_file = $xml->{'welcome-file-list'}->{'welcome-file'}; //welcome file
    $session_timeout = $xml->{'session-config'}->{'session-timeout'}; //session timeout
?>