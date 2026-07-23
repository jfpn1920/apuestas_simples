Algoritmo apuestas_simples
	Definir opcion, totalApuestas Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir suma, promedio, mayorValor, menorValor Como Real
	Definir ganadas, perdidas Como Entero
	Dimension id[100]
	Dimension jugador[100]
	Dimension juego[100]
	Dimension numero[100]
	Dimension valor[100]
	Dimension fecha[100]
	Dimension estado[100]
	totalApuestas <- 0
	//-------------------------------------//
	//--|menu_principal_apuestas_simples|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal apuestas simples"
		Escribir "1) registrar apuesta"
		Escribir "2) editar apuesta"
		Escribir "3) eliminar apuesta"
		Escribir "4) buscar apuesta"
		Escribir "5) listar apuestas"
		Escribir "6) ver detalles de la apuesta"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_apuesta|--//
			//-----------------------//
			1:
				Si totalApuestas < 100 Entonces
					totalApuestas <- totalApuestas + 1
					id[totalApuestas] <- totalApuestas
					Escribir "ingrese el nombre del jugador:"
					Leer jugador[totalApuestas]
					Escribir "ingrese el juego:"
					Leer juego[totalApuestas]
					Escribir "ingrese el numero apostado:"
					Leer numero[totalApuestas]
					Escribir "ingrese el valor apostado:"
					Leer valor[totalApuestas]
					Escribir "ingrese la fecha:"
					Leer fecha[totalApuestas]
					Escribir "ingrese el estado (ganada/perdida):"
					Leer estado[totalApuestas]
					Escribir "apuesta registrada correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas apuestas."
				FinSi
			//--------------------//
			//--|editar_apuesta|--//
			//--------------------//
			2:
				Escribir "editar apuesta"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalApuestas Hacer
						Escribir id[i], " | ", jugador[i], " | ", juego[i], " | ", numero[i], " | ", valor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la apuesta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalApuestas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo jugador:"
							Leer jugador[i]
							Escribir "ingrese el nuevo juego:"
							Leer juego[i]
							Escribir "ingrese el nuevo numero:"
							Leer numero[i]
							Escribir "ingrese el nuevo valor:"
							Leer valor[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo estado (ganada/perdida):"
							Leer estado[i]
							Escribir "apuesta editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una apuesta con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_apuesta|--//
			//----------------------//
			3:
				Escribir "eliminar apuesta"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalApuestas Hacer
						Escribir id[i], " | ", jugador[i], " | ", juego[i], " | ", numero[i], " | ", valor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la apuesta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalApuestas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalApuestas Entonces
								Para j <- i Hasta totalApuestas - 1 Hacer
									id[j] <- id[j+1]
									jugador[j] <- jugador[j+1]
									juego[j] <- juego[j+1]
									numero[j] <- numero[j+1]
									valor[j] <- valor[j+1]
									fecha[j] <- fecha[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalApuestas <- totalApuestas - 1
							Escribir "apuesta eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una apuesta con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_apuesta|--//
			//--------------------//
			4:
				Escribir "buscar apuesta"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					Escribir "ingrese el id de la apuesta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalApuestas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", jugador[i], " | ", juego[i], " | ", numero[i], " | ", valor[i], " | ", fecha[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una apuesta con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_apuestas|--//
			//---------------------//
			5:
				Escribir "listar apuestas"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalApuestas Hacer
						Escribir id[i], " | ", jugador[i], " | ", juego[i], " | ", numero[i], " | ", valor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_apuesta|--//
			//--------------------------//
			6:
				Escribir "ver detalles de la apuesta"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					Escribir "ingrese el id de la apuesta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalApuestas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la apuesta"
							Escribir "id: ", id[i]
							Escribir "jugador: ", jugador[i]
							Escribir "juego: ", juego[i]
							Escribir "numero: ", numero[i]
							Escribir "valor: ", valor[i]
							Escribir "fecha: ", fecha[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una apuesta con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalApuestas = 0 Entonces
					Escribir "no hay apuestas registradas."
				SiNo
					suma <- 0
					mayorValor <- valor[1]
					menorValor <- valor[1]
					ganadas <- 0
					perdidas <- 0
					Para i <- 1 Hasta totalApuestas Hacer
						suma <- suma + valor[i]
						Si valor[i] > mayorValor Entonces
							mayorValor <- valor[i]
						FinSi
						Si valor[i] < menorValor Entonces
							menorValor <- valor[i]
						FinSi
						Si estado[i] = "ganada" Entonces
							ganadas <- ganadas + 1
						SiNo
							Si estado[i] = "perdida" Entonces
								perdidas <- perdidas + 1
							FinSi
						FinSi
					FinPara
					promedio <- suma / totalApuestas
					Escribir "estadistica general"
					Escribir "total de apuestas: ", totalApuestas
					Escribir "valor total apostado: ", suma
					Escribir "promedio apostado: ", promedio
					Escribir "apuesta mayor: ", mayorValor
					Escribir "apuesta menor: ", menorValor
					Escribir "apuestas ganadas: ", ganadas
					Escribir "apuestas perdidas: ", perdidas
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar apuestas simples."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo