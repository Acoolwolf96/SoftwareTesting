def TriangleSides(value1, value2, value3):
    if value1 == value2 == value3:
        return "Equilateral Triangle"
    
    if value1 == value2 or value1 == value3 or value2 == value3:
        return "Isosceles Triangle"
    else:
        return "Irregular Triangle"