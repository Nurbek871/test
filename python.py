# 1) Евгения создала класс KgToPounds с параметром kg, куда передается определенное количество килограмм, а с помощью метода to_pounds() они переводятся в фунты. Чтобы закрыть доступ к переменной “kg” она реализовала методы set_kg() - для задания нового значения килограммов, get_kg()  - для вывода текущего значения кг. Из-за этого возникло неудобство: нам нужно теперь использовать эти 2 метода для задания и вывода значений. Помогите ей переделать класс с использованием функции property() и свойств-декораторов. Код приведен ниже.


# class KgToPounds:
#     def __init__(self, kg):
#         self.__kg = kg

#     def to_pounds(self):
#         return self.__kg * 2.205
   
#     @property
#     def kg(self):
#         return self.__kg
    
#     @kg.setter
#     def kg(self, new_kg):
#         if isinstance(new_kg, (int, float)):
#             self.__kg = new_kg
#         else:
#             raise ValueError('Килограммы задаются только числами')
 
 

# weight = KgToPounds(12)
# print(weight.to_pounds())
# print(weight.kg)
# weight.kg = 41
# print(weight.kg)
# weight.kg = 'десять'



# 2) Напишите класс Math. Используйте внутри класса магические методы __add__ и __sub__ для сложения и вычитания. После того вы все сделали, создайте экземпляр класса и выведите значения из класса

# class Math():
#     def __add__(self, a = 10, b = 10):
#         return a + b
#     def __sub__(self, a = 10, b = 10):
#         return a - b
    
# math = Math()
# print(math.__add__())
# print(math.__sub__())



# 3) Создайте класс Soda (для определения типа газированной воды), принимающий 1 аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду). В этом классе реализуйте метод show_my_drink(), выводящий на печать «Газировка и {ДОБАВКА}» в случае наличия добавки, а иначе отобразится следующая фраза: «Обычная газировка».


# class Soda:
#     def __init__(self, ingredient):
#         if isinstance(ingredient, str):
#             self.ingredient = ingredient
#         else:
#             self.ingredient = None

#     def show_my_drink(self):
#         if self.ingredient:
#             print(f'Газировка и {self.ingredient}')
#         else:
#             print('Обычная газировка')

 
# drink2 = Soda('малина')
# drink3 = Soda(5)
# drink2.show_my_drink()
# drink3.show_my_drink()



# 4) Напишите класс с использованием геттера и сеттера.



# class Student:
#         def __init__(self,name = "Vasya", groupNumber = "20_3_9", age = 18):
#            self.name = name
#            self.groupNumber = groupNumber
#            self.age = age

#         def getName(self):
#             return f"Name:{self.name}"

#         def getGroupNumber(self):
#             return f"Groupnumber:{self.groupNumber}"

#         def getAge(self):
#             return f"Age:{self.age}"

#         def setNameAge(self,name,age):
#             self.name = name 
#             self.age = age
          

#         def setGroupNumber(self,groupNumber):
#             self.groupNumber = groupNumber
#             return self.groupNumber

# student = Student()
# print(student.getAge())
# student.setNameAge("Ivan", 15)
# print(student.name)
# print(student.age)



# 5) Напишите класс с использованием Множественного Наследования. (С добавлением переопределенных методов и атрибутов к унаследованным моделям объекта)


# import string
# result = string.ascii_lowercase
# print(result)
# class Alphabet:
#     def __init__(self, lang, letter):
#         self.lang = lang
#         self.letter = letter
    
#     def print(self):
#         return self.letter

#     def letter_num(self):
#         return len(self.letter)

# class EngAlphabet(Alphabet):
    
#     _letter_num = 26

#     def __init__(self):
#         super().__init__('En',string.ascii_uppercase)

#     def is_en_letter(self,letter):
#         if letter.upper() in self.letter:
#             return f"Это буква есть в алфавите"
#         else:
#             return f"Такого нет"

#     def letter_num(self):
#         return EngAlphabet._letter_num

#     @staticmethod
#     def example():
#         print("Hello World")


# alphabet = EngAlphabet()
# print(alphabet.print())
# print(alphabet.letter_num())
# print(alphabet.is_en_letter("a"))
# print(alphabet.is_en_letter("й"))
# print(alphabet.example())