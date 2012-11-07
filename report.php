<?php

global $glob;
$glob = array('input_dir'           => dirname(realpath(__FILE__)),
              'csvfile'             => "all.csv",

              'image_dir'           => "images/dir/goes/here",

              // drupal user id of user who should own uploaded content:
              'uid'                 => 5,

              'time'                => time()
              );

if (!($fp = fopen(sprintf("%s/%s", $glob['input_dir'], $glob['csvfile']), "r"))) {
  die("could not open CSV input file: " . $glob['csvfile']);
}

function csv_array_to_hash($a) {
  global $glob;
  $hash = array();
  if ($a && count($a)>0) {
    $i = 0;
    if ($i < count($a)) { $hash['id']                           = $a[$i++]; }
    if ($i < count($a)) { $hash['title']                        = $a[$i++]; }
    if ($i < count($a)) { $hash['description']                  = $a[$i++]; }
    if ($i < count($a)) { $hash['region']                       = $a[$i++]; }
    if ($i < count($a)) { $hash['data_type']                    = $a[$i++]; }
    if ($i < count($a)) { $hash['var_type']                     = $a[$i++]; }
    if ($i < count($a)) { $hash['assoc_report']                 = $a[$i++]; }
    if ($i < count($a)) { $hash['image_source']                 = $a[$i++]; }
    if ($i < count($a)) { $hash['data_source_title']            = $a[$i++]; }
    if ($i < count($a)) { $hash['data_source_url']              = $a[$i++]; }
    if ($i < count($a)) { $hash['image_files']                  = $a[$i++]; }
    if ($i < count($a)) { $hash['data_files']                   = $a[$i++]; }
    if ($i < count($a)) { $hash['metadata_files']               = $a[$i++]; }
    if ($i < count($a)) { $hash['doc_files']                    = $a[$i++]; }
  }
  return $hash;
}

$line = 0;
// skip first line of file:
fgetcsv($fp); ++$line;

// process remaining lines:

$regions = array();
$reports = array();
$data_types = array();
$var_types = array();
while ($h = csv_array_to_hash(fgetcsv($fp))) {
  ++$line;
  //printf("line %4d: (id=%s) %s\n", $line, $h['id'], $h['region']);
  $regions[$h['region']] = 1;
  $reports[$h['assoc_report']] = 1;
  $data_types[$h['data_type']] = 1;
  $var_types[$h['var_type']] = 1;
}

printf("Regions:\n");
foreach (array_keys($regions) as $region) {
  printf("  %s\n", $region);
}

printf("Reports:\n");
foreach (array_keys($reports) as $report) {
  printf("  %s\n", $report);
}

printf("Data Types:\n");
foreach (array_keys($data_types) as $data_type) {
  printf("  %s\n", $data_type);
}

printf("Var Types:\n");
foreach (array_keys($var_types) as $var_type) {
  printf("  %s\n", $var_type);
}
