def plus(a,b):
    return a+b
    
def divide(a,b):
    return a/b

def double(x):
    return plus(x,x)
    
def average(x,y):
     return divide(plus(x,y), 2)
     
print(double(average(2,4)))

## Normal-Order Evaluation ##
#   - Evaluate prosedur/fungsi terlebih dahulu lalu menerapkan prosedur/fungsi pada argumen -
#
#   double(average(2,4)) =>
#   plus(average(2,4), average(2,4)) =>
#   plus(divide(plus(2,4), 2), average(2,4)) =>
#   plus(divide(6,2), average(2,4)) =>
#   plus(3, divide(plus(2,4), 2)) =>
#   plus(3, divide(6,2)) =>
#   plus(3, 3) =>
#   6 [Selesai]

## Applicative-Order Evaluation ##
#   - Evaluate argumen terlebih dahulu lalu menerapkan prosedur/fungsi pada argumen-
#
#   double(average(2,4)) =>
#   double(divide(plus(2,4), 2)) =>
#   double(divide(6, 2)) =>
#   dobule(3) =>
#   plus(3,3) =>
#   6 [Selesai]
