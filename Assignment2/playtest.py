import random
import game


choice = input("What do you choose? Type '0' for Rock, '1' for Paper, '2' for Scissors\n")
game_image = ['rock', 'paper', 'scissors']

player_choice = int(choice)
print(game_image[player_choice])
computer_choice = random.randint(0, 2)
print("computer choice:")
print(computer_choice)
print(game_image[computer_choice])

result = game.playgame(computer_choice, player_choice)

print(result)