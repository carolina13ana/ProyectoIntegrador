"""
2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:

    23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)
"""

# Declarar variables

dueno = [23546987, "Maria", "Perez", 4789689, "Pueyrredon  811"]

# Ejercicio 2

# Omitir dni y apellido

print("=" * 100)

for x in range(len(dueno)):
    if x == 1:
        print("Nombre de dueño:", end=" ")
    elif x == 3:
        print("Nro de telefono: ", end=" ")
    elif x == 4:
        print("Calle y Altura:", end=" ")

    if x != 0 and x != 2:
        print(dueno[x])
        print("=" * 100)
