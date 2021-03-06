// Eduardo Carrasco

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>  // include srand function

#pragma warning(disable : 4996)

#define ALPHA 15
#define maximum(x, y) (x > y) ? x : y
#define mac(a, b) (a*a + b*b - 2 * a*b)

//Beta has to be a constant in order to compile correctly.
#define BETA 15

int func(int a, int b) {
	return (a*a + b*b - 2 * a*b);
}


// Q1.1: Compare and contrast the 2 arrays, alpha and beta.  Explain why beta failed during the compilation.  [5pts]
//A1: Solution: BETA needs to be defined as a constant  not a global variable.
// Q1.2: Fix the compilation error. [5pts]
int case_one() {
	int alpha[ALPHA];
	int beta[BETA];		// Q1.2: Fix the error

	printf("\n\nQ1: Please compare and contrast the 2 arrays.  Explain why there was a compilation error for beta. [5pts]\n");

	// Q1.1 Output your solution to the console using printf.
	printf("Solution: BETA needs to be defined as a constant  not a global variable.");

	return sizeof(beta);
}


// Q2: Study the code and determine why the result is not 6.
// Then address (or fix) the problem in this function without modifying the the macro so that the correct output 6 is generated [10pts]
// [HINT: You can additional variables within the function.]
int case_two(int x, int y) {
	int i = x, j = y;
	int result;

	//Update must be on the right.
	result = maximum(i, j++);
	printf("\n\nQ2: If x = %d and ++y = %d, then the maximum value of these 2 numbers is %d.", x, (++y), result);

	return result;
}


// Q3: Execute the following code on a Visual Studio IDE and then copy Q3 output to actualResult. [10pts]
void case_three(int x, int y, char *actualResult) {
	int i, j, s, t;

	s = i = x;	// initialize variables with value from x
	t = j = y;  // initialize variables with value from y

	// Copy the output to actualResult below...
	printf("\n\n");																//don't need s point to update
																				// nor do we need t pointer to update
	printf("Q3: Result from func(x, y) = %d and mac(x, y) = %d.", func(++i, ++j), mac(++s, ++t));

	// Replace the quoted content in the following strcpy statement with the actual output from last printf statement above.
	// Do not alter the text or add any spaces to it.
	strcpy(actualResult, "Q3: Result from func(x, y) = 1 and mac(x, y) = -27.");
}


// Q4: Re-run the same code in case_three on GCC compiler and then assign the outputs to r1 and r2. [10pts]
//     The result must be exactly as shown on the screen; no extra spaces.
void case_four(char *actualResult) {

	// Replace the content with the actual output. Do not alter the text or add any spaces to it.
	strcpy(actualResult, "Q4: Result from func(x, y) = 4 and mac(x, y) = 6.");
	//In gcc x = 4, y = 6;
}


// Q5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]
void case_five() {
	printf("\n\nQ5: Explain why the output values of x and y can be different when the program is executed on an environment such as GCC. [5pts]\n");

	// Q6. Output your solution to the console using printf.
	printf("Solution: Different programs use different compliers. In visual basic we may have several layers analyzing the code before it compiles the code. As compared to gcc it just a simple layer that complies the program.");
}


// Q7: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]
//A7: They can create different y values when it deals with floating point errors.
void case_six() {
	printf("\n\nQ6: Explain why Visual Studio and GCC programming environments could possibly produce a different y value for the same program and for the same input. [5pts]\n");

	// Q8. Output your solution to the console using printf.
	printf("Solution: Solution: Different programs use different compliers. In visual basic we may have several layers analyzing the code before it compiles the code. As compared to gcc it just a simple layer that complies the program.");
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
