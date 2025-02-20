from ast import If, match_case
from builtins import print

prompt1 = """
choose what kind of operation you want to perform:
    1 = addition
    2 = substraction
    3 = multiplication
    4 = division
    """
prompt_error1 = """error valor ingresado no es valido,
        porfavor ingresar numero entre el 1 - 4
        """


def user_input1(prompt1, prompt_error1):
    first_selection = input(prompt1)
    try:
        if 1 <= int(first_selection) <= 4:
            return first_selection
        else:
            print(prompt_error1)
    except ValueError:
        print("mal ahi maricon")
    print("aca termina la funcion xd")


user_input1(prompt1, prompt_error1)

print("termino!")
