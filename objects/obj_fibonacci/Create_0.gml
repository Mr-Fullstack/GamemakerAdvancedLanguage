
var nextNumber, prevNumber,currentNumber;

prevNumber = 1;
nextNumber = 0;
currentNumber=0;

while( currentNumber < 21 )
{
	
	currentNumber = prevNumber + nextNumber;
	prevNumber = nextNumber;
	nextNumber = currentNumber ;
	show_debug_message(currentNumber);
}             

