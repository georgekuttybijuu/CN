echo "Enter the radius of the circle: "
read radius
area=$(echo "3.14159 * $radius * $radius" | bc)
circumference=$(echo "2 * 3.14159 * $radius" | bc)
echo "Area of the circle is: $area"
echo "Circumference of the circle is: $circumference"

