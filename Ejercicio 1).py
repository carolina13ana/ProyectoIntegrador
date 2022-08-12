Dueno=[28957346,'Juan','Perez',4789689,'Belgrano 101']

dni=int(input("¿Cuál es tu DNI?: "))
while dni < 26E6:
  print("lo siento, vuelve a intentarlo")
  dni=int(input("¿Cuál es tu DNI?: "))
  
print("Su número de teléfono es:", Dueno[3])

