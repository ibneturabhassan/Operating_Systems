#### Write a shell script to  make a simple calculator which should be capable of performing basic calculations.
#### Also add a feature of repeated inputs from the user.


while :
do
	echo "Enter first number"
	read x
	echo "Enter second number"
	read y
	echo $'Select the operation you want to perform: \n1- Addition \n2- Subtraction \n3- Miltiplication \n4- Division'
	read opc
	case $opc in
		1) echo "$x + $y = `expr $x \+ $y`" ;;
		2) echo "$x - $y = `expr $x \- $y`" ;;
		3) echo "$x x $y = `expr $x \* $y`" ;;
		4) echo "$x / $y = `expr $x \/ $y`" ;;
		*) echo "INVALID NUMBER!" ;;
	esac
	echo $'infinite loops [hit CTRL+C to stop]\n\n'
done
