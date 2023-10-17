
def playgame(computer_choice, player_choice):

    if (computer_choice == 0) and (player_choice == 1):
        return "You win!"
    elif (computer_choice == 1) and (player_choice == 2):
        return "You win!"
    elif (computer_choice == 2) and (player_choice == 0):
        return "You win!"
    elif computer_choice == player_choice:
        return "Draw"
    else:
        return "You lose!"


