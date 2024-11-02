from random import randint

number1 = int(input('please enter the first number: '))
number2 = int(input('please enter the second number: '))

if(number2 < number1):
    print('Invalid input - shutting down...')
else:
    random_number = randint(number1, number2)
    print(random_number)


# go through the rest of chapter one's notes