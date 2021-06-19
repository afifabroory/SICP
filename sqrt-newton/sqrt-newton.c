#include <stdio.h>

float square(float x)
{
  return x*x;
}

float absolute(float x)
{
  if (x < 0)
  {
     return -x;
  }
  return x; // else
}

float average(float x, float y)
{
  return (x+y)/2;
}

float isEnough(float guess, float x)
{
  return absolute(square(guess) - x) < 0.001;
}

float approx(float guess, float x)
{
  if (isEnough(guess, x)) {
    return guess;
  }
  approx(average(guess, (x/guess)), x); // else
}

float sqrtNewton(float x)
{
  return approx(1.0, x);
}

int main() 
{
  printf("%f\n", sqrtNewton(2)); 
  return 0;
}
