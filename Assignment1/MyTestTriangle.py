import unittest
import Triangle

class MyTestTriangle(unittest.TestCase):
    def test_for_three_sides(self):
        #Arrange
        value1 = 20
        value2 = 20
        value3 = 20

        #Act
        result = Triangle.TriangleSides(value1, value2, value3)
        
        expectedResult = "Equilateral Triangle"

        #Assert
        self.assertEqual(result, expectedResult)


    def test_for_two_sides(self):
        #Arrange
        value1 = 10
        value2 = 20
        value3 = 20

        #Act
        result = Triangle.TriangleSides(value1, value2, value3)

        expectedResult = "Isosceles Triangle"

        #Assert
        self.assertEqual(result, expectedResult)  

    def test_for_irregular_sides(self):
        #Arrange
        value1 = 10
        value2 = 20
        value3 = 30

        #Act
        result = Triangle.TriangleSides(value1, value2, value3)

        expectedResult = "Irregular Triangle"

        #Assert
        self.assertEqual(result, expectedResult) 


    def test_for_invalid_input(self):

        #Arrange

        value1 = "%"
        value2 = 20
        value3 = 30


        #Act

        result = Triangle.TriangleSides(value1, value2, value3)

        expectedResult = "Irregular Triangle"


        #Asssert     

        self.assertEqual(result, expectedResult)  


    def test_for_all_sides(self):
        #Arrange
        value1 = 100
        value2 = 100
        value3 = 100

        # Act

        result = Triangle.TriangleSides(value1, value2, value3)

        expectedResult= "Equilateral Triangle"

        # Assert      

        self.assertEqual(result, expectedResult)

    
if (__name__=="__main__"):
    unittest.main()    