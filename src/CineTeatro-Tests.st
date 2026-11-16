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

<body package="CineTeatro-Tests" selector="testFechaDesdeExigeElAnioCompleto">testFechaDesdeExigeElAnioCompleto
	"Con dos digitos no se sabe si 90 es 1990 o 2090; tampoco se aceptan anios disparatados"
	self assert: (self mensajeDeError: [UtilCine fechaDesde: '12/03/90']) contiene: 'anio completo'.
	self deberiaFallar: [UtilCine fechaDesde: '1/1/20266'].
	self deberiaFallar: [UtilCine fechaDesde: '1/1/1899'].
	self assert: (UtilCine fechaDesde: '12/03/1990') equals: (Date newDay: 12 monthNumber: 3 year: 1990)</body>

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

<class>
<name>ReservasVentasTest</name>
<environment>Smalltalk</environment>
<super>CineTestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>socio sala peli funcion</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro-Tests</category>
<attributes>
<package>CineTeatro-Tests</package>
</attributes>
</class>

<comment>
<class-id>ReservasVentasTest</class-id>
<body>Pruebas de reservas y ventas: quien puede reservar, validacion de butacas, regla de las 24 horas, descuento de socio, precio congelado en la reserva y paso de la funcion a agotada. Cada prueba arranca con un socio, una sala de 12 butacas (A1..C4) y una funcion dentro de 5 dias a las 20:00 con entrada de $ 1000.</body>
</comment>

<methods>
<class-id>ReservasVentasTest</class-id> <category>running</category>

<body package="CineTeatro-Tests" selector="setUp">setUp
	super setUp.
	socio := self socio: 'Ana Socia'.
	sala := self salaCine.
	peli := self pelicula: 'Peli'.
	funcion := self funcionDe: peli en: sala dia: 5 hora: 20</body>

<body package="CineTeatro-Tests" selector="efectivo">efectivo
	^PagoEfectivo new</body>

</methods>

<methods>
<class-id>ReservasVentasTest</class-id> <category>reservas</category>

<body package="CineTeatro-Tests" selector="testReservaQuedaPendienteYOcupaLasButacas">testReservaQuedaPendienteYOcupaLasButacas
	| r |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'a2').
	self assert: r estaPendiente.
	self assert: r idSocio equals: socio id.
	self assert: r idFuncion equals: funcion id.
	self assert: r fechaReserva equals: self hoy.
	self assert: r textoButacas equals: 'A1 A2'.
	self assert: (funcion estaOcupada: 'A1').
	self assert: (funcion estaOcupada: 'A2').
	self deny: (funcion estaOcupada: 'A3').
	self assert: funcion cantidadOcupadas equals: 2.
	"La reserva se hace sin pagar: no genera ninguna venta"
	self assert: admin todasLasVentas isEmpty</body>

<body package="CineTeatro-Tests" selector="testSoloLosSociosActivosReservan">testSoloLosSociosActivosReservan
	admin darDeBajaSocio: socio id.
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: funcion id butacas: #('A1')]) contiene: 'socios activos'.
	admin reactivarSocio: socio id.
	self assert: (admin reservarSocio: socio id funcion: funcion id butacas: #('A1')) estaPendiente.
	"Un id que no es de ningun socio"
	self deberiaFallar: [admin reservarSocio: 99 funcion: funcion id butacas: #('A2')]</body>

<body package="CineTeatro-Tests" selector="testNoSeReservaUnaButacaOcupada">testNoSeReservaUnaButacaOcupada
	| otro |
	otro := self socio: 'Otro Socio'.
	admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: nil.
	self assert: (self mensajeDeError: [admin reservarSocio: otro id funcion: funcion id butacas: #('A1')]) contiene: 'ya esta reservada o vendida'.
	self deberiaFallar: [admin reservarSocio: otro id funcion: funcion id butacas: #('A2' 'B1')].
	"Si una butaca del pedido falla, no se reserva ninguna"
	self deny: (funcion estaOcupada: 'A2')</body>

<body package="CineTeatro-Tests" selector="testNoSeReservaUnaButacaInexistente">testNoSeReservaUnaButacaInexistente
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: funcion id butacas: #('Z9')]) contiene: 'no existe'.
	self deberiaFallar: [admin reservarSocio: socio id funcion: funcion id butacas: #('A5')].
	self deberiaFallar: [admin reservarSocio: socio id funcion: funcion id butacas: #('D1')].
	self deberiaFallar: [admin reservarSocio: socio id funcion: funcion id butacas: #('hola')]</body>

<body package="CineTeatro-Tests" selector="testNoSeReservanButacasRepetidasNiVacias">testNoSeReservanButacasRepetidasNiVacias
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'a1')]) contiene: 'repetidas'.
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: funcion id butacas: #()]) contiene: 'al menos una butaca'.
	self assert: funcion cantidadOcupadas equals: 0</body>

<body package="CineTeatro-Tests" selector="testNoSeReservaUnaFuncionQueYaComenzo">testNoSeReservaUnaFuncionQueYaComenzo
	"Un minuto antes del comienzo todavia se puede; a la hora de inicio ya no"
	self ponerReloj: (self dia: 5) hora: (self hora: 19 minutos: 59).
	self assert: (admin reservarSocio: socio id funcion: funcion id butacas: #('A1')) estaPendiente.
	self ponerReloj: (self dia: 5) hora: (self hora: 20).
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: funcion id butacas: #('A2')]) contiene: 'ya comenzo'</body>

<body package="CineTeatro-Tests" selector="testLosIdsDeReservaNoSeRepitenEntreFunciones">testLosIdsDeReservaNoSeRepitenEntreFunciones
	| otraFuncion r1 r2 r3 |
	otraFuncion := self funcionDe: peli en: sala dia: 6 hora: 20.
	r1 := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	r2 := admin reservarSocio: socio id funcion: otraFuncion id butacas: #('A1').
	r3 := admin reservarSocio: socio id funcion: funcion id butacas: #('A2').
	self assert: (Array with: r1 id with: r2 id with: r3 id) equals: #(1 2 3).
	self assert: (admin reservaId: 2) == r2</body>

</methods>

<methods>
<class-id>ReservasVentasTest</class-id> <category>cancelacion y regla de 24 horas</category>

<body package="CineTeatro-Tests" selector="testSeCancelaSinCostoConMasDe24Horas">testSeCancelaSinCostoConMasDe24Horas
	| r |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'A2').
	self ponerReloj: (self dia: 4) hora: (self hora: 19 minutos: 59).
	self assert: (admin esCancelable: r).
	admin cancelarReserva: r id.
	self assert: r estaCancelada.
	self assert: r fechaCancelacion equals: (self dia: 4).
	"Las butacas vuelven a estar libres y no se cobro nada"
	self deny: (funcion estaOcupada: 'A1').
	self assert: funcion cantidadOcupadas equals: 0.
	self assert: admin todasLasVentas isEmpty</body>

<body package="CineTeatro-Tests" selector="testSeCancelaJustoA24Horas">testSeCancelaJustoA24Horas
	"El enunciado dice 'hasta 24 horas antes': faltando exactamente 24 horas todavia se puede"
	| r |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	self ponerReloj: (self dia: 4) hora: (self hora: 20).
	admin cancelarReserva: r id.
	self assert: r estaCancelada</body>

<body package="CineTeatro-Tests" selector="testNoSeCancelaConMenosDe24Horas">testNoSeCancelaConMenosDe24Horas
	| r |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	self ponerReloj: (self dia: 4) hora: (self hora: 20 minutos: 1).
	self deny: (admin esCancelable: r).
	self assert: (self mensajeDeError: [admin cancelarReserva: r id]) contiene: '24 horas'.
	self assert: r estaPendiente.
	self assert: (funcion estaOcupada: 'A1')</body>

<body package="CineTeatro-Tests" selector="testLaReservaVencidaSeSigueDebiendo">testLaReservaVencidaSeSigueDebiendo
	"Pasada la funcion, la reserva impaga no se puede anular y el socio debe pagarla"
	| r venta |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	self ponerReloj: (self dia: 8) hora: (self hora: 10).
	self assert: (admin reservasPendientes includes: r).
	self deberiaFallar: [admin cancelarReserva: r id].
	venta := admin venderReserva: r id medioPago: self efectivo.
	self assert: venta monto equals: 800.
	self assert: r estaConfirmada</body>

<body package="CineTeatro-Tests" selector="testSoloSeCancelanReservasPendientes">testSoloSeCancelanReservasPendientes
	| cancelada pagada |
	cancelada := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	admin cancelarReserva: cancelada id.
	self assert: (self mensajeDeError: [admin cancelarReserva: cancelada id]) contiene: 'cancelada'.
	pagada := admin reservarSocio: socio id funcion: funcion id butacas: #('A2').
	admin venderReserva: pagada id medioPago: self efectivo.
	self assert: (self mensajeDeError: [admin cancelarReserva: pagada id]) contiene: 'confirmada'.
	self deberiaFallar: [admin cancelarReserva: 99]</body>

</methods>

<methods>
<class-id>ReservasVentasTest</class-id> <category>ventas</category>

<body package="CineTeatro-Tests" selector="testPagarUnaReservaLaConfirmaYAplicaElDescuento">testPagarUnaReservaLaConfirmaYAplicaElDescuento
	| r venta |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'A2').
	venta := admin venderReserva: r id medioPago: self efectivo.
	"2 butacas x $ 1000 con 20% de descuento"
	self assert: venta monto equals: 1600.
	self assert: venta idReserva equals: r id.
	self assert: venta idSocio equals: socio id.
	self assert: venta idFuncion equals: funcion id.
	self assert: venta fecha equals: self hoy.
	self deny: venta esDirecta.
	self assert: venta esDeSocio.
	self assert: venta textoButacas equals: r textoButacas.
	self assert: r estaConfirmada.
	"Las butacas siguen ocupadas, pero no se cuentan dos veces"
	self assert: funcion cantidadOcupadas equals: 2.
	self assert: funcion entradasVendidas equals: 2</body>

<body package="CineTeatro-Tests" selector="testLaReservaSeCobraAlPrecioDelDiaEnQueSeReservo">testLaReservaSeCobraAlPrecioDelDiaEnQueSeReservo
	| r ventaReserva ventaNueva |
	r := admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'A2').
	self assert: r precioUnitario equals: 1000.
	self assert: (admin montoDeReserva: r) equals: 1600.
	admin modificarPrecio: 3000 funcion: funcion id.
	"La reserva no cambia; las ventas nuevas usan el precio nuevo"
	self assert: (admin montoDeReserva: r) equals: 1600.
	ventaReserva := admin venderReserva: r id medioPago: self efectivo.
	self assert: ventaReserva monto equals: 1600.
	ventaNueva := admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: nil.
	self assert: ventaNueva monto equals: 3000</body>

<body package="CineTeatro-Tests" selector="testNoSePagaUnaReservaDosVecesNiUnaCancelada">testNoSePagaUnaReservaDosVecesNiUnaCancelada
	| pagada cancelada |
	pagada := admin reservarSocio: socio id funcion: funcion id butacas: #('A1').
	admin venderReserva: pagada id medioPago: self efectivo.
	self assert: (self mensajeDeError: [admin venderReserva: pagada id medioPago: self efectivo]) contiene: 'no esta pendiente'.
	cancelada := admin reservarSocio: socio id funcion: funcion id butacas: #('A2').
	admin cancelarReserva: cancelada id.
	self deberiaFallar: [admin venderReserva: cancelada id medioPago: self efectivo].
	self assert: admin todasLasVentas size equals: 1</body>

<body package="CineTeatro-Tests" selector="testVentaDirectaANoSocioSinDescuento">testVentaDirectaANoSocioSinDescuento
	| venta |
	venta := admin venderFuncion: funcion id butacas: #('C1' 'C2' 'C3') medioPago: self efectivo socio: nil.
	self assert: venta monto equals: 3000.
	self assert: venta esDirecta.
	self assert: venta idReserva isNil.
	self deny: venta esDeSocio.
	self assert: venta tipoCliente equals: 'No socio'.
	self assert: venta cantidadEntradas equals: 3.
	self assert: (funcion estaOcupada: 'C2').
	self assert: funcion recaudacion equals: 3000</body>

<body package="CineTeatro-Tests" selector="testVentaDirectaASocioConDescuento">testVentaDirectaASocioConDescuento
	| venta |
	self assert: Socio porcentajeDescuento equals: 20.
	self assert: (socio aplicarDescuentoA: 1000) equals: 800.
	venta := admin venderFuncion: funcion id butacas: #('C1') medioPago: self efectivo socio: socio id.
	self assert: venta monto equals: 800.
	self assert: venta esDirecta.
	self assert: venta idSocio equals: socio id.
	self assert: venta tipoCliente equals: 'Socio'</body>

<body package="CineTeatro-Tests" selector="testVentaDirectaValidaSocioFuncionYButacas">testVentaDirectaValidaSocioFuncionYButacas
	admin venderFuncion: funcion id butacas: #('A1') medioPago: self efectivo socio: nil.
	self deberiaFallar: [admin venderFuncion: funcion id butacas: #('A1') medioPago: self efectivo socio: nil].
	self deberiaFallar: [admin venderFuncion: funcion id butacas: #('Z1') medioPago: self efectivo socio: nil].
	self deberiaFallar: [admin venderFuncion: funcion id butacas: #('B1' 'b1') medioPago: self efectivo socio: nil].
	self deberiaFallar: [admin venderFuncion: funcion id butacas: #() medioPago: self efectivo socio: nil].
	self deberiaFallar: [admin venderFuncion: 99 butacas: #('B1') medioPago: self efectivo socio: nil].
	self deberiaFallar: [admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: 99].
	admin darDeBajaSocio: socio id.
	self assert: (self mensajeDeError: [admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: socio id]) contiene: 'inactivo'.
	self ponerReloj: (self dia: 5) hora: (self hora: 21).
	self assert: (self mensajeDeError: [admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: nil]) contiene: 'ya comenzo'.
	self assert: admin todasLasVentas size equals: 1</body>

<body package="CineTeatro-Tests" selector="testElImporteSeRedondeaAlCentavo">testElImporteSeRedondeaAlCentavo
	"$ 4500,33 con 20% de descuento son $ 3600,264: se cobra $ 3600,26"
	| venta |
	admin modificarPrecio: (UtilCine numeroDesde: '4500,33') funcion: funcion id.
	venta := admin venderFuncion: funcion id butacas: #('A1') medioPago: self efectivo socio: socio id.
	self assert: venta monto equals: 360026 / 100.
	self assert: (UtilCine textoMoneda: venta monto) equals: '$ 3.600,26'</body>

<body package="CineTeatro-Tests" selector="testLosTresMediosDePago">testLosTresMediosDePago
	"Polimorfismo: cada medio de pago responde tipo, nombre y descripcion a su manera"
	| tarjeta transferencia v1 v2 v3 |
	tarjeta := PagoTarjeta new tipoTarjeta: #credito; marca: 'VISA'; titular: 'Ana'; ultimosDigitos: '1234'; cuotas: 3; yourself.
	transferencia := PagoTransferencia new aliasOrigen: 'ana.alias'; numeroOperacion: '555'; yourself.
	v1 := admin venderFuncion: funcion id butacas: #('A1') medioPago: self efectivo socio: nil.
	v2 := admin venderFuncion: funcion id butacas: #('A2') medioPago: tarjeta socio: nil.
	v3 := admin venderFuncion: funcion id butacas: #('A3') medioPago: transferencia socio: nil.
	self assert: (Array with: v1 medioPago tipo with: v2 medioPago tipo with: v3 medioPago tipo) equals: #(#efectivo #tarjeta #transferencia).
	self assert: (Array with: v1 medioPago nombre with: v2 medioPago nombre with: v3 medioPago nombre) equals: #('Efectivo' 'Tarjeta' 'Transferencia').
	self assert: v1 medioPago descripcion equals: 'Efectivo'.
	self assert: v2 medioPago descripcion contiene: '**** 1234'.
	self assert: v2 medioPago descripcion contiene: '3 cuota'.
	self assert: v3 medioPago descripcion contiene: 'ana.alias'.
	self assert: (Array with: v1 id with: v2 id with: v3 id) equals: #(1 2 3)</body>

</methods>

<methods>
<class-id>ReservasVentasTest</class-id> <category>funcion agotada</category>

<body package="CineTeatro-Tests" selector="testLaFuncionPasaAAgotadaCuandoNoQuedanButacas">testLaFuncionPasaAAgotadaCuandoNoQuedanButacas
	"Sala de 2 butacas: una reservada y una vendida la agotan"
	| chica |
	chica := self funcionDe: peli en: self salaChica dia: 5 hora: 20.
	self assert: chica capacidad equals: 2.
	self deny: chica estaAgotada.
	admin reservarSocio: socio id funcion: chica id butacas: #('A1').
	self deny: chica estaAgotada.
	self assert: chica butacasLibres equals: 1.
	admin venderFuncion: chica id butacas: #('A2') medioPago: self efectivo socio: nil.
	self assert: chica estaAgotada.
	self assert: chica estado equals: #agotada.
	self assert: chica butacasLibres equals: 0.
	self assert: chica porcentajeOcupacion equals: 100</body>

<body package="CineTeatro-Tests" selector="testNoSeVendeNiReservaUnaFuncionAgotada">testNoSeVendeNiReservaUnaFuncionAgotada
	| chica |
	chica := self funcionDe: peli en: self salaChica dia: 5 hora: 20.
	admin venderFuncion: chica id butacas: #('A1' 'A2') medioPago: self efectivo socio: nil.
	self assert: (self mensajeDeError: [admin reservarSocio: socio id funcion: chica id butacas: #('A1')]) contiene: 'agotada'.
	self assert: (self mensajeDeError: [admin venderFuncion: chica id butacas: #('A1') medioPago: self efectivo socio: nil]) contiene: 'agotada'</body>

<body package="CineTeatro-Tests" selector="testCancelarUnaReservaVuelveADejarLugar">testCancelarUnaReservaVuelveADejarLugar
	| chica r |
	chica := self funcionDe: peli en: self salaChica dia: 5 hora: 20.
	r := admin reservarSocio: socio id funcion: chica id butacas: #('A1' 'A2').
	self assert: chica estaAgotada.
	admin cancelarReserva: r id.
	self deny: chica estaAgotada.
	self assert: chica estado equals: #disponible.
	"Pagar la reserva, en cambio, la deja agotada"
	r := admin reservarSocio: socio id funcion: chica id butacas: #('A1' 'A2').
	admin venderReserva: r id medioPago: self efectivo.
	self assert: chica estaAgotada</body>

<body package="CineTeatro-Tests" selector="testOcupacionDeLaFuncion">testOcupacionDeLaFuncion
	"12 butacas: 2 reservadas y 1 vendida son 3 ocupadas (25%)"
	admin reservarSocio: socio id funcion: funcion id butacas: #('A1' 'A2').
	admin venderFuncion: funcion id butacas: #('B1') medioPago: self efectivo socio: nil.
	self assert: funcion capacidad equals: sala capacidad.
	self assert: funcion cantidadOcupadas equals: 3.
	self assert: funcion butacasLibres equals: 9.
	self assert: funcion porcentajeOcupacion equals: 25.
	self assert: funcion entradasVendidas equals: 1</body>

</methods>

<class>
<name>FuncionesTest</name>
<environment>Smalltalk</environment>
<super>CineTestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>cine teatro peli obra</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro-Tests</category>
<attributes>
<package>CineTeatro-Tests</package>
</attributes>
</class>

<comment>
<class-id>FuncionesTest</class-id>
<body>Pruebas de la gestion de funciones: validaciones al programar, superposicion de horarios en una sala (incluida una funcion que cruza la medianoche), cambio de precio y eliminacion. Cada prueba arranca con una sala de cine, una de teatro, una pelicula de 100 minutos y una obra de teatro de 90.</body>
</comment>

<methods>
<class-id>FuncionesTest</class-id> <category>running</category>

<body package="CineTeatro-Tests" selector="setUp">setUp
	super setUp.
	cine := self salaCine.
	teatro := self salaTeatro.
	peli := self pelicula: 'Peli'.
	obra := self obraDeTeatro: 'Obra'</body>

<body package="CineTeatro-Tests" selector="programar:en:dia:hora:minutos:">programar: unaObra en: unaSala dia: n hora: h minutos: m
	^admin programarFuncionObra: unaObra id sala: unaSala id fecha: (self dia: n) hora: (self hora: h minutos: m) precio: 1000</body>

</methods>

<methods>
<class-id>FuncionesTest</class-id> <category>programar</category>

<body package="CineTeatro-Tests" selector="testProgramarGuardaLosDatosDeLaFuncion">testProgramarGuardaLosDatosDeLaFuncion
	| f |
	f := self funcionDe: peli en: cine dia: 5 hora: 20.
	self assert: f id equals: 1.
	self assert: f idObra equals: peli id.
	self assert: f idSala equals: cine id.
	self assert: f fecha equals: (self dia: 5).
	self assert: f horaInicio equals: (self hora: 20).
	self assert: f precioEntrada equals: 1000.
	"La funcion copia la duracion de la obra y la capacidad de la sala"
	self assert: f duracion equals: 100.
	self assert: f horaFin equals: (self hora: 21 minutos: 40).
	self assert: f capacidad equals: 12.
	self assert: f estado equals: #disponible.
	self assert: f listaReservas isEmpty.
	self assert: f listaVentas isEmpty.
	self assert: (admin funcionId: 1) == f</body>

<body package="CineTeatro-Tests" selector="testSoloSeProgramanObrasEnCartel">testSoloSeProgramanObrasEnCartel
	admin sacarDeCartel: peli id.
	self assert: (self mensajeDeError: [self funcionDe: peli en: cine dia: 5 hora: 20]) contiene: 'en cartel'.
	admin ponerEnCartel: peli id.
	self assert: (self funcionDe: peli en: cine dia: 5 hora: 20) id equals: 1</body>

<body package="CineTeatro-Tests" selector="testLaSalaTieneQueAdmitirElTipoDeObra">testLaSalaTieneQueAdmitirElTipoDeObra
	"Polimorfismo: cada tipo de obra sabe en que sala puede presentarse"
	| mixta |
	self assert: (peli puedePresentarseEn: cine).
	self deny: (peli puedePresentarseEn: teatro).
	self assert: (obra puedePresentarseEn: teatro).
	self deny: (obra puedePresentarseEn: cine).
	self assert: (self mensajeDeError: [self funcionDe: peli en: teatro dia: 5 hora: 20]) contiene: 'no admite Pelicula'.
	self assert: (self mensajeDeError: [self funcionDe: obra en: cine dia: 5 hora: 20]) contiene: 'no admite Obra de teatro'.
	self assert: (self funcionDe: obra en: teatro dia: 5 hora: 20) duracion equals: 90.
	mixta := admin altaSalaNombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: true.
	self funcionDe: peli en: mixta dia: 5 hora: 16.
	self funcionDe: obra en: mixta dia: 5 hora: 20.
	self assert: admin funciones size equals: 3</body>

<body package="CineTeatro-Tests" selector="testNoSeProgramaEnElPasado">testNoSeProgramaEnElPasado
	"El reloj simulado marca hoy a las 10:00"
	self assert: (self mensajeDeError: [self funcionDe: peli en: cine dia: -1 hora: 20]) contiene: 'pasado'.
	self deberiaFallar: [self funcionDe: peli en: cine dia: 0 hora: 9].
	self deberiaFallar: [self funcionDe: peli en: cine dia: 0 hora: 10].
	self assert: (self programar: peli en: cine dia: 0 hora: 10 minutos: 1) id equals: 1</body>

<body package="CineTeatro-Tests" selector="testValidaPrecioObraYSala">testValidaPrecioObraYSala
	self assert: (self mensajeDeError: [admin programarFuncionObra: peli id sala: cine id fecha: (self dia: 5) hora: (self hora: 20) precio: 0]) contiene: 'mayor a cero'.
	self deberiaFallar: [admin programarFuncionObra: 99 sala: cine id fecha: (self dia: 5) hora: (self hora: 20) precio: 1000].
	self deberiaFallar: [admin programarFuncionObra: peli id sala: 99 fecha: (self dia: 5) hora: (self hora: 20) precio: 1000].
	self assert: admin funciones isEmpty</body>

</methods>

<methods>
<class-id>FuncionesTest</class-id> <category>superposicion</category>

<body package="CineTeatro-Tests" selector="testNoSeSuperponenFuncionesEnLaMismaSala">testNoSeSuperponenFuncionesEnLaMismaSala
	"Hay una funcion de 20:00 a 21:40. La pelicula dura 100 minutos."
	self funcionDe: peli en: cine dia: 5 hora: 20.
	"Empieza durante la otra"
	self assert: (self mensajeDeError: [self funcionDe: peli en: cine dia: 5 hora: 21]) contiene: 'no esta libre'.
	"Empieza antes pero termina durante la otra (19:00 a 20:40)"
	self deberiaFallar: [self funcionDe: peli en: cine dia: 5 hora: 19].
	"Exactamente el mismo horario"
	self deberiaFallar: [self funcionDe: peli en: cine dia: 5 hora: 20].
	self assert: admin funciones size equals: 1</body>

<body package="CineTeatro-Tests" selector="testFuncionesPegadasNoSeSuperponen">testFuncionesPegadasNoSeSuperponen
	"Una funcion puede empezar justo cuando termina la anterior, o terminar justo cuando empieza la siguiente"
	self funcionDe: peli en: cine dia: 5 hora: 20.
	self programar: peli en: cine dia: 5 hora: 21 minutos: 40.
	self programar: peli en: cine dia: 5 hora: 18 minutos: 20.
	self assert: admin funciones size equals: 3</body>

<body package="CineTeatro-Tests" selector="testOtraSalaUOtroDiaNoSeSuperponen">testOtraSalaUOtroDiaNoSeSuperponen
	| mixta |
	mixta := admin altaSalaNombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: true.
	self funcionDe: peli en: cine dia: 5 hora: 20.
	self funcionDe: peli en: mixta dia: 5 hora: 20.
	self funcionDe: peli en: cine dia: 6 hora: 20.
	self assert: admin funciones size equals: 3</body>

<body package="CineTeatro-Tests" selector="testSuperposicionConFuncionQueCruzaLaMedianoche">testSuperposicionConFuncionQueCruzaLaMedianoche
	"Funcion del dia 5 de 23:30 a 01:10 del dia 6"
	| nocturna |
	nocturna := self programar: peli en: cine dia: 5 hora: 23 minutos: 30.
	self assert: nocturna horaFin equals: (self hora: 1 minutos: 10).
	"Al dia siguiente a las 00:30 la sala sigue ocupada"
	self assert: (self mensajeDeError: [self programar: peli en: cine dia: 6 hora: 0 minutos: 30]) contiene: 'no esta libre'.
	self deberiaFallar: [self programar: peli en: cine dia: 6 hora: 0 minutos: 0].
	"Una que empieza el dia 5 a las 22:00 termina a las 23:40: tambien choca"
	self deberiaFallar: [self programar: peli en: cine dia: 5 hora: 22 minutos: 0].
	"A la 01:10 del dia 6 ya esta libre"
	self programar: peli en: cine dia: 6 hora: 1 minutos: 10.
	self assert: admin funciones size equals: 2</body>

</methods>

<methods>
<class-id>FuncionesTest</class-id> <category>modificar y eliminar</category>

<body package="CineTeatro-Tests" selector="testModificarPrecio">testModificarPrecio
	| f |
	f := self funcionDe: peli en: cine dia: 5 hora: 20.
	admin modificarPrecio: 2500 funcion: f id.
	self assert: f precioEntrada equals: 2500.
	self assert: (self mensajeDeError: [admin modificarPrecio: 0 funcion: f id]) contiene: 'mayor a cero'.
	self deberiaFallar: [admin modificarPrecio: 100 funcion: 99].
	self assert: f precioEntrada equals: 2500</body>

<body package="CineTeatro-Tests" selector="testEliminarFuncionSinMovimientos">testEliminarFuncionSinMovimientos
	| f |
	f := self funcionDe: peli en: cine dia: 5 hora: 20.
	admin cancelarFuncion: f id.
	self assert: admin funciones isEmpty.
	self deberiaFallar: [admin cancelarFuncion: f id].
	"El horario queda libre otra vez"
	self funcionDe: peli en: cine dia: 5 hora: 20</body>

<body package="CineTeatro-Tests" selector="testNoSeEliminaUnaFuncionConReservasOVentas">testNoSeEliminaUnaFuncionConReservasOVentas
	| conReserva conVenta socio |
	socio := self socio: 'Ana'.
	conReserva := self funcionDe: peli en: cine dia: 5 hora: 20.
	conVenta := self funcionDe: peli en: cine dia: 6 hora: 20.
	admin reservarSocio: socio id funcion: conReserva id butacas: #('A1').
	admin venderFuncion: conVenta id butacas: #('A1') medioPago: PagoEfectivo new socio: nil.
	self assert: (self mensajeDeError: [admin cancelarFuncion: conReserva id]) contiene: 'reservas'.
	self deberiaFallar: [admin cancelarFuncion: conVenta id].
	self assert: admin funciones size equals: 2</body>

<body package="CineTeatro-Tests" selector="testNoSeEliminaUnaFuncionConReservasCanceladas">testNoSeEliminaUnaFuncionConReservasCanceladas
	"Si se pudiera, la reserva cancelada se perderia y su numero se repetiria"
	| f socio cancelada nueva |
	socio := self socio: 'Ana'.
	f := self funcionDe: peli en: cine dia: 5 hora: 20.
	cancelada := admin reservarSocio: socio id funcion: f id butacas: #('A1').
	admin cancelarReserva: cancelada id.
	self assert: f tieneMovimientos.
	self deberiaFallar: [admin cancelarFuncion: f id].
	self assert: (admin todasLasReservas includes: cancelada).
	nueva := admin reservarSocio: socio id funcion: f id butacas: #('A1').
	self assert: cancelada id equals: 1.
	self assert: nueva id equals: 2</body>

</methods>

<methods>
<class-id>FuncionesTest</class-id> <category>listados</category>

<body package="CineTeatro-Tests" selector="testFuncionesFuturasOrdenadasPorHorario">testFuncionesFuturasOrdenadasPorHorario
	| f1 f2 f3 |
	f1 := self funcionDe: peli en: cine dia: 7 hora: 20.
	f2 := self funcionDe: peli en: cine dia: 3 hora: 20.
	f3 := self funcionDe: obra en: teatro dia: 5 hora: 20.
	self assert: admin funcionesFuturas asArray equals: (Array with: f2 with: f3 with: f1).
	"Cuando el reloj pasa el comienzo de una funcion, deja de ser futura"
	self ponerReloj: (self dia: 5) hora: (self hora: 20).
	self assert: admin funcionesFuturas asArray equals: (Array with: f1)</body>

<body package="CineTeatro-Tests" selector="testDescripcionDeLaFuncion">testDescripcionDeLaFuncion
	| f texto |
	f := self funcionDe: peli en: self salaChica dia: 5 hora: 20.
	texto := admin descripcionFuncion: f.
	self assert: texto contiene: '15/06/2030 20:00-21:40'.
	self assert: texto contiene: 'Peli'.
	self assert: texto contiene: 'Sala Chica'.
	self assert: texto contiene: '$ 1.000,00'.
	self assert: texto contiene: '0/2'.
	self deny: texto contiene: 'AGOTADA'.
	admin venderFuncion: f id butacas: #('A1' 'A2') medioPago: PagoEfectivo new socio: nil.
	self assert: (admin descripcionFuncion: f) contiene: '2/2 AGOTADA'</body>

</methods>

<class>
<name>PersonasTest</name>
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
<class-id>PersonasTest</class-id>
<body>Pruebas de la gestion de personas, socios, criticos y criticas: altas, bajas y modificaciones con todas sus validaciones.</body>
</comment>

<methods>
<class-id>PersonasTest</class-id> <category>personas</category>

<body package="CineTeatro-Tests" selector="altaConDni:">altaConDni: unDni
	^admin altaPersonaNombre: 'Persona' dni: unDni fechaNacimiento: nil sexo: 'F' domicilio: '' email: '' celular: ''</body>

<body package="CineTeatro-Tests" selector="testAltaDePersonaGuardaLosDatos">testAltaDePersonaGuardaLosDatos
	| p otra |
	p := admin
		altaPersonaNombre: '  Ana Perez '
		dni: ' 30111222 '
		fechaNacimiento: (Date newDay: 15 monthNumber: 8 year: 1990)
		sexo: 'f'
		domicilio: 'Calle 1'
		email: 'ana@mail.com'
		celular: '3442-1234'.
	self assert: p id equals: 1.
	"El nombre y el DNI se guardan sin espacios de mas, y el sexo en mayuscula"
	self assert: p nombre equals: 'Ana Perez'.
	self assert: p dni equals: '30111222'.
	self assert: p sexo equals: 'F'.
	self assert: p fechaNacimiento equals: (Date newDay: 15 monthNumber: 8 year: 1990).
	self assert: p domicilio equals: 'Calle 1'.
	self assert: p email equals: 'ana@mail.com'.
	self assert: p celular equals: '3442-1234'.
	self assert: (admin personaId: 1) == p.
	self assert: (admin personaConDni: '30111222') == p.
	otra := self persona: 'Otra'.
	self assert: otra id equals: 2.
	self assert: admin personas size equals: 2</body>

<body package="CineTeatro-Tests" selector="testAltaDePersonaValidaNombreDniYFecha">testAltaDePersonaValidaNombreDniYFecha
	self altaConDni: '30111222'.
	self assert: (self mensajeDeError: [admin altaPersonaNombre: '   ' dni: '1' fechaNacimiento: nil sexo: 'F' domicilio: '' email: '' celular: '']) contiene: 'nombre es obligatorio'.
	#('30.111.222' 'abc' '' '30111222a') do: [:dni | self assert: (self mensajeDeError: [self altaConDni: dni]) contiene: 'DNI debe ser numerico'].
	self assert: (self mensajeDeError: [self altaConDni: '30111222']) contiene: 'Ya existe una persona con DNI'.
	self deberiaFallar: [self altaConDni: ' 30111222 '].
	self assert: (self mensajeDeError: [admin altaPersonaNombre: 'X' dni: '2' fechaNacimiento: (self dia: 1) sexo: 'F' domicilio: '' email: '' celular: '']) contiene: 'no puede ser futura'.
	"Ninguno de los intentos fallidos agrego nada"
	self assert: admin personas size equals: 1</body>

<body package="CineTeatro-Tests" selector="testLaFechaDeNacimientoPuedeSerHoyOFaltar">testLaFechaDeNacimientoPuedeSerHoyOFaltar
	| conFecha sinFecha |
	conFecha := admin altaPersonaNombre: 'Bebe' dni: '1' fechaNacimiento: self hoy sexo: 'M' domicilio: '' email: '' celular: ''.
	sinFecha := self altaConDni: '2'.
	self assert: (conFecha edadAl: self hoy) equals: 0.
	self assert: (sinFecha edadAl: self hoy) isNil</body>

<body package="CineTeatro-Tests" selector="testEdadSegunSiYaCumplioAnios">testEdadSegunSiYaCumplioAnios
	"La persona de apoyo nacio el 15/08/1990"
	| p |
	p := self persona: 'Ana'.
	self assert: (p edadAl: (Date newDay: 10 monthNumber: 6 year: 2030)) equals: 39.
	self assert: (p edadAl: (Date newDay: 14 monthNumber: 8 year: 2030)) equals: 39.
	self assert: (p edadAl: (Date newDay: 15 monthNumber: 8 year: 2030)) equals: 40</body>

<body package="CineTeatro-Tests" selector="testModificarPersonaCambiaTodosLosDatos">testModificarPersonaCambiaTodosLosDatos
	| p |
	p := self persona: 'Ana'.
	admin
		modificarPersona: p id
		nombre: ' Ana Maria '
		dni: '99000111'
		fechaNacimiento: (Date newDay: 1 monthNumber: 2 year: 1985)
		sexo: 'x'
		domicilio: 'Otra calle'
		email: 'nuevo@mail.com'
		celular: '555'.
	self assert: p id equals: 1.
	self assert: p nombre equals: 'Ana Maria'.
	self assert: p dni equals: '99000111'.
	self assert: p fechaNacimiento equals: (Date newDay: 1 monthNumber: 2 year: 1985).
	self assert: p sexo equals: 'X'.
	self assert: p domicilio equals: 'Otra calle'.
	self assert: p email equals: 'nuevo@mail.com'.
	self assert: p celular equals: '555'.
	self assert: (admin personaConDni: '99000111') == p</body>

<body package="CineTeatro-Tests" selector="testModificarPersonaNoPuedeRepetirElDniDeOtra">testModificarPersonaNoPuedeRepetirElDniDeOtra
	| ana beto |
	ana := self persona: 'Ana'.
	beto := self persona: 'Beto'.
	self assert: (self mensajeDeError: [admin modificarPersona: beto id nombre: 'Beto' dni: ana dni fechaNacimiento: nil sexo: 'M' domicilio: '' email: '' celular: '']) contiene: 'Ya existe una persona con DNI'.
	"Pero puede conservar el suyo"
	admin modificarPersona: beto id nombre: 'Beto Gomez' dni: beto dni fechaNacimiento: nil sexo: 'M' domicilio: '' email: '' celular: ''.
	self assert: beto nombre equals: 'Beto Gomez'</body>

<body package="CineTeatro-Tests" selector="testModificarPersonaValidaIgualQueElAlta">testModificarPersonaValidaIgualQueElAlta
	| p dni |
	p := self persona: 'Ana'.
	dni := p dni.
	self deberiaFallar: [admin modificarPersona: p id nombre: '' dni: dni fechaNacimiento: nil sexo: 'F' domicilio: '' email: '' celular: ''].
	self deberiaFallar: [admin modificarPersona: p id nombre: 'Ana' dni: '12x' fechaNacimiento: nil sexo: 'F' domicilio: '' email: '' celular: ''].
	self deberiaFallar: [admin modificarPersona: p id nombre: 'Ana' dni: dni fechaNacimiento: (self dia: 1) sexo: 'F' domicilio: '' email: '' celular: ''].
	self deberiaFallar: [admin modificarPersona: 99 nombre: 'Ana' dni: '5' fechaNacimiento: nil sexo: 'F' domicilio: '' email: '' celular: ''].
	"Si la validacion falla no se cambia nada"
	self assert: p nombre equals: 'Ana'.
	self assert: p dni equals: dni.
	self assert: p domicilio equals: 'Calle 1'</body>

<body package="CineTeatro-Tests" selector="testBajaDePersonaSinRoles">testBajaDePersonaSinRoles
	| p |
	p := self persona: 'Ana'.
	admin bajaPersona: p id.
	self assert: admin personas isEmpty.
	self deberiaFallar: [admin bajaPersona: p id].
	self deberiaFallar: [admin personaId: p id]</body>

<body package="CineTeatro-Tests" selector="testNoSeEliminaUnaPersonaConRoles">testNoSeEliminaUnaPersonaConRoles
	| socio critico director actor peli |
	socio := self socio: 'Socia'.
	critico := self critico: 'usuario1'.
	director := self persona: 'Directora'.
	actor := self persona: 'Actor'.
	peli := admin altaPeliculaTitulo: 'Peli' descripcion: '' duracion: 100 clasificacion: 'ATP' director: director id.
	admin agregarAlElenco: actor id obra: peli id.
	self assert: (self mensajeDeError: [admin bajaPersona: socio idPersona]) contiene: 'socio'.
	self assert: (self mensajeDeError: [admin bajaPersona: critico idPersona]) contiene: 'critico'.
	self assert: (self mensajeDeError: [admin bajaPersona: director id]) contiene: 'participa'.
	self assert: (self mensajeDeError: [admin bajaPersona: actor id]) contiene: 'participa'.
	"Un socio dado de baja sigue teniendo historial: tampoco se elimina"
	admin darDeBajaSocio: socio id.
	self deberiaFallar: [admin bajaPersona: socio idPersona].
	self assert: admin personas size equals: 4</body>

</methods>

<methods>
<class-id>PersonasTest</class-id> <category>socios</category>

<body package="CineTeatro-Tests" selector="testAltaDeSocio">testAltaDeSocio
	| p socio |
	p := self persona: 'Ana'.
	socio := admin altaSocioPersona: p id.
	self assert: socio id equals: 1.
	self assert: socio idPersona equals: p id.
	self assert: socio fechaAlta equals: self hoy.
	self assert: socio estaActivo.
	self assert: socio estado equals: #activo.
	self assert: (admin socioDePersona: p id) == socio.
	self assert: (admin nombreDeSocio: socio id) equals: 'Ana'.
	self deberiaFallar: [admin altaSocioPersona: 99]</body>

<body package="CineTeatro-Tests" selector="testUnaPersonaEsSocioUnaSolaVez">testUnaPersonaEsSocioUnaSolaVez
	| socio |
	socio := self socio: 'Ana'.
	self assert: (self mensajeDeError: [admin altaSocioPersona: socio idPersona]) contiene: 'ya es socio activo'.
	admin darDeBajaSocio: socio id.
	"Si esta inactivo no se crea otro socio: se lo reactiva"
	self assert: (self mensajeDeError: [admin altaSocioPersona: socio idPersona]) contiene: 'Reactivar'.
	self assert: admin socios size equals: 1</body>

<body package="CineTeatro-Tests" selector="testBajaYReactivacionDeSocio">testBajaYReactivacionDeSocio
	| socio otro |
	socio := self socio: 'Ana'.
	otro := self socio: 'Beto'.
	admin darDeBajaSocio: socio id.
	self deny: socio estaActivo.
	self assert: socio estado equals: #inactivo.
	self assert: admin sociosActivos asArray equals: (Array with: otro).
	self assert: (self mensajeDeError: [admin darDeBajaSocio: socio id]) contiene: 'ya esta inactivo'.
	admin reactivarSocio: socio id.
	self assert: socio estaActivo.
	self assert: (self mensajeDeError: [admin reactivarSocio: socio id]) contiene: 'ya esta activo'.
	self deberiaFallar: [admin darDeBajaSocio: 99].
	self deberiaFallar: [admin reactivarSocio: 99].
	"El socio dado de baja no se borra de la lista"
	self assert: admin socios size equals: 2</body>

</methods>

<methods>
<class-id>PersonasTest</class-id> <category>criticos y criticas</category>

<body package="CineTeatro-Tests" selector="testAltaDeCritico">testAltaDeCritico
	| p critico |
	p := self persona: 'Ana'.
	critico := admin altaCriticoPersona: p id usuario: '  ana_cine '.
	self assert: critico id equals: 1.
	self assert: critico idPersona equals: p id.
	self assert: critico nombreUsuario equals: 'ana_cine'.
	self assert: critico fechaAlta equals: self hoy.
	self assert: (admin criticoId: 1) == critico</body>

<body package="CineTeatro-Tests" selector="testAltaDeCriticoValidaciones">testAltaDeCriticoValidaciones
	| ana beto |
	ana := self persona: 'Ana'.
	beto := self persona: 'Beto'.
	admin altaCriticoPersona: ana id usuario: 'ana_cine'.
	self deberiaFallar: [admin altaCriticoPersona: 99 usuario: 'otro'].
	self assert: (self mensajeDeError: [admin altaCriticoPersona: beto id usuario: '  ']) contiene: 'obligatorio'.
	self assert: (self mensajeDeError: [admin altaCriticoPersona: ana id usuario: 'otro']) contiene: 'ya esta registrada como critico'.
	self assert: (self mensajeDeError: [admin altaCriticoPersona: beto id usuario: 'ana_cine']) contiene: 'ya existe'.
	self assert: admin criticos size equals: 1</body>

<body package="CineTeatro-Tests" selector="testSoloLasPeliculasRecibenCriticas">testSoloLasPeliculasRecibenCriticas
	"Polimorfismo: Pelicula responde admiteCriticas con true y ObraTeatro con false"
	| critico peli obra critica |
	critico := self critico: 'ana_cine'.
	peli := self pelicula: 'Peli'.
	obra := self obraDeTeatro: 'Obra'.
	self assert: peli admiteCriticas.
	self deny: obra admiteCriticas.
	critica := admin registrarCriticaDe: critico id obra: peli id resena: 'Muy buena' puntaje: 9.
	self assert: critica idCritico equals: critico id.
	self assert: critica puntaje equals: 9.
	self assert: critica resena equals: 'Muy buena'.
	self assert: critica fecha equals: self hoy.
	self assert: peli criticas size equals: 1.
	self assert: (self mensajeDeError: [admin registrarCriticaDe: critico id obra: obra id resena: 'x' puntaje: 9]) contiene: 'no admiten criticas'.
	self assert: obra criticas isEmpty.
	self deberiaFallar: [obra agregarCritica: critica]</body>

<body package="CineTeatro-Tests" selector="testElPuntajeVaDe1A10">testElPuntajeVaDe1A10
	| critico otro peli |
	critico := self critico: 'ana_cine'.
	otro := self critico: 'beto_cine'.
	peli := self pelicula: 'Peli'.
	self assert: (self mensajeDeError: [admin registrarCriticaDe: critico id obra: peli id resena: 'x' puntaje: 0]) contiene: 'entre 1 y 10'.
	self deberiaFallar: [admin registrarCriticaDe: critico id obra: peli id resena: 'x' puntaje: 11].
	admin registrarCriticaDe: critico id obra: peli id resena: 'x' puntaje: 1.
	admin registrarCriticaDe: otro id obra: peli id resena: 'x' puntaje: 10.
	self assert: peli criticas size equals: 2.
	self deberiaFallar: [admin registrarCriticaDe: 99 obra: peli id resena: 'x' puntaje: 5].
	self deberiaFallar: [admin registrarCriticaDe: critico id obra: 99 resena: 'x' puntaje: 5]</body>

<body package="CineTeatro-Tests" selector="testUnCriticoTieneUnaSolaCriticaPorPelicula">testUnCriticoTieneUnaSolaCriticaPorPelicula
	"Si vuelve a criticar la misma pelicula, la critica nueva reemplaza a la anterior"
	| critico peli |
	critico := self critico: 'ana_cine'.
	peli := self pelicula: 'Peli'.
	admin registrarCriticaDe: critico id obra: peli id resena: 'Primera' puntaje: 4.
	admin registrarCriticaDe: critico id obra: peli id resena: 'Segunda' puntaje: 8.
	self assert: peli criticas size equals: 1.
	self assert: peli criticas first resena equals: 'Segunda'.
	self assert: peli promedioCriticas equals: 8</body>

<body package="CineTeatro-Tests" selector="testPromedioDeCriticas">testPromedioDeCriticas
	| peli obra |
	peli := self pelicula: 'Peli'.
	obra := self obraDeTeatro: 'Obra'.
	self assert: peli promedioCriticas equals: 0.
	self assert: obra promedioCriticas equals: 0.
	admin registrarCriticaDe: (self critico: 'c1') id obra: peli id resena: 'x' puntaje: 9.
	admin registrarCriticaDe: (self critico: 'c2') id obra: peli id resena: 'x' puntaje: 8.
	admin registrarCriticaDe: (self critico: 'c3') id obra: peli id resena: 'x' puntaje: 8.
	self assert: peli promedioCriticas equals: 25 / 3.
	self assert: (UtilCine textoPromedio: peli promedioCriticas) equals: '8.33'</body>

<body package="CineTeatro-Tests" selector="testBajaDeCritica">testBajaDeCritica
	| c1 c2 peli obra quitada |
	c1 := self critico: 'c1'.
	c2 := self critico: 'c2'.
	peli := self pelicula: 'Peli'.
	obra := self obraDeTeatro: 'Obra'.
	admin registrarCriticaDe: c1 id obra: peli id resena: 'Mala' puntaje: 2.
	admin registrarCriticaDe: c2 id obra: peli id resena: 'Buena' puntaje: 8.
	self assert: (peli tieneCriticaDe: c1 id).
	quitada := admin bajaCriticaDe: c1 id obra: peli id.
	self assert: quitada resena equals: 'Mala'.
	self deny: (peli tieneCriticaDe: c1 id).
	self assert: peli criticas size equals: 1.
	self assert: peli promedioCriticas equals: 8.
	"No se puede eliminar una critica que no existe"
	self assert: (self mensajeDeError: [admin bajaCriticaDe: c1 id obra: peli id]) contiene: 'no tiene una critica'.
	self deberiaFallar: [admin bajaCriticaDe: c2 id obra: obra id].
	self deberiaFallar: [admin bajaCriticaDe: 99 obra: peli id].
	self deberiaFallar: [admin bajaCriticaDe: c2 id obra: 99].
	self deberiaFallar: [obra quitarCriticaDe: c2 id]</body>

<body package="CineTeatro-Tests" selector="testBajaDeCritico">testBajaDeCritico
	"Un critico con criticas no se elimina; hay que eliminar antes sus criticas"
	| critico peli1 peli2 |
	critico := self critico: 'ana_cine'.
	peli1 := self pelicula: 'Peli 1'.
	peli2 := self pelicula: 'Peli 2'.
	admin registrarCriticaDe: critico id obra: peli1 id resena: 'x' puntaje: 5.
	admin registrarCriticaDe: critico id obra: peli2 id resena: 'x' puntaje: 6.
	self assert: (admin obrasCriticadasPor: critico id) asArray equals: (Array with: peli1 with: peli2).
	self assert: (self mensajeDeError: [admin bajaCritico: critico id]) contiene: 'tiene 2 critica'.
	admin bajaCriticaDe: critico id obra: peli1 id.
	admin bajaCriticaDe: critico id obra: peli2 id.
	admin bajaCritico: critico id.
	self assert: admin criticos isEmpty.
	self deberiaFallar: [admin bajaCritico: critico id].
	"La persona sigue existiendo, y ahora si se puede eliminar"
	self assert: admin personas size equals: 1.
	admin bajaPersona: critico idPersona.
	self assert: admin personas isEmpty</body>

</methods>

<class>
<name>ObrasSalasTest</name>
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
<class-id>ObrasSalasTest</class-id>
<body>Pruebas de la gestion de peliculas, obras de teatro y salas: altas, modificaciones, bajas, elenco, cartel y butacas.</body>
</comment>

<methods>
<class-id>ObrasSalasTest</class-id> <category>peliculas y obras</category>

<body package="CineTeatro-Tests" selector="testAltaDePeliculaYDeObraDeTeatro">testAltaDePeliculaYDeObraDeTeatro
	"Las dos se guardan en la misma lista (obras) y comparten la numeracion"
	| director peli obra |
	director := self persona: 'Directora'.
	peli := admin altaPeliculaTitulo: '  El faro ' descripcion: 'Drama' duracion: 105 clasificacion: '+13' director: director id.
	obra := admin altaObraTeatroTitulo: 'Hamlet' descripcion: 'Tragedia' duracion: 150 clasificacion: '+13' director: nil.
	self assert: peli id equals: 1.
	self assert: obra id equals: 2.
	self assert: peli titulo equals: 'El faro'.
	self assert: peli descripcion equals: 'Drama'.
	self assert: peli duracion equals: 105.
	self assert: peli clasificacion equals: '+13'.
	self assert: peli director equals: director id.
	self assert: obra director isNil.
	self assert: peli elenco isEmpty.
	self assert: peli estaEnCartel.
	"Polimorfismo: cada subclase de ObraArtistica responde distinto"
	self assert: peli esPelicula.
	self deny: obra esPelicula.
	self assert: peli tipo equals: #pelicula.
	self assert: obra tipo equals: #obra.
	self assert: peli tipoTexto equals: 'Pelicula'.
	self assert: obra tipoTexto equals: 'Obra de teatro'.
	self assert: admin obras asArray equals: (Array with: peli with: obra)</body>

<body package="CineTeatro-Tests" selector="testAltaDeObraValidaciones">testAltaDeObraValidaciones
	self assert: (self mensajeDeError: [admin altaPeliculaTitulo: '  ' descripcion: '' duracion: 100 clasificacion: 'ATP' director: nil]) contiene: 'titulo es obligatorio'.
	self assert: (self mensajeDeError: [admin altaPeliculaTitulo: 'X' descripcion: '' duracion: 0 clasificacion: 'ATP' director: nil]) contiene: 'duracion debe ser mayor'.
	self deberiaFallar: [admin altaObraTeatroTitulo: 'X' descripcion: '' duracion: 100 clasificacion: 'ATP' director: 99].
	self assert: admin obras isEmpty</body>

<body package="CineTeatro-Tests" selector="testModificarObra">testModificarObra
	| director peli |
	director := self persona: 'Directora'.
	peli := self pelicula: 'Peli'.
	admin modificarObra: peli id titulo: ' Peli corregida ' descripcion: 'Nueva' duracion: 120 clasificacion: '+16' director: director id.
	self assert: peli titulo equals: 'Peli corregida'.
	self assert: peli descripcion equals: 'Nueva'.
	self assert: peli duracion equals: 120.
	self assert: peli clasificacion equals: '+16'.
	self assert: peli director equals: director id.
	"Sigue siendo una pelicula en cartel, con el mismo id"
	self assert: peli id equals: 1.
	self assert: peli esPelicula.
	self assert: peli estaEnCartel.
	self deberiaFallar: [admin modificarObra: peli id titulo: '' descripcion: '' duracion: 120 clasificacion: 'ATP' director: nil].
	self deberiaFallar: [admin modificarObra: peli id titulo: 'X' descripcion: '' duracion: 0 clasificacion: 'ATP' director: nil].
	self deberiaFallar: [admin modificarObra: peli id titulo: 'X' descripcion: '' duracion: 120 clasificacion: 'ATP' director: 99].
	self deberiaFallar: [admin modificarObra: 99 titulo: 'X' descripcion: '' duracion: 120 clasificacion: 'ATP' director: nil].
	self assert: peli titulo equals: 'Peli corregida'</body>

<body package="CineTeatro-Tests" selector="testNoSeCambiaLaDuracionConFuncionesPorEmpezar">testNoSeCambiaLaDuracionConFuncionesPorEmpezar
	"Cada funcion ya calculo su horario de fin con la duracion que tenia la obra"
	| peli f |
	peli := self pelicula: 'Peli'.
	f := self funcionDe: peli en: self salaCine dia: 5 hora: 20.
	self assert: (self mensajeDeError: [admin modificarObra: peli id titulo: 'Peli' descripcion: '' duracion: 150 clasificacion: 'ATP' director: nil]) contiene: 'No se puede cambiar la duracion'.
	"Los demas datos si se pueden cambiar"
	admin modificarObra: peli id titulo: 'Otro titulo' descripcion: '' duracion: 100 clasificacion: 'ATP' director: nil.
	self assert: peli titulo equals: 'Otro titulo'.
	"Cuando la funcion ya empezo, se puede; la funcion pasada conserva su duracion"
	self ponerReloj: (self dia: 6) hora: (self hora: 10).
	admin modificarObra: peli id titulo: 'Otro titulo' descripcion: '' duracion: 150 clasificacion: 'ATP' director: nil.
	self assert: peli duracion equals: 150.
	self assert: f duracion equals: 100</body>

<body package="CineTeatro-Tests" selector="testBajaDeObra">testBajaDeObra
	| critico conFuncion sinFuncion |
	critico := self critico: 'ana_cine'.
	conFuncion := self pelicula: 'Con funcion'.
	sinFuncion := self pelicula: 'Sin funcion'.
	admin registrarCriticaDe: critico id obra: sinFuncion id resena: 'x' puntaje: 7.
	self funcionDe: conFuncion en: self salaCine dia: 5 hora: 20.
	self assert: (self mensajeDeError: [admin bajaObra: conFuncion id]) contiene: 'tiene 1 funcion'.
	"Aunque la funcion ya haya pasado"
	self ponerReloj: (self dia: 9) hora: (self hora: 10).
	self deberiaFallar: [admin bajaObra: conFuncion id].
	admin bajaObra: sinFuncion id.
	self assert: admin obras asArray equals: (Array with: conFuncion).
	"Las criticas de la pelicula se fueron con ella"
	self assert: (admin obrasCriticadasPor: critico id) isEmpty.
	self deberiaFallar: [admin bajaObra: sinFuncion id]</body>

<body package="CineTeatro-Tests" selector="testElenco">testElenco
	| directora actor actriz peli |
	directora := self persona: 'Directora'.
	actor := self persona: 'Actor'.
	actriz := self persona: 'Actriz'.
	peli := admin altaPeliculaTitulo: 'Peli' descripcion: '' duracion: 100 clasificacion: 'ATP' director: directora id.
	admin agregarAlElenco: actor id obra: peli id.
	admin agregarAlElenco: actriz id obra: peli id.
	self assert: peli elenco asArray equals: (Array with: actor id with: actriz id).
	self assert: (self mensajeDeError: [admin agregarAlElenco: actor id obra: peli id]) contiene: 'ya forma parte'.
	self deberiaFallar: [admin agregarAlElenco: 99 obra: peli id].
	self deberiaFallar: [admin agregarAlElenco: actor id obra: 99].
	"participa: cuenta al director y al elenco"
	self assert: (peli participa: directora id).
	self assert: (peli participa: actor id).
	self assert: (admin obrasDePersona: actriz id) asArray equals: (Array with: peli).
	admin quitarDelElenco: actor id obra: peli id.
	self assert: peli elenco asArray equals: (Array with: actriz id).
	self deny: (peli participa: actor id).
	self assert: (self mensajeDeError: [admin quitarDelElenco: actor id obra: peli id]) contiene: 'no forma parte'.
	self deberiaFallar: [admin quitarDelElenco: actriz id obra: 99].
	"Fuera del elenco, el actor ya se puede eliminar como persona"
	admin bajaPersona: actor id.
	self assert: admin personas size equals: 2</body>

<body package="CineTeatro-Tests" selector="testPonerYSacarDeCartel">testPonerYSacarDeCartel
	| peli obra |
	peli := self pelicula: 'Peli'.
	obra := self obraDeTeatro: 'Obra'.
	admin sacarDeCartel: peli id.
	self deny: peli estaEnCartel.
	self assert: peli estado equals: #fueraDeCartel.
	self assert: peli textoEstado equals: 'Fuera de cartel'.
	self assert: admin obrasEnCartel asArray equals: (Array with: obra).
	admin ponerEnCartel: peli id.
	self assert: peli estaEnCartel.
	self assert: peli textoEstado equals: 'En cartel'.
	self assert: admin obrasEnCartel size equals: 2.
	self deberiaFallar: [admin sacarDeCartel: 99]</body>

</methods>

<methods>
<class-id>ObrasSalasTest</class-id> <category>salas</category>

<body package="CineTeatro-Tests" selector="testAltaDeSalaGeneraLasButacas">testAltaDeSalaGeneraLasButacas
	"3 filas de 4 butacas: A1..A4, B1..B4, C1..C4"
	| sala |
	sala := self salaCine.
	self assert: sala id equals: 1.
	self assert: sala nombre equals: 'Sala Cine'.
	self assert: sala capacidad equals: 12.
	self assert: sala cantidadFilas equals: 3.
	self assert: sala butacasPorFila equals: 4.
	self assert: sala butacas first codigo equals: 'A1'.
	self assert: sala butacas last codigo equals: 'C4'.
	self assert: (sala butacaDeCodigo: 'b3') codigo equals: 'B3'.
	self assert: (sala butacaDeCodigo: 'D1') isNil.
	self assert: (sala butacaDeCodigo: 'A5') isNil</body>

<body package="CineTeatro-Tests" selector="testLasButacasTienenPosicionEnElPlano">testLasButacasTienenPosicionEnElPlano
	"posicionY es la fila; posicionX salta una columna en la mitad para dejar el pasillo"
	| sala |
	sala := self salaCine.
	self assert: (sala butacaDeCodigo: 'A1') posicionX equals: 1.
	self assert: (sala butacaDeCodigo: 'A2') posicionX equals: 2.
	self assert: (sala butacaDeCodigo: 'A3') posicionX equals: 4.
	self assert: (sala butacaDeCodigo: 'A4') posicionX equals: 5.
	self assert: (sala butacaDeCodigo: 'A4') posicionY equals: 1.
	self assert: (sala butacaDeCodigo: 'C1') posicionY equals: 3.
	"Dos butacas son iguales si tienen la misma fila y numero"
	self assert: (Butaca fila: 'B' numero: 2 x: 0 y: 0) equals: (sala butacaDeCodigo: 'B2').
	self deny: (sala butacaDeCodigo: 'B2') = (sala butacaDeCodigo: 'B3')</body>

<body package="CineTeatro-Tests" selector="testPlanoDeLaSala">testPlanoDeLaSala
	| sala plano |
	sala := self salaCine.
	plano := sala planoMarcando: #('A1' 'C4').
	self assert: plano contiene: 'PANTALLA / ESCENARIO'.
	self assert: plano contiene: ' A   XX 02    03 04'.
	self assert: plano contiene: ' B   01 02    03 04'.
	self assert: plano contiene: ' C   01 02    03 XX'.
	self deny: (sala planoMarcando: #()) contiene: 'XX '</body>

<body package="CineTeatro-Tests" selector="testAltaDeSalaValidaciones">testAltaDeSalaValidaciones
	self salaCine.
	self assert: (self mensajeDeError: [admin altaSalaNombre: ' ' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false]) contiene: 'nombre de la sala es obligatorio'.
	self assert: (self mensajeDeError: [admin altaSalaNombre: ' Sala Cine ' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false]) contiene: 'Ya existe una sala'.
	self assert: (self mensajeDeError: [admin altaSalaNombre: 'X' filas: 0 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false]) contiene: 'filas'.
	self deberiaFallar: [admin altaSalaNombre: 'X' filas: 27 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false].
	self assert: (self mensajeDeError: [admin altaSalaNombre: 'X' filas: 2 butacasPorFila: 0 permitePeliculas: true permiteTeatro: false]) contiene: 'butacas por fila'.
	self deberiaFallar: [admin altaSalaNombre: 'X' filas: 2 butacasPorFila: 41 permitePeliculas: true permiteTeatro: false].
	self assert: (self mensajeDeError: [admin altaSalaNombre: 'X' filas: 2 butacasPorFila: 2 permitePeliculas: false permiteTeatro: false]) contiene: 'peliculas, teatro o ambos'.
	self assert: admin salas size equals: 1.
	"Los limites son validos: 26 filas (A..Z) de 40 butacas"
	self assert: (admin altaSalaNombre: 'Enorme' filas: 26 butacasPorFila: 40 permitePeliculas: true permiteTeatro: true) capacidad equals: 1040</body>

<body package="CineTeatro-Tests" selector="testTiposDeObraQueAdmiteLaSala">testTiposDeObraQueAdmiteLaSala
	| mixta |
	mixta := admin altaSalaNombre: 'Mixta' filas: 1 butacasPorFila: 1 permitePeliculas: true permiteTeatro: true.
	self assert: self salaCine tiposPermitidosTexto equals: 'Solo peliculas'.
	self assert: self salaTeatro tiposPermitidosTexto equals: 'Solo teatro'.
	self assert: mixta tiposPermitidosTexto equals: 'Peliculas y teatro'</body>

<body package="CineTeatro-Tests" selector="testModificarSalaSinFunciones">testModificarSalaSinFunciones
	| sala |
	sala := self salaCine.
	admin modificarSala: sala id nombre: ' Sala Grande ' filas: 5 butacasPorFila: 6 permitePeliculas: true permiteTeatro: true.
	self assert: sala id equals: 1.
	self assert: sala nombre equals: 'Sala Grande'.
	self assert: sala capacidad equals: 30.
	self assert: sala cantidadFilas equals: 5.
	self assert: sala butacasPorFila equals: 6.
	self assert: sala butacas last codigo equals: 'E6'.
	self assert: sala tiposPermitidosTexto equals: 'Peliculas y teatro'</body>

<body package="CineTeatro-Tests" selector="testModificarSalaValidaciones">testModificarSalaValidaciones
	| cine teatro |
	cine := self salaCine.
	teatro := self salaTeatro.
	self assert: (self mensajeDeError: [admin modificarSala: teatro id nombre: 'Sala Cine' filas: 2 butacasPorFila: 5 permitePeliculas: false permiteTeatro: true]) contiene: 'Ya existe una sala'.
	self deberiaFallar: [admin modificarSala: teatro id nombre: '' filas: 2 butacasPorFila: 5 permitePeliculas: false permiteTeatro: true].
	self deberiaFallar: [admin modificarSala: teatro id nombre: 'T' filas: 30 butacasPorFila: 5 permitePeliculas: false permiteTeatro: true].
	self deberiaFallar: [admin modificarSala: teatro id nombre: 'T' filas: 2 butacasPorFila: 5 permitePeliculas: false permiteTeatro: false].
	self deberiaFallar: [admin modificarSala: 99 nombre: 'T' filas: 2 butacasPorFila: 5 permitePeliculas: false permiteTeatro: true].
	"Puede conservar su propio nombre"
	admin modificarSala: teatro id nombre: 'Sala Teatro' filas: 2 butacasPorFila: 5 permitePeliculas: true permiteTeatro: true.
	self assert: teatro permitePeliculas.
	self assert: cine nombre equals: 'Sala Cine'</body>

<body package="CineTeatro-Tests" selector="testNoSeCambianLasButacasDeUnaSalaConFunciones">testNoSeCambianLasButacasDeUnaSalaConFunciones
	"Hay reservas y ventas hechas con esa distribucion de butacas"
	| sala |
	sala := self salaCine.
	self funcionDe: (self pelicula: 'Peli') en: sala dia: 5 hora: 20.
	self assert: (self mensajeDeError: [admin modificarSala: sala id nombre: 'Sala Cine' filas: 4 butacasPorFila: 4 permitePeliculas: true permiteTeatro: false]) contiene: 'No se pueden cambiar las butacas'.
	self assert: sala capacidad equals: 12.
	"El nombre si se puede cambiar"
	admin modificarSala: sala id nombre: 'Sala Uno' filas: 3 butacasPorFila: 4 permitePeliculas: true permiteTeatro: false.
	self assert: sala nombre equals: 'Sala Uno'</body>

<body package="CineTeatro-Tests" selector="testNoSeQuitaUnTipoDeObraConFuncionesProgramadas">testNoSeQuitaUnTipoDeObraConFuncionesProgramadas
	| mixta |
	mixta := admin altaSalaNombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: true.
	self funcionDe: (self pelicula: 'Peli') en: mixta dia: 5 hora: 20.
	self assert: (self mensajeDeError: [admin modificarSala: mixta id nombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: false permiteTeatro: true]) contiene: 'No se puede quitar ese tipo'.
	self assert: mixta permitePeliculas.
	"Quitar teatro si se puede: no hay obras de teatro programadas"
	admin modificarSala: mixta id nombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: true permiteTeatro: false.
	self deny: mixta permiteTeatro.
	"Cuando la funcion ya paso, la sala puede dejar de admitir peliculas"
	self ponerReloj: (self dia: 6) hora: (self hora: 10).
	admin modificarSala: mixta id nombre: 'Mixta' filas: 2 butacasPorFila: 2 permitePeliculas: false permiteTeatro: true.
	self deny: mixta permitePeliculas</body>

<body package="CineTeatro-Tests" selector="testBajaDeSala">testBajaDeSala
	| conFuncion sinFuncion |
	conFuncion := self salaCine.
	sinFuncion := self salaTeatro.
	self funcionDe: (self pelicula: 'Peli') en: conFuncion dia: 5 hora: 20.
	self assert: (self mensajeDeError: [admin bajaSala: conFuncion id]) contiene: 'tiene 1 funcion'.
	admin bajaSala: sinFuncion id.
	self assert: admin salas asArray equals: (Array with: conFuncion).
	self deberiaFallar: [admin bajaSala: sinFuncion id].
	"Si se elimina la funcion, la sala ya se puede eliminar"
	admin cancelarFuncion: 1.
	admin bajaSala: conFuncion id.
	self assert: admin salas isEmpty</body>

</methods>

</st-source>
