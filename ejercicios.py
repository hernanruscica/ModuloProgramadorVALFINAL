"""
Ejercicio 1:
Crear una lista en Python denominada “Dueno” que contenga los siguientes valores: 28957346,  Juan,  Perez, 4789689,  Belgrano 101    
Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). 
Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
"""
#variables
dueno = [28957346,  'Juan',  'Perez', 4789689,  'Belgrano 101']
dueno_dni = dueno[0]
dueno_telefono = dueno[3]
dni_limite_max = 26000000
#metodos
if dueno_dni > dni_limite_max :
  print(dueno_telefono)

"""
Ejercicio 2: 
Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. 
Los elementos de la lista son:  23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 
"""
#variables
dueno2 = [23546987,  'Maria',  'Perez', 4789689,  'Pueyrredon  811']
lista_longitud = len(dueno2)
indices_ignorados = [0, 2]
#metodos
for indice in range(lista_longitud):
  if indice in indices_ignorados:
    continue
  print(dueno2[indice])

"""
Ejercicio 3:
Crear un lista en Python denominado “Perro” que contenga los siguientes valores: 13,  Puppy,  12/12/2012 , Macho, 123
Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 
Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .
"""
#variables
perro = [13,  'Puppy',  '12/12/2012' , 'Macho', 123]
indice_fecha = 2
indice_dni = 4
nueva_fecha= '13/12/2012'
nuevo_dni_dueno = 28957346
#metodos
print('datos originales: ', perro)
perro[indice_fecha] = nueva_fecha
print('con nueva fecha: ', perro)
perro[indice_dni] = nuevo_dni_dueno
print('con nuevo DNI', perro)

"""
Ejercicio 4
Crear un lista en Python denominado “Perro2” que contenga los siguientes valores: 14,  Fido,  12/12/2012 , Macho, 23546987
Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
"""

#variables
perro2 = [14,  'Fido',  '12/12/2012' , 'Macho', 23546987]
lista_longitud = len(perro2)
lista_ultimo_indice = lista_longitud - 1
incremento = -1
#metodos
for indice in range(lista_ultimo_indice, -1, incremento):
  print(perro2[indice])

"""
Ejercicio 5:
Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores: 2350, 5960, 23000, 1000, 8900
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. 
Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. 
Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.
"""

#variables
historial = (2350, 5960, 23000, 1000, 8900)
sumador = 0
#metodos
for elemento in historial:
  sumador += elemento
monto_total_gastado = sumador
print(monto_total_gastado)

"""
Ejercicio 6:
Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores: 23500, 5960, 2300, 10200, 8900
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. 
Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. 
Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.
"""

#variables
historial2 = (23500, 5960, 2300, 10200, 8900)
gasto_mayor_limite = 5000
contador_gastos_mayores = 0
#metodos
for elemento in historial2:
  if elemento > gasto_mayor_limite :
    contador_gastos_mayores += 1
print('historial2: ', historial2)
print('Cantidad de gastos mayores a '+ str(gasto_mayor_limite) + ' : ' + str(contador_gastos_mayores))

"""
Ejercicio 7:
Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores: 9530, 4120, 4580, 1500, 890,7516,426
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”. 
Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. 
Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.
"""

#variables
historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
promedio_mayor_limite = 4500
gastos_contador = 0
gastos_promedio = 0
gastos_cantidad = len(historial3)
#metodos
for elemento in historial3:
  gastos_contador += elemento  

gastos_promedio = gastos_contador / gastos_cantidad
print('Gasto promedio maximo: ', promedio_mayor_limite)
print('Gasto promedio: ', round(gastos_promedio, 2))

if gastos_promedio > promedio_mayor_limite :
  print('Se ha excedido del gasto promedio para su mascota')

"""
Ejercicio 8:
Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores: 7510, 7960, 76180, 800, 4100
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. 
Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.
"""

#variables
historial4 = (7510, 7960, 76180, 800, 4100)
valor_minimo = 1000000000
#metodos
for elemento in historial4 :
  if elemento < valor_minimo :
    valor_minimo = elemento
print('Todos los gastos sobre Olivia: ', historial4)
print('El valor minimo gastado en Olivia, fue de : $', valor_minimo);

"""
Ejercicio 9:
Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores: 8520, 9510, 7530, 3570, 1590
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. 
Crear una función para determinar el valor máximo de atención gastada en “Toto”.
"""

#variables
historial5 = [8520, 9510, 7530, 3570, 1590]
valor_maximo = 2000
#metodos y funciones
def buscarMaximoValor(valores):
  maximo = 0
  for valor in valores:
    if valor > maximo :
      maximo = valor
  return maximo
valor_maximo = buscarMaximoValor(historial5)
print('El valor maximo gastado en Toto fue de :', str(valor_maximo))

"""
Ejercicio 10:
Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros: Juan,  Mario,  Ariel,  Josefina,  Marianella.
Ordenarla alfabéticamente y mostrarla por pantalla.
"""

#variables
clientes = ['Juan',  'Mario',  'Ariel',  'Josefina',  'Marianella']
clientes.sort()
#métodos y funciones
print(clientes)
