// Eduardo Carrasco Jr.

#define _CRT_SECURE_NO_WARNINGS  // Not show security related warning
#include <stdio.h>

//Q1: forward declarations (5 points)
//Create forward declarations for all the functions used

//Forward Declarations Code Here
void initialize_matrices(int a[3][3],int b[3][3],int[3][3]);
void fill_matrix(int matrix[3][3]);
void add_matrices(int a[3][3],int b[3][3],int c[3][3]);
void print_sum_matrix(int c[3][3]);

int main()
{
	//Q2: define matrices (5 points)
	//Define three 3x3 integer matrices a, b, and c
	//(hint: a 3x3 matrix is the same as a 2D array with 3 rows and 3 columns)

	//CODE HERE
	int a[3][3], b[3][3], c[3][3];

	//Uncomment the following code once you've defined your matrices

	initialize_matrices(a, b, c);

	printf("Matrix a:\n");
	fill_matrix(a);

	printf("Matrix b:\n");
	fill_matrix(b);

	add_matrices(a, b, c);

	print_sum_matrix(c);


	return 0;
}

//Q3: initialize (10 points)
//loop through the matrices and set each integer value to 0
void initialize_matrices(int a[3][3], int b[3][3], int c[3][3])
{
	int i, j;
	//CODE HERE
	//The i value represents the row of the matrix.
	//The j value represents the columns of the matrix.
	//We need to iterate through each row and columns of each matrix.
	for (i = 0; i < 3; i++){
		for (j = 0; j < 3; j++){
			a[i][j],b[i][j],c[i][j] = 0;
		}
	}
}

//Q4: insert (10 points)
//Loop through the given matrix and fill it with input integers.
//Optional: You can prompt for input by printing "Enter the next integer: "
void fill_matrix(int matrix[3][3])
{
    //Use two for loops one for a[3][3] and one for b[3][3]
	int x,c,d;
	//For loop for matrix a[][].
	for(c = 0; c < 3; c++){
        for(d = 0; d < 3; d++){
            //Prompt the user to enter and integer for each indices of the matrix.
            printf("Please enter the integers values you would like to add matrix[%d][%d].",c,d);
            //Must scan for a number character will though errors.
            scanf("%d",&x);
            matrix[c][d] = x;
        }
	}
}

//Q5: addition(10 points)
//Loop through and add together the matrices a and b. Store the sum in matrix c.
//(hint: the result for c[0][0] is the sum of a[0][0] and b[0][0])
void add_matrices(int a[3][3], int b[3][3], int c[3][3])
{
	int r, s;
	for (r = 0; r < 3; r++){
		for (s = 0; s < 3; s++){
            //Looping through the array, we add the index of the a matrix to the b matrix.
			c[r][s] = a[r][s] + b[r][s];
		}
	}

}

//Q6: print(10 points)
//print the matrix c by row in the following format using tabs (\t):
// X     X     X
// X     X     X
// X     X     X
//(hint: printf( "%d\t", _ ) )
void print_sum_matrix(int c[3][3])
{
	int w, q;
	for (w = 0; w < 3; w++){
        //This nested for loop prints the row one index at a time.
		for (q = 0; q < 3; q++){
			printf("%d\t",c[w][q]);
		}
        //After each for loop we must create a new row.
		printf("\n");
	}

}
