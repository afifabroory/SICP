#include <stdio.h>

int plus(int x, int y) { return x + y; }
int divide(int x, int y) { return x/y; }
int doubles(int x) { return x + x; }
int average(int x, int y) { return divide(plus(x,y),2); }

int main() {
  printf("%d", doubles(average(2,4)));
  return 0;
}
