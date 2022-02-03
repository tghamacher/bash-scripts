#!/bin/bash

# This is a script that I made totally for fun because i have nothing else to do.
# Bash is my favorite programming/scripting language

RNG() {
	X=$(( $RANDOM % 10 ))
	echo $X
}

echo scriptingisfun 
echo "Would you like to play Tic Tac Toe? y/n: "
read CHOICE
until [[ $CHOICE = 'Y' ]] || [[ $CHOICE = 'y' ]]; do
	echo "Dang, I was looking forward to playing a game with you!"
	exit 1
done
echo "Each of the squares in the grid is numbered, 1 to 9 starting in the top left and moving first to the right and then down."
echo " 1 | 2 | 3 "
echo "-----------"
echo " 4 | 5 | 6 "
echo "-----------"
echo " 7 | 8 | 9 "
echo "You are X and I am O. To begin, choose a square to place your first X."
read MOVE
while [[ $MOVE != 1 ]] && [[ $MOVE != 2 ]] && [[ $MOVE != 3 ]] && [[ $MOVE != 4 ]] && [[ $MOVE != 5 ]] && [[ $MOVE != 6 ]] && [[ $MOVE != 7 ]] && [[ $MOVE != 8 ]] && [[ $MOVE != 9 ]]; do
	echo "Please choose a numbered square"
	read MOVE
done
case $MOVE in
	1)
		echo " X |   |   "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
		RNG
	;;
	2)
		echo "   | X |   "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
		RNG
	;;
	3)
		echo "   |   | X "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
	;;
	4)
		echo "Nice Move!"
		echo "   |   |   "
		echo "-----------"
		echo " X |   |   "
		echo "-----------"
		echo "   |   |   "
	;;
	5)
		echo "   |   |   "
		echo "-----------"
		echo "   | X |   "
		echo "-----------"
		echo "   |   |   "
	;;
	6)
		echo "   |   |   "
		echo "-----------"
		echo "   |   | X "
		echo "-----------"
		echo "   |   |   "
	;;
	7)
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo " X |   |   "
	;;
	8)
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo "   | X |   "
	;;
	9)
		echo "   |   |   "
		echo "-----------"
		echo "   |   |   "
		echo "-----------"
		echo "   |   | X "
	;;
	esac
