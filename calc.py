import calculatorUtils

number1 = int(input("Give a number 1: "))
number2 = int(input("Give a number 2: "))

operand = 'start'

while(operand != 'exit'):
    operand = input("Do you want to '+', '-', '*','/' or 'exit' to end the program:\n")

    if(operand != 'exit'):
        if(operand == '+' or  operand == '-' or operand == '/' or operand == '*'):

            number1given = False
            number2given = False

            while (not number1given):
                try:
                    number1 = int(input("Give a number 1: "))
                    number1given = True
                except Exception:
                    print("Number was not valid. Try again.")

            while (not number2given):
                try:
                    number2 = int(input("Give a number 2:"))
                    number2given = True
                except Exception:
                    print('Number is not valid, Try again')      

            match operand:
                case '+':
                    print('Your answer is:',calculatorUtils.addition(number1, number2))
                case '-':
                    print('Your answer is:',calculatorUtils.subtraction(number1, number2))
                case '*':
                    print('Your answer is:',calculatorUtils.multiplication(number1, number2))
                case '/':
                    print('Your answer is:',calculatorUtils.division(number1, number2))    
    else:
        print('Thank you for using this application')





    
    
    
    

