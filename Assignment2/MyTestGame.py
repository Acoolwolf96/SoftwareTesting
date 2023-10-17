import unittest
from game import playgame


class TestRockPaperScissors(unittest.TestCase):
    def test_rock_vs_paper(self):
        #Arrange
        computer_choice = 0 #Rock
        player_choice = 1 #Paper

        #Act
        result = playgame(computer_choice, player_choice)

        expectedResult = "You win!"


        #Assert
        self.assertEqual(result, expectedResult)

    def test_paper_vs_scissors(self):
        #Arrange
        computer_choice = 1 #Paper
        player_choice = 2 #Scissors

        #Act
        result = playgame(computer_choice, player_choice)

        expectedResult = "You win!"


        #Assert
        self.assertEqual(result, expectedResult)


    def test_scissors_vs_rock(self):
        #Arrange
        computer_choice = 2 #Scissors
        player_choice = 0 #Rock

        #Act
        result = playgame(computer_choice, player_choice)

        expectedResult = "You win!"


        #Assert
        self.assertEqual(result, expectedResult) 


    def test_rock_vs_scissors(self):
        #Arrange
        computer_choice = 0 #Scissors
        player_choice = 2 #Rock

        #Act
        result = playgame(computer_choice, player_choice)

        expectedResult = "You lose!"


        #Assert
        self.assertEqual(result, expectedResult)           

    def test_for_draw(self):
        #Arrange
        computer_choice = 1
        player_choice = 1

        #Act
        result = playgame(computer_choice, player_choice)

        expectedResult = "Draw"


        #Assert
        self.assertEqual(result, expectedResult)   







if (__name__=="__main__"):
    unittest.main()