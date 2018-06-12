<?php

$archive = "archive.zip";
$directory = $_SERVER['DOCUMENT_ROOT'];
exec( "zip -r $archive $directory");

 ?>
