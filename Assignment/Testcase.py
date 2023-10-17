import Fizz
import MyTestFizz

number = int(input("Please enter a number\n"))

value = Fizz.Outcome(number)

print(value)

for i in range(100):
    i+=1
    value = Fizz.Outcome(i)
    print(value)