#include<stdio.h>

int main()
{
    int studentMarksMath[5];   // 0 -> 39

    for (int i = 0; i < 5; i++)
    {
        printf("Enter your math marks: ");
        scanf("%d", &studentMarksMath[i]);   
        //Input->  studentMarksMath[0] = 56
    }

    for (int j = 0; j < 5; j++)
    {
        printf("Student %d Math marks = %d\n", j+1, studentMarksMath[j]);
        //Output-> Student 0 Math marks = 56
    }

    // GCC -> GNU C Compiler
    

    return 0;
}
