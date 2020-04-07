#include <stdio.h>
#include <stdlib.h>
#include "la1helpers.h"

/*
    introduce the rules and game to the player so they know how to play
*/
void introduction(int* sol) {
    printf("Hello, welcome to Tic-Tac-Toe\n"); // welcome
    printf("Pay attention to the numbers display on the gameboard below."
            "Enter a number as displayed and you will make your move in that"
            "respective position\n"); // instructions
    printf("1|2|3\n4|5|6\n7|8|9\n"); // gameboard
    printf("\nNow that you have seen the gameboard, remember it.\n"
            "After each move, you will have the option to save the game."
            "Press '0' if you would like to save\n"); // other information
    printf("\nPress '1' to start a new game, press '2' to load a saved game\n");
}
