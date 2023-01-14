<?php

include("dbconn.php");
include("artworkapi.php");

ini_set('max_execution_time', 0);

$sql = "SELECT album_id, album_name, artist FROM album;";

$result = $conn->query($sql);

$context = stream_context_create(array(
    'http' => array(
    'header' => array('User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) applewebkit/537.36(KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36'),
    ),
    ));


while ($row = $result->fetch_assoc()){
    $artist=$row['artist'];
    $album=$row['album_name'];
    $albumid=$row['album_id'];

$art=urlencode($artist);

$alb=urlencode($album);

$apipath="https://api.discogs.com/database/search?release_title={$alb}&artist={$art}&token=BYEyujJSBaQdSLhZfyuPxsBWtcAmOAbSPILKIjXe";

$apijson = file_get_contents($apipath, false, $context);

$myarray = json_decode($apijson);

  /*echo "<pre>";

print_r($arrayapi);

 echo "</pre>";*/

  if(empty($myarray->results[0]->cover_image)){
    $coverurl = "none";
  }else {
    $coverurl = $myarray->results[0]->cover_image;

    echo "$coverurl";
    
  }

  $stmt = $conn->prepare("UPDATE album SET artwork_url =? WHERE album_id = $albumid;");
    $stmt->bind_param("s", $coverurl);   
    if($stmt->execute()){
      echo "success";
    }else{
        $conn->error;
    }

    sleep(2);
    
}