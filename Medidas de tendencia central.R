#**Maestría en Ciencias Forestales**
#*Medidas de tendencia central
#*
#*Yadira Abigail Martínez Hernández
#*   1672205
#*   
#**Problemas**
#*Problema 1

#Considere los siguientes datos de x & y

xi <- c(6,4,1,3)

yi <- c(1,3,4,2)

sum(xi)
prod(xi)

sum(yi)
prod(yi)

sum(xi*yi)

prod(xi*yi)

prod(xi^2,yi^0.5)

#*Problema 2

# Se enuncian dos conjuntos de datos que contienen las alturas de plántulas (cm) 
# producidadas en vivero. El primer conjunto contiene 4 alturas y el segundo consta de 15.

Grupo_A <- c(80,90,90,100)

Grupo_B <- c(60,65,65,70,70,70,75,75,80,80,80,80,80,85,100)

#Sin realizar ningun calculo, cual grupo piensa que tiene una altura mayor.
## Respuesta: Grupo_A

#Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en 
#alturas más grande?
#Coinside con su primera impresión?

## Respuesta: si coinsiden

mean(Grupo_A)
mean(Grupo_B)

#*Problema 3
#José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica 
#en una escala de 0 a 100. Sus tres primeros exámenes son de 87, 72,85. 
#¿Qué necesita José para calificar en el 4to. examen para tener una media de 80 en los 4 exámenes?

exámenes <- c(87,72,85)
sum(exámenes)
4*80
(4*80)-(sum(exámenes))

#Comprobación 

calificaciones <- c(87,72,85,76)
mean(calificaciones)

#*Problema 4

#El comité escolar de una pequeña ciudad quiere determinar el número promedio de 
#niños por hogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el 
#número total de niños en la ciudad por 50 y determina que el número promedio 
#de niños por hogar es de 2.2. ¿Cuál de los siguientes enunciados es verdad?

#a) La mitad de los hogares de la ciudad tienen mas de 2 hijos.
#b) Hay un total de 110 niños en la ciudad.
#c) El número más común de niños en un hogar es de 2.2
#d) Ninguna de las anteriores

(2.2*50)

## Respuesta: el inciso b es el correcto hay 110 niños en la ciudad.

#* Problema 5

# El número de semillas germinadas (Germinaciones) que se encontraron en cajas petri

Germinaciones <- c(5,6,7,8,9)

Cajas_petri <- c(1,3,5,3,1)

Semillas_G <- data.frame(Cajas_petri,Germinaciones)

mean(Semillas_G$Cajas_petri)
median(Semillas_G$Cajas_petri)
sum(Semillas_G$Cajas_petri)
barplot(Cajas_petri)
barplot(Germinaciones)

#a) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?
## Respuesta: barplot

#b) ¿Cuál es la media? 
## Respuesta: 2.6 (se realizo con la función mean en R)

#c) ¿Cuál es la mediana?
## Respuesta: 3  (se realizo con la función median en R)

#* Problema 6

#En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 
#1) sumar elmismo número a cada valor de datos, y 
#2) de multiplicar cada valor de datos por el mismonúmero.

set <- c(2, 2, 3, 6, 10)

#a) Calcule la moda, la mediana y la media.
## Respuesta: 
# Mediana

median(set)

# Media

mean(set)

#Moda 

getmoda(set)

#b)Suma5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media.
## Respuesta:
set5 <- (set+5)
#Moda
getmoda(set5)

#Media

mean(set5)

#Mediana
median(set5)

#c)Compare los resultados de las partes (a) y (b). 
#En general, ¿cómo crees quela moda, lamediana y la media se ven afectadas cuando se agrega la misma constante a cada valorde datos en un conjunto?
## Respuesta: solo se incrementa el resultado más no se ven afectada en sí.

#d)Multiplique cada valor de los datos por 5. Calcule la moda, la mediana y la media.
setx5 <- (set*5)
## Respuesta:

#Mediana

median(setx5)

#Media

mean(setx5)

#Moda
getmoda(setx5)

#e)Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda,La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto semultiplica por la misma constante?
##Respuesta se incrementa el resultado.

#* Problema 7

#Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

#a)Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). 
#Encontrar un conjunto diferente de 5 dígitos que tambien funcionen.

digitos <- c(0,1,2,3,4,5,6,7,8)

median(digitos)

digitos1 <- c(5,6,7,8,9)
median(digitos1)
mean(digitos1)

#b)Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones). 
#Da la media de tus 5 dígitos.
#Encuentra un conjunto diferente de 5 digitos que funcione

digitos2 <- c(1,2,7,8,9)
median(digitos2)
mean(digitos2)

digitios3 <- c(5,5,7,8,9)
mean(digitios3)
median(digitios3)

# Crear la función getmode.
getmoda <-function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
