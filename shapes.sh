#!/bin/bash
read -p "enter lenght: " l
read -p "enter breadth: " b
read -p "Enter radius: " r
areaRectangle=$(echo "$l * $b" | bc)
areaCircle=$(echo "3.14 * $r * $r" | bc)
CircumferenceCircle=$(echo "2 * 3.14 * $r" | bc)
perimeterRectangle=$(echo "2 * $l * $b" | bc)
echo "area of ractangle : $areaRectangle"
echo "Area of circle : $areaCircle"
echo "Circumference : $CircumferenceCircle"
echo "perimeter of ractangle : $perimeterRectangle"
 
