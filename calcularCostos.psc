Algoritmo calcularCostos
	
	//Definimos costos asociados a los posibles destino, considerando envíos a las distintas regiones de Chile
	Definir metropolitana, arica, tarapaca, antofagasta, atacama, coquimbo, valparaiso, rancagua, maule, biobio, nuble, araucania, rios, lagos, aysen, magallanes Como Entero
	metropolitana <- 4000
	arica <- 7000
	tarapaca <- 7000
	antofagasta <- 7000
	atacama <- 6000
	coquimbo <- 5000
	valparaiso <- 5000
	rancagua <- 5000
	maule <- 5000
	biobio <- 5000
	nuble <- 5000
	araucania <- 6000
	rios <- 6000
	lagos <- 6000
	aysen <- 9000
	magallanes <- 10000
	
	//Definimos costo por kilogramo según rango de pesos (mayor a 50 no se realizan envíos)
	Definir kgMenor5, kgEntre5y10, kgEntre10y20, kgEntre20y50 Como Entero
	kgMenor5 <- 0
	kgEntre5y10 <- 500
	kgEntre10y20 <- 750
	kgEntre20y50 <- 1000
	
	//Descuentos por cupones
	Definir cupon10, cupon20, cupon30 Como Real
	cupon10 <- 0.1
	cupon20 <- 0.2
	cupon30 <- 0.3
	
	//Descuentos por cantidad
	Definir cantEntre5y10, cantEntre10y20, cantEntre20y50, cantMas50 Como Real
	cantEntre5y10 <- 0.05
	cantEntre10y20 <- 0.1
	cantEntre20y50 <- 0.15
	cantMas50 <- 0.2
	
	//Definir IVA
	Definir IVA Como Real
	IVA <- 0.19
	
FinAlgoritmo
