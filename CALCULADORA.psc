//Se necesita desarrollar una calculadora que calcule multiplicaciones en 3
//dimensiones. La calculadora será una matriz de 3 dimensiones. En la misma se
//multiplicarán los números de la capa 0 y la capa 1 que tengan igual posición,
//alojando el resultado en la capa 2.
//El siguiente gráfico muestra un ejemplo: la posición central de la capa 0 (5) y el
//	central de la capa 1 (5) da como resultado 25 en la capa 2.
//Requerimientos:
//	? La matriz calculadora será de tipo Entero, de dimensión 3 en cada lado.
//	? La capa 0 debe ser llenada a partir de una cadena de texto alojado en
//	una variable.   OK///////////////////////
//	? La capa 1 debe ser llenada a partir de una cadena de texto alojado en
//	una variable.  OK//////////////////////////
//	? La capa 2 debe ser llenada multiplicando los valores. OK////////////
//	? Se declararán 2 variables correspondientes a diagonales 3D que serán
//	compuestas de la multiplicación de coordenadas dadas.
//	? Se debe mostrar el resultado de las diagonales por consola.

//Subprogramas requeridos
//1. llenarMatriz_Z0(matriz, cadena)
//Recibe una matriz y la llena con los valores de la cadena separados y
//convertidos a números. Pista: tendremos que utilizar un contador auxiliar
//	para asignar los valores. OK///////////////////////////////
//		2. llenarMatriz_Z1(matriz, cadena)
//		Recibe una matriz y la llena conlos valores de la cadena separados y
//	convertidos a números. Pista: tendremos que utilizar un contador auxiliar
//		para asignar los valores.  ok///////////////////
//			3. llenarMatriz_Z2(matriz) 
//			Llena los valores multiplicando los elementos de las otras capas que
//			estén en la misma posición. OK ////////////////////
//			4. 
//			Inicializa la matriz con algún valor genérico en todas sus posiciones, por
//			ejemplo con el número 0.  OK///////////////////////
//			5. imprimirMatriz(matriz)
//			Muestra por pantalla la matriz. Se mostrará la capa 0, debajo la capa 1 y
//			luego la capa 2.

Algoritmo sin_titulo
	Definir matriz,h,i,j,cont,varA,varB Como Entero
	Definir capa0,capa1 Como Caracter
	capa0="123456789"
	capa1="453671298"
	Dimension matriz(3,3,3)
	inicializarMatriz(matriz)
	llenarMatriz_Z0(matriz, capa0)
	llenarMatriz_Z1(matriz, capa1)
	llenarMatriz_Z2(matriz)
	imprimirMatriz(matriz)
					varA=matriz(0,0,0)*matriz(1,1,1)*matriz(2,2,2)
					varB=matriz(0,0,2)*matriz(1,1,1)*matriz(2,2,0)
	para h=0 Hasta 2 Hacer
		para i=0 Hasta 2 Hacer
			para j=0 Hasta 2 Hacer
				escribir sin saltar "[ ",matriz(h,i,j)," ]"
			FinPara
			Escribir ""
		FinPara
		escribir "AAAAAAAAA"
    FinPara
	
Escribir "varA","[ ",varA," ]"
Escribir ""
escribir" varB","[ ",varB," ]"
FinAlgoritmo

SubProceso inicializarMatriz(matriz)
	Definir i,j Como Entero
		para i=0 Hasta 2 Hacer
			para j=0 Hasta 2 Hacer
				matriz(2,i,j)=0
			FinPara
		FinPara
FinSubProceso


subproceso llenarMatriz_Z0(matriz, capa0)
	Definir cont,i,j Como Entero
	cont=0
	para i=0 Hasta 2 Hacer
		para j=0 Hasta 2 Hacer
			matriz(0,i,j)=ConvertirANumero(Subcadena(capa0,cont,cont))
			cont=cont+1
		FinPara
	FinPara
FinSubProceso

SubProceso llenarMatriz_Z1(matriz, capa1)
	Definir cont,i,j Como Entero
	cont =0
	para i=0 Hasta 2 Hacer
		para j=0 Hasta 2 Hacer
			matriz(1,i,j)=ConvertirANumero(Subcadena(capa1,cont,cont))
			cont=cont+1
		FinPara
	FinPara
FinSubProceso

SubProceso llenarMatriz_Z2(matriz)
	Definir i,j Como Entero
	para i=0 Hasta 2 Hacer
		para j=0 Hasta 2 Hacer
			matriz(2,i,j)=matriz(0,i,j)*matriz(1,i,j)
		FinPara
	FinPara
FinSubProceso


