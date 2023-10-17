import unittest
import Fizz

class MyFizzBuzzTest(unittest.TestCase):
    def test_for_Fizz(self):
        #Arrange
        value = int(3)

        #Act
        result = Fizz.Outcome(value)

        #Assert
        self.assertEqual(result, "Fizz")

    def test_for_Buzz(self):
        #Arrange
        value = int(10)

        #Act
        result = Fizz.Outcome(value)

        #Assert
        self.assertEqual(result, "Buzz")

    def test_for_FizzBuzz(self):
        #Arrange
        value = int(30)

        #Act
        result = Fizz.Outcome(value)

        #Assert
        self.assertEqual(result, "FizzBuzz")

    def test_for_fizz(self):
        #Arrange
        value = int(1)

        #Act
        result = Fizz.Outcome(value)

        #Assert
        self.assertEqual(result, value)            





if (__name__=="__main__"):
    unittest.main()