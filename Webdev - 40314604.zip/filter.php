<?php

function displaynav(){

    $sixties = "1960 and 1969";
    $seventies = "1970 and 1979";
    $eighties = "1980 and 1989";
    $nineties = "1990 and 1999";
    $noughties = "2000 and 2009";
    $twentytens = "2010 and 2019";

    echo "<li><a href='albumfiltered.php?filter=$sixties'>SIXTIES</a></li>
    <li><a href='albumfiltered.php?filter=$seventies'>SEVENTIES</a></li>
    <li><a href='albumfiltered.php?filter=$eighties'>EIGHTIES</a></li>
    <li><a href='albumfiltered.php?filter=$nineties'>NINETIES</a></li>
    <li><a href='albumfiltered.php?filter=$noughties'>NOUGHTIES</a></li>
    <li><a href='albumfiltered.php?filter=$twentytens'>TWENTY-TENS</a></li>";
        
}

?>