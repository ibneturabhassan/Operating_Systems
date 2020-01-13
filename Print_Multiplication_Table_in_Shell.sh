##########Write a shell script to print the multiplication table for the given number. You can take that number as input from the user.

echo "Enter a number for which you want to print table"
read x
i=0
while [ $i -le 10 ]
do
	echo "$x x $i = `expr $x \* $i`"
	((i++))
done
