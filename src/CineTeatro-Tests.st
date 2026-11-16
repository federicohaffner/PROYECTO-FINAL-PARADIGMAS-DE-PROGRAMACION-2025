<?xml version="1.0"?>

<st-source>
<time-stamp>Pruebas automaticas del paquete CineTeatro (VisualWorks 8.2, requiere el parcel SUnitToo)</time-stamp>


<component-created>
<name>CineTeatro-Tests</name> <type>package</type>
</component-created><!-- Package CineTeatro-Tests* -->


<class>
<name>CineTestCase</name>
<environment>Smalltalk</environment>
<super>SUnit.TestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>admin ultimoDni</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro-Tests</category>
<attributes>
<package>CineTeatro-Tests</package>
</attributes>
</class>

<comment>
<class-id>CineTestCase</class-id>
<body>Clase base de todas las pruebas. Antes de cada prueba (setUp) crea un AdministradorCine vacio que guarda en una carpeta temporal y con el reloj simulado en una fecha fija; al terminar (tearDown) borra la carpeta. Nunca usa la carpeta datosCine real. Tambien tiene metodos de ayuda para crear personas, socios, salas, obras y funciones en pocas lineas.</body>
</comment>

<class>
<name>UtilCineTest</name>
<environment>Smalltalk</environment>
<super>CineTestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro-Tests</category>
<attributes>
<package>CineTeatro-Tests</package>
</attributes>
</class>

<comment>
<class-id>UtilCineTest</class-id>
<body>Pruebas de UtilCine: conversion de textos a fechas, horas y numeros, y formatos de salida.</body>
</comment>

<methods>
<class-id>CineTestCase</class-id> <category>running</category>

<body package="CineTeatro-Tests" selector="setUp">setUp
	"Se ejecuta antes de cada prueba"
	ultimoDni := 20000000.
	self borrarCarpeta.
	admin := AdministradorCine enCarpeta: self carpeta.
	admin simularFecha: self hoy hora: (self hora: 10)</body>

<body package="CineTeatro-Tests" selector="tearDown">tearDown
	"Se ejecuta despues de cada prueba, haya pasado o no"
	self borrarCarpeta</body>

</methods>

<methods>
<class-id>CineTestCase</class-id> <category>carpeta temporal</category>

<body package="CineTeatro-Tests" selector="carpeta">carpeta
	"Carpeta donde guardan sus datos las pruebas (se crea y se borra sola)"
	^'pruebasCineTmp'</body>

<body package="CineTeatro-Tests" selector="borrarCarpeta">borrarCarpeta
	| dir |
	dir := self carpeta asFilename.
	dir exists ifFalse: [^self].
	dir directoryContents do: [:nombre | (dir construct: nombre) delete].
	dir delete</body>

<body package="CineTeatro-Tests" selector="releer">releer
	"Un administrador nuevo que lee de disco lo que guardo el de la prueba"
	| otro |
	otro := AdministradorCine enCarpeta: self carpeta.
	otro simularFecha: admin hoy hora: admin horaActual.
	^otro</body>

</methods>

<methods>
<class-id>CineTestCase</class-id> <category>fechas</category>

<body package="CineTeatro-Tests" selector="hoy">hoy
	"Fecha fija del reloj simulado: asi las pruebas no dependen del dia en que se corren"
	^Date newDay: 10 monthNumber: 6 year: 2030</body>

<body package="CineTeatro-Tests" selector="dia:">dia: n
	"Fecha a n dias de hoy (negativo = en el pasado)"
	^self hoy addDays: n</body>

<body package="CineTeatro-Tests" selector="hora:">hora: h
	^Time fromSeconds: h * 3600</body>

<body package="CineTeatro-Tests" selector="hora:minutos:">hora: h minutos: m
	^Time fromSeconds: h * 3600 + (m * 60)</body>

<body package="CineTeatro-Tests" selector="ponerReloj:hora:">ponerReloj: unaFecha hora: unaHora
	admin simularFecha: unaFecha hora: unaHora</body>

</methods>

<methods>
<class-id>CineTestCase</class-id> <category>datos de apoyo</category>

<body package="CineTeatro-Tests" selector="nuevoDni">nuevoDni
	"Un DNI distinto cada vez"
	ultimoDni := ultimoDni + 1.
	^ultimoDni printString</body>

<body package="CineTeatro-Tests" selector="persona:">persona: unNombre
	^admin
		altaPersonaNombre: unNombre
		dni: self nuevoDni
		fechaNacimiento: (Date newDay: 15 monthNumber: 8 year: 1990)
		sexo: 'F'
		domicilio: 'Calle 1'
		email: 'correo@mail.com'
		celular: '3442-000000'</body>

<body package="CineTeatro-Tests" selector="socio:">socio: unNombre
	"Crea la persona y la hace socia"
	^admin altaSocioPersona: (self persona: unNombre) id</body>

<body package="CineTeatro-Tests" selector="critico:">critico: unUsuario
	"Crea la persona y la registra como critico"
	^admin altaCriticoPersona: (self persona: 'Persona de ' , unUsuario) id usuario: unUsuario</body>

<body package="CineTeatro-Tests" selector="salaCine">salaCine
	"3 filas de 4 butacas (A1..C4), solo peliculas"
	^admin altaSalaNombre: 'Sala Cine' filas: 3 butacasPorFila: 4 permitePeliculas: true permiteTeatro: false</body>

<body package="CineTeatro-Tests" selector="salaTeatro">salaTeatro
	"2 filas de 5 butacas, solo teatro"
	^admin altaSalaNombre: 'Sala Teatro' filas: 2 butacasPorFila: 5 permitePeliculas: false permiteTeatro: true</body>

<body package="CineTeatro-Tests" selector="salaChica">salaChica
	"Una sola fila de 2 butacas (A1 y A2): sirve para agotar una funcion rapido"
	^admin altaSalaNombre: 'Sala Chica' filas: 1 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false</body>

<body package="CineTeatro-Tests" selector="pelicula:">pelicula: unTitulo
	"Pelicula de 100 minutos, en cartel, sin director"
	^admin altaPeliculaTitulo: unTitulo descripcion: 'Descripcion' duracion: 100 clasificacion: 'ATP' director: nil</body>

<body package="CineTeatro-Tests" selector="obraDeTeatro:">obraDeTeatro: unTitulo
	"Obra de teatro de 90 minutos, en cartel, sin director"
	^admin altaObraTeatroTitulo: unTitulo descripcion: 'Descripcion' duracion: 90 clasificacion: '+13' director: nil</body>

<body package="CineTeatro-Tests" selector="funcionDe:en:dia:hora:">funcionDe: unaObra en: unaSala dia: n hora: h
	"Funcion a n dias de hoy, a las h en punto, con entrada de $ 1000"
	^admin programarFuncionObra: unaObra id sala: unaSala id fecha: (self dia: n) hora: (self hora: h) precio: 1000</body>

</methods>

<methods>
<class-id>CineTestCase</class-id> <category>verificaciones</category>

<body package="CineTeatro-Tests" selector="deberiaFallar:">deberiaFallar: unBloque
	"El bloque tiene que terminar con un error de negocio (ErrorCine)"
	self should: unBloque raise: ErrorCine</body>

<body package="CineTeatro-Tests" selector="mensajeDeError:">mensajeDeError: unBloque
	"Ejecuta el bloque, que tiene que fallar con un ErrorCine, y devuelve el texto del error"
	^[unBloque value.
	self assert: false description: 'Se esperaba un ErrorCine y no hubo error'.
	nil]
		on: ErrorCine
		do: [:e | e return: e messageText]</body>

<body package="CineTeatro-Tests" selector="assert:contiene:">assert: unTexto contiene: unFragmento
	"Verifica que un texto incluya a otro (sin importar mayusculas)"
	self assert: ('*' , unFragmento , '*' match: unTexto) description: 'El texto no contiene: ' , unFragmento , '. Texto: ' , unTexto</body>

<body package="CineTeatro-Tests" selector="deny:contiene:">deny: unTexto contiene: unFragmento
	self deny: ('*' , unFragmento , '*' match: unTexto) description: 'El texto no deberia contener: ' , unFragmento</body>

</methods>

<methods>
<class-id>UtilCineTest</class-id> <category>fechas y horas</category>

<body package="CineTeatro-Tests" selector="testFechaDesdeTextoValido">testFechaDesdeTextoValido
	self assert: (UtilCine fechaDesde: '05/03/2031') equals: (Date newDay: 5 monthNumber: 3 year: 2031).
	self assert: (UtilCine fechaDesde: ' 5/3/2031 ') equals: (Date newDay: 5 monthNumber: 3 year: 2031).
	self assert: (UtilCine fechaDesde: '29/02/2028') equals: (Date newDay: 29 monthNumber: 2 year: 2028)</body>

<body package="CineTeatro-Tests" selector="testFechaDesdeTextoInvalido">testFechaDesdeTextoInvalido
	#('31/02/2030' '29/02/2030' '15/13/2030' '0/5/2030' 'hola' '10/06' '10-06-2030' '10/06/2030/1' 'a/b/c')
		do: [:texto | self deberiaFallar: [UtilCine fechaDesde: texto]]</body>

<body package="CineTeatro-Tests" selector="testHoraDesde">testHoraDesde
	self assert: (UtilCine horaDesde: '21:30') equals: (self hora: 21 minutos: 30).
	self assert: (UtilCine horaDesde: '9:5') equals: (self hora: 9 minutos: 5).
	self assert: (UtilCine horaDesde: '00:00') equals: (self hora: 0).
	#('24:00' '10:60' '10' '10:30:00' 'x:y') do: [:texto | self deberiaFallar: [UtilCine horaDesde: texto]]</body>

<body package="CineTeatro-Tests" selector="testTextoFechaYHora">testTextoFechaYHora
	self assert: (UtilCine textoFecha: (Date newDay: 5 monthNumber: 3 year: 2031)) equals: '05/03/2031'.
	self assert: (UtilCine textoHora: (self hora: 9 minutos: 5)) equals: '09:05'.
	self assert: (UtilCine textoFecha: nil) equals: '-'.
	self assert: (UtilCine textoHora: nil) equals: '-'</body>

<body package="CineTeatro-Tests" selector="testSegundosDeFechaYHora">testSegundosDeFechaYHora
	"Un dia despues a la misma hora son 86400 segundos mas"
	| a b |
	a := UtilCine segundosDe: self hoy hora: (self hora: 20).
	b := UtilCine segundosDe: (self dia: 1) hora: (self hora: 20).
	self assert: b - a equals: 86400.
	self assert: (UtilCine segundosDe: self hoy hora: (self hora: 21)) - a equals: 3600</body>

</methods>

<methods>
<class-id>UtilCineTest</class-id> <category>numeros</category>

<body package="CineTeatro-Tests" selector="testEnteroDesde">testEnteroDesde
	self assert: (UtilCine enteroDesde: ' 42 ') equals: 42.
	self assert: (UtilCine enteroDesde: '007') equals: 7.
	"En VisualWorks 'abc' asNumber devuelve 0: por eso se validan los digitos antes"
	#('abc' '4a' '' '-1' '1.5' '1,5') do: [:texto | self deberiaFallar: [UtilCine enteroDesde: texto]]</body>

<body package="CineTeatro-Tests" selector="testNumeroDesdeConvencionArgentina">testNumeroDesdeConvencionArgentina
	"Punto para los miles y coma para los decimales"
	self assert: (UtilCine numeroDesde: '5000') equals: 5000.
	self assert: (UtilCine numeroDesde: '5.000') equals: 5000.
	self assert: (UtilCine numeroDesde: ' 5.000 ') equals: 5000.
	self assert: (UtilCine numeroDesde: '4.500,50') equals: 9001 / 2.
	self assert: (UtilCine numeroDesde: '4500,5') equals: 9001 / 2.
	self assert: (UtilCine numeroDesde: '1.234.567,89') equals: 123456789 / 100.
	self assert: (UtilCine numeroDesde: '0,5') equals: 1 / 2.
	self assert: (UtilCine numeroDesde: '12.000,00') equals: 12000</body>

<body package="CineTeatro-Tests" selector="testNumeroDesdeAceptaPuntoDecimal">testNumeroDesdeAceptaPuntoDecimal
	"Un unico punto seguido de 1 o 2 digitos se toma como decimal"
	self assert: (UtilCine numeroDesde: '4500.50') equals: 9001 / 2.
	self assert: (UtilCine numeroDesde: '0.5') equals: 1 / 2</body>

<body package="CineTeatro-Tests" selector="testNumeroDesdeInvalido">testNumeroDesdeInvalido
	#('abc' '-5' '' '12,345' '1.5.2' '5.' ',50' '5,' '1234.567' '12.34,5' '1,2,3' '5..000' '.500' '$ 500')
		do: [:texto | self deberiaFallar: [UtilCine numeroDesde: texto]]</body>

<body package="CineTeatro-Tests" selector="testNumeroDesdeEsExacto">testNumeroDesdeEsExacto
	"Los importes son enteros o fracciones, no Float: las cuentas no pierden centavos"
	self assert: (UtilCine numeroDesde: '0,1') + (UtilCine numeroDesde: '0,2') equals: (UtilCine numeroDesde: '0,3').
	self assert: (UtilCine textoMoneda: (UtilCine numeroDesde: '99999,99') * 7 * 80 / 100) equals: '$ 559.999,94'</body>

<body package="CineTeatro-Tests" selector="testTextoNumeroIdaYVuelta">testTextoNumeroIdaYVuelta
	"textoNumero: escribe un importe de modo que numeroDesde: lo vuelva a leer igual"
	self assert: (UtilCine textoNumero: 5000) equals: '5000'.
	self assert: (UtilCine textoNumero: 9001 / 2) equals: '4500,50'.
	self assert: (UtilCine textoNumero: 450005 / 100) equals: '4500,05'.
	self assert: (UtilCine numeroDesde: (UtilCine textoNumero: 123456789 / 100)) equals: 123456789 / 100</body>

</methods>

<methods>
<class-id>UtilCineTest</class-id> <category>formatos</category>

<body package="CineTeatro-Tests" selector="testTextoMoneda">testTextoMoneda
	self assert: (UtilCine textoMoneda: 0) equals: '$ 0,00'.
	self assert: (UtilCine textoMoneda: 999) equals: '$ 999,00'.
	self assert: (UtilCine textoMoneda: 5000) equals: '$ 5.000,00'.
	self assert: (UtilCine textoMoneda: 1000000) equals: '$ 1.000.000,00'.
	self assert: (UtilCine textoMoneda: 9001 / 2) equals: '$ 4.500,50'</body>

<body package="CineTeatro-Tests" selector="testTextoPorcentajeYPromedio">testTextoPorcentajeYPromedio
	self assert: (UtilCine textoPorcentaje: 100 / 3) equals: '33.3 %'.
	self assert: (UtilCine textoPorcentaje: 100) equals: '100.0 %'.
	self assert: (UtilCine textoPromedio: 26 / 3) equals: '8.67'.
	self assert: (UtilCine textoPromedio: 9) equals: '9.0'</body>

<body package="CineTeatro-Tests" selector="testPadRellenarYAlinear">testPadRellenarYAlinear
	self assert: (UtilCine pad: 7 digitos: 2) equals: '07'.
	self assert: (UtilCine pad: 123 digitos: 2) equals: '123'.
	self assert: (UtilCine rellenar: 'ab' a: 4) equals: 'ab  '.
	self assert: (UtilCine rellenar: 'abcdef' a: 4) equals: 'abcd'.
	self assert: (UtilCine alinearDerecha: 'ab' a: 4) equals: '  ab'.
	self assert: (UtilCine linea: 3) equals: '---'</body>

<body package="CineTeatro-Tests" selector="testPalabras">testPalabras
	"Las butacas se escriben separadas por espacios o comas"
	self assert: (UtilCine palabras: ' c4, c5   C6 ') asArray equals: #('c4' 'c5' 'C6').
	self assert: (UtilCine palabras: '   ') isEmpty</body>

</methods>

</st-source>
