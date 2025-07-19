Algoritmo calcularCostos
	
	//Definimos costos asociados a los posibles destino, considerando envíos a las distintas regiones de Chile
	Definir region Como Entero
	Dimensionar region[16]
	region[1] <- 4000 //metropolitana
	region[2] <- 7000 //arica
	region[3] <- 7000 //tarapaca
	region[4] <- 7000 //antofagasta
	region[5] <- 6000 //atacama
	region[6] <- 5000 //coquimbo
	region[7] <- 5000 //valparaiso
	region[8] <- 5000 //rancagua
	region[9] <- 5000 //maule
	region[10] <- 5000 //biobio
	region[11] <- 5000 //nuble
	region[12] <- 6000 //araucania
	region[13] <- 6000 //rios
	region[14] <- 6000 //lagos
	region[15] <- 9000 //aysen
	region[16] <- 10000 //magallanes
	
	//Definimos costo por kilogramo según rango de pesos (mayor a 50 no se realizan envíos)
	Definir cobroPeso Como Entero
	Dimensionar cobroPeso[5]
	cobroPeso[1] <- 0 //menos de 5
	cobroPeso[2] <- 500 //entre5y10
	cobroPeso[3] <- 750 //entre10y20
	cobroPeso[4] <- 1000 //entre20y50
	cobroPeso[5] <- 2000 //mas de 50
	
	//Descuentos por cupones
	Definir cupon Como Real
	Dimensionar cupon[4]
	cupon[1] <- 0.1
	cupon[2] <- 0.2
	cupon[3] <- 0.3
	cupon[4] <- 0
	
	//Descuentos por cantidad
	Definir desCantidad Como Real
	Dimensionar desCantidad[5]
	desCantidad[1] <- 0 //menos de 5
	desCantidad[2] <- 0.05 //entre5y10
	desCantidad[3] <- 0.1 //entre10y20
	desCantidad[4] <- 0.15 //entre20y50
	desCantidad[5] <- 0.2 //masde50
	
	//Definir IVA
	Definir IVA Como Real
	IVA <- 0.19
	
	//Definir variables varias
	Definir precio, cantProducto, numCupon, numOpcion, idCantProducto, idPesoProducto, idRegion, aux, aux1, aux2 Como Entero
	Definir pesoUnitarioProducto, pesoProducto Como Real
	Definir nombreProducto Como Caracter
	numCupon <- 0
	aux <- 0
	aux1 <- 0
	aux2 <- 0
	
	Escribir "Ingrese nombre del producto"
	Leer nombreProducto
	
	Escribir "Ingrese precio del producto"
	Leer precio
	
	Escribir "¿Qué cantidad del producto desea llevar?"
	Leer cantProducto
	
	//Identificamos el descuento asociado a la cantidad
	Si cantProducto >= 50
		idCantProducto <- 5
	SiNo
		Si cantProducto >= 20 & cantProducto < 50
			idCantProducto <- 4
		SiNo
			Si cantProducto >= 10 & cantProducto < 20
				idCantProducto <- 3
			SiNo
				Si cantProducto >= 5 & cantProducto < 10
					idCantProducto <- 2
				SiNo
					idCantProducto <- 1
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	Escribir "Ingresa en Kg el peso unitario del producto (esto se multiplicará por la cantidad)"
	Leer pesoUnitarioProducto
	
	pesoProducto <- pesoUnitarioProducto * cantProducto
	
	//Identificamos el costo asociado al peso
	Si pesoProducto >= 50
		idPesoProducto <- 5
	SiNo
		Si pesoProducto >= 20 & pesoProducto < 50
			idPesoProducto <- 4
		SiNo
			Si pesoProducto >= 10 & pesoProducto < 20
				idPesoProducto <- 3
			SiNo
				Si pesoProducto >= 5 & pesoProducto < 10
					idPesoProducto <- 2
				SiNo
					idPesoProducto <- 1
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	//Loop que me permite determinar el lugar de envío
	Mientras aux2 = 0 Hacer
		Escribir "Escribir número según corresponda a la región de envío"
		Escribir "1. Metropolitana		||		2. Arica"
		Escribir "3. Tarapacá		||		4. Antofagasta"
		Escribir "5. Atacama		||		6. Coquimbo"
		Escribir "7. Valparaíso		||		8. Rancagua"
		Escribir "9. Maule		||		10. Biobío"
		Escribir "11. Ñuble		||		12. Araucanía"
		Escribir "13. Región de los ríos		||		14. Región de los lagos"
		Escribir "15. Aysén		||		16. Magallanes"
		Leer idRegion
		
		Si idRegion < 1 o idRegion > 16
			Escribir "Esa opción no existe, favor ingresar una opción válida"
		SiNo
			aux2 <- -1 //Salir del loop
		FinSi
	FinMientras
	
	
	
	//Loop que permite determinar el descuento asociado en relación al cupón
	Mientras aux = 0 Hacer
		Escribir "¿Tienes un cupón de descuento?"
		Escribir "Escribir número según corresponda"
		Escribir "1 = Si			2 = No"
		Leer numOpcion
		
		Si numOpcion = 2
			Escribir "Procederemos al cálculo sin cupón de descuento"
			numCupon <- 4
			aux <- -1 //con esto nos aseguramos de salir del loop
		SiNo
			Si numOpcion = 1
				aux <- -1 //con esto nos aseguramos de salir del loop
				//Con el loop que viene a continuación, determinamos el tipo de cupón que está ingresando
				Mientras aux1 = 0 Hacer
					Escribir "Escribir número según corresponda el cupón de descuento"
					Escribir "1 = 10% de descuento 	2 = 20% de descuento 	3 = 30% de descuento"
					Leer numCupon
					
					Si numCupon <> 1 & numCupon <> 2 & numCupon <> 3
						Escribir "Esa opción no existe, favor ingresar una opción válida"
					SiNo
						aux1 = -1 //se sale del loop
					FinSi
				Fin Mientras
				
			SiNo
				Escribir "Esa opción no existe, favor ingresar una opción válida"
			FinSi
		FinSi
	Fin Mientras
	
	
	
	Escribir numCupon
	
	
FinAlgoritmo

