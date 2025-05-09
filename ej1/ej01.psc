Proceso sin_titulo
	Definir encuestadores, encparcial, enctotal como Entero; //encuestados y personas 
	Definir bici,auto,moto,tp como Entero; //contadores 
	Definir biciinter, motointer, disbici,dismoto, pbici, pmoto como Real; //promedios intermedios 
	Definir bicifinal,autofinal,tpfinal como Real; //promedios finales
	Definir i,transporte como Entero; 
	
	encuestadores=0; 
	enctotal=0; 
	
	Escribir "Ingrese total de encuestadores"; 
	Leer encuestadores; 
	
	Para i=1 Hasta encuestadores con Paso 1 Hacer 
		bici=0;
		moto=0;
		auto=0;
		tp=0;
		biciinter=0;
		motointer=0;
		encparcial=0;
		
		Repetir 
			Escribir "Ingrese el numero del trasnsporte que usa: (0 corta)";
			Escribir "1:Bicicleta / 2:Motocicleta / 3: Automovil / 4:Transporte publico"; 
			Leer transporte; 
			
			Segun transporte Hacer
				1: bici = bici + 1;
					Escribir "Bicicleta";
					Escribir "Ingrese distancia: "; 
					leer disbici; 
					
				2: moto = moto + 1;
					Escribir "Motocicleta";
					Escribir "Ingrese distancia: "; 
					leer dismoto; 
					
				3: auto = auto + 1;
					
					
				4: tp = tp + 1; 
					
			FinSegun
			
			encparcial = encparcial + 1;
			//acumular distancias bici y moto 
			biciinter= biciinter + disbici; 
			motointer=motointer + dismoto;
			
		Hasta Que transporte = 0; 
		
		enctotal=enctotal + encparcial;
		
		//evitar division por 0 
		Si bici > 0 Entonces
			pbici= biciinter/bici; 
		SiNo
			pbici = 0;
		FinSi
		
		Si moto > 0 Entonces
			pmoto= motointer/moto; 
		SiNo
			pbici = 0;
		FinSi
		
		Escribir "Total encuestados: ", (encparcial-1); 
		Escribir "Cantidad de personas en Automovil: ",auto," Transporte publico: ",tp;  
		Escribir "Promedio Bicicleta: ", pbici; 
		Escribir "Promedio Motocicleta: ",pmoto; 
	FinPara
	
	//porcentaje final 
	bicifinal= (bici/encparcial)*100;
	autofinal= (auto/encparcial)*100;
	tpfinal= (tp/encparcial)*100;
	
	Escribir "//////////////////////";
	Escribir "Encuestados totales: ", (enctotal-1); 
	Escribir "Porcentajes de uso en Bici: %",trunc(bicifinal)," Auto: %",trunc(autofinal)," Transporte publico: %",trunc(tpfinal);
	
FinProceso
