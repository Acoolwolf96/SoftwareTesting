import unittest
import VerifyAge


class myage(unittest.TestCase):
    def test_ForChild_And_CheckResponse(self):
        #Arrange
        a = int(10)

        #Act
        result= VerifyAge.verify(a)
        #Assert
        self.assertEqual(result, 'You are a Child')


    def test_ForAdult_And_CheckResponse(self):
        #Arrange
        a = int(20)

        #Act
        result= VerifyAge.verify(a)
        #Assert
        self.assertEqual(result, 'You are an Adult')
    
    
    def test_ForPensioner_And_CheckResponse(self):
        #Arrange
        a = int(70)
        #Act
        result= VerifyAge.verify(a)
        #Assert
        self.assertEqual(result, 'You are a Pensioner')    
        
            
if (__name__=="__main__"):
    unittest.main()