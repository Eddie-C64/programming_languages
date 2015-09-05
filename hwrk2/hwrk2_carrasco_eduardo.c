// Eduardo Carrasco Jr

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>  // include srand function

#pragma warning(disable : 4996) 

#define ALPHA 15
#define maximum(x, y) (x > y) ? x : y
#define mac(a, b) (a*a + b*b - 2 * a*b)

//Redefined BETA as a constant.
#define BETA 15;

int func(int a, int b) {
	return (a*a + b*b - 2 * a*b);
}


// Q1.1: Compare and contrast the 2 arrays, alpha and beta.  Explain why beta failed during the compilation.  [5pts]

// Q1.2: Fix the compilation error. [5pts]  
int case_one() {
	int alpha[ALPHA];
	int beta[ALPHA];		// Q1.2: Fixed, but since both values are a constant and have the same value, set int beta[] array with ALPHA constant.

	printf("\n\nQ1: Please compare and contrast the 2 arrays.  Explain why there was a compilation error for beta. [5pts]\n");
	
	// Q1.1 Output your solution to the console using printf. 
	printf("Solution: We defined ALPHA as a global constant, this allowed to be accenseted through out the program with no problem. Beta was firsted created as an instance variable and is only accessable through no classes. ALPHA is accesable through out all the classes");

	return sizeof(beta);
}


// Q2: Study the code and determine why the result is not 6.  
// Then address (or fix) the problem in this function without modifying the the macro so that the correct output 6 is generated [10pts]
// [HINT: You can additional variables within the function.]
int case_two(int x, int y) {
	int i = x, j = y;
	int result;
    
    //Order of incrementaion matters in C; if you use max(i,++j) = 7, if you use max(i,j++) = 6.
	result = maximum(i,j++);
	printf("\n\nQ2: If x = %d and ++y = %d, then the maximum value of these 2 numbers is %d.", x, (++y), result);

	return result;
}


// Q3: Execute the following code on a Visual Studio IDE and then copy Q3 output to actualResult. [10pts]
void case_three(int x, int y, char *actualResult) {
	int i, j, s, t;
	
	s = i = x;	// initialize variables with value from x
	t = j = y;  // initialize variables with value from y

	// Copy the output to actualResult below... 
	printf("\n\n");
	printf("Q3: Result from func(x, y) = %d and mac(x, y) = %d.", func(++i, ++j), mac(++s, ++t));

	// Replace the quoted content in the following strcpy statement with the actual output from last printf statement above.
	// Do not alter the text or add any spaces to it. 
	strcpy(actualResult, "Q3: Result from func(x, y) = 1 and mac(x, y) = 1.");
}


// Q4: Re-run the same code in case_three on GCC compiler and then assign the outputs to r1 and r2. [10pts]
//     The result must be exactly as shown on the screen; no extra spaces.  
void case_four(char *actualResult) {

	// Replace the content with the actual output. Do not alter the text or add any spaces to it. 
	strcpy(actualResult, "Q4: Result from func(x, y) = 1 and mac(x, y) = -27.");
}


// Q5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]
void case_five() {
	printf("\n\nQ5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]\n");

	// Q6. Output your solution to the console using printf.  
	printf("Solution: Different compliers order the methods they stack the code. Some compliers have no spefic order for pre-incrementation or post-incrementation as in the other cases where the mac and fucn are the same thing essentially but gcc places them in the memory stack differently then another complier.");
}


// Q7: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]
void case_six() {
	printf("\n\nQ6: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]\n");

	// Q8. Output your solution to the console using printf.  
	printf("Solution: Short answer is GCC doesn't priotize over the specifcation the same as Visual Studio's complier.\nEssentially each complier has different ways they order the sequences of instructions differently when submitted in assembly language.\n Then somewhere along those lines it's turned into machine code.");
}

// Do not alter the main function or any of the function headers.  
int main() 
{
	int x = 4, y = 5; 
	char result[1024];

	case_one();
	case_two(x, y);
	case_three(x, y, result);
	case_four(result);
	case_five();
	case_six();

	return 0; 
}