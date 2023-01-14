<?php

    include("dbconn.php");

    $filename = "album_list_cleaned.csv";

    // get the resource object (open the file)
    $contents = fopen($filename, "r");

    // loop to read each line from CSV file into $row array
    $count = 0;
    while ( ($row = fgetcsv($contents)) !== FALSE ) {


        // get the contents of the line
        //$name = $row[0];
        $rank = $row[0];
        $year = $row[1];
        $album_name = $row[2];
        $artist = $row[3];
        $genre = $row[4];
        $subgenre = $row[5];
        $thumbnail = $row[6];
        $cover = $row[7];
               
        
        // create first INSERT INTO query (IGNORE to silently ignore duplicate entries) for child table
        // child table has type_id column that is Primary Key
        // parent table uses its type_id field as a foreign key into child table primary key

        //"INSERT IGNORE INTO  genre (genre_name) VALUES ('$genre')"
       
        
        try {

            $conn->autocommit(FALSE); // i.e., start transaction
        
            // assume that the TABLE groups has an auto_increment id field
            $query =  "INSERT IGNORE INTO  genre (genre_name) ";
            $query .= "VALUES ('$genre')";
            $result = $conn->query($query);
            if ( !$result ) {
                //$result->free();
                throw new Exception($conn->error);
            }
        
            $group_id = $conn->insert_id; // last auto_inc id from *this* connection
        
            $query = "INSERT IGNORE INTO years (`year`) ";
            $query .= "VALUES ('$year')";
            $result = $conn->query($query);
            if ( !$result ) {
               // $result->free();
                throw new Exception($conn->error);
            }
        
            // our SQL queries have been successful. commit them
            // and go back to non-transaction mode.
        
            $conn->commit();
            $conn->autocommit(TRUE); // i.e., end transaction
        }
        catch ( Exception $e ) {
        
            // before rolling back the transaction, you'd want
            // to make sure that the exception was db-related
            $conn->rollback(); 
            $conn->autocommit(TRUE); // i.e., end transaction   
        }
        
             
        // execute the query
        $result = $conn -> query($query);
         $latest_id = $conn -> insert_id;
                echo "insert successful. latest ID is: " . $latest_id;
                    
             if(!$result) {         
                echo $conn -> error;      
            } else {
            
                // create second INSERT INTO query for parent table
              
               $insertquery2 = "INSERT INTO album (`rank`, album_name, artist, year_id, genre_id, thumbnail_url, cover_url)
                VALUES ('$rank', '$album_name', '$artist', (SELECT year_id FROM years WHERE `year` = '$year'), (SELECT genre_id FROM genre WHERE genre_name = '$genre'), '$thumbnail', '$cover')"; 
                
                // execute the query
                $result = $conn -> query($insertquery2);


                if(!$result) {        
                    echo $conn -> error; 

                   
                }
                
                $count++;
            
            }
                
    }

    echo "<h3>Total of {$count} rows successfully inserted into database table.</h3>"
?>