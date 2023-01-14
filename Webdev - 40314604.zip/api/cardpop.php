<?php

include("dbconn.php");

if ($conn) {
    $sqlcards = "SELECT album_id, `rank`, album_name, artist, artwork_url, genre.genre_name, years.year  FROM `album`
    INNER JOIN genre ON album.genre_id = genre.genre_id INNER JOIN
    years ON album.year_id = years.year_id ORDER BY `rank`";
    $result = mysqli_query($conn, $sqlcards);
    if ($result) {
        header("Content-Type: JSON");

        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['album_id'] = $row['album_id'];
            $response[$i]['rank'] = $row['rank'];
            $response[$i]['album_name'] = $row['album_name'];
            $response[$i]['artist'] = $row['artist'];
            $response[$i]['genre_name'] = $row['genre_name'];
            $response[$i]['year'] = $row['year'];
            $response[$i]['artwork_url'] = $row['artwork_url'];


            $i++;
        }
        
        echo json_encode($response, JSON_UNESCAPED_SLASHES), "\n";
    }
} else {
    echo "database connection failed";
}
?>

