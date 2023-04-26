<?php
    header('Content-Type:application/xml');
if(isset($_GET) && $_GET['type']=='Excel'){
// CHargement du source XML
$xml = new DOMDocument;
$xml->load('facture3.xml');

$xsl = new DOMDocument;
$xsl->load('toExcel.xslt');

// Configuration du transformateur
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attachement des règles xsl

echo $proc->transformToXML($xml);
}
else{

    echo file_get_contents('facture3.xml');
}
?>