<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks(R) Personal Use Edition, 8.2 of 15 de julio de 2016 on 28/10/2026 at 05:14:58</time-stamp>


<component-created>
<name>CineTeatro</name> <type>package</type>
</component-created><!-- Package CineTeatro* -->


<class>
<name>ErrorCine</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>ErrorCine</class-id>
<body>Error de negocio del sistema de Cine/Teatro. Se muestra al usuario como aviso.</body>
</comment>

<class>
<name>AccionCancelada</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>AccionCancelada</class-id>
<body>Se senala cuando el usuario cancela un dialogo de la interfaz.</body>
</comment>

<class>
<name>UtilCine</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>UtilCine</class-id>
<body>Utilidades de formato y conversion (fechas, horas, moneda, numeros).</body>
</comment>

<class>
<name>Persona</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id nombre dni fechaNacimiento sexo domicilio email celular</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Persona</class-id>
<body>Persona gestionada por el sistema: socios, criticos, actores, directores, clientes, etc.</body>
</comment>

<class>
<name>Socio</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id idPersona fechaAlta estado</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Socio</class-id>
<body>Socio del cine/teatro. Puede reservar butacas y obtiene un 20% de descuento en todas sus compras.</body>
</comment>

<class>
<name>Critico</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id idPersona nombreUsuario fechaAlta</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Critico</class-id>
<body>Critico registrado: puede dejar resenas y puntajes a las peliculas (no a obras de teatro).</body>
</comment>

<class>
<name>Critica</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idCritico resena puntaje fecha</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Critica</class-id>
<body>Resena y puntaje (1 a 10) que un critico deja sobre una pelicula.</body>
</comment>

<class>
<name>ObraArtistica</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id titulo descripcion duracion clasificacion elenco director estado</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>ObraArtistica</class-id>
<body>Clase abstracta: pelicula u obra de teatro. duracion en minutos; director y elenco son ids de Persona; estado #enCartel / #fueraDeCartel.</body>
</comment>

<class>
<name>Pelicula</name>
<environment>Smalltalk</environment>
<super>ObraArtistica</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>criticas</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Pelicula</class-id>
<body>Pelicula: se proyecta en salas que permiten peliculas y admite criticas.</body>
</comment>

<class>
<name>ObraTeatro</name>
<environment>Smalltalk</environment>
<super>ObraArtistica</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>ObraTeatro</class-id>
<body>Obra de teatro: se presenta en salas que permiten teatro. No admite criticas.</body>
</comment>

<class>
<name>Butaca</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>fila numero posicionX posicionY</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Butaca</class-id>
<body>Butaca numerada de una sala. fila es una letra; posicionX/posicionY son las coordenadas en el plano de la sala.</body>
</comment>

<class>
<name>Sala</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id nombre permitePeliculas permiteTeatro butacas</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Sala</class-id>
<body>Sala del cine/teatro con su lista de butacas numeradas.</body>
</comment>

<class>
<name>Funcion</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id idObra idSala fecha horaInicio duracion precioEntrada capacidad estado listaReservas listaVentas</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Funcion</class-id>
<body>Proyeccion de una pelicula o presentacion de una obra en una sala, fecha y hora. estado #disponible / #agotada.</body>
</comment>

<class>
<name>Reserva</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id idSocio idFuncion listaButacasReservadas fechaReserva fechaCancelacion estado precioUnitario</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Reserva</class-id>
<body>Reserva sin pago de butacas numeradas a nombre de un socio. estado #pendiente / #confirmada (se compraron las entradas) / #cancelada. precioUnitario es el precio de la entrada en el momento de reservar: es el que se cobra al pagarla, aunque despues cambie el precio de la funcion.</body>
</comment>

<class>
<name>MedioPago</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>MedioPago</class-id>
<body>Clase abstracta de los medios de pago de una venta (efectivo, tarjeta, transferencia).</body>
</comment>

<class>
<name>PagoEfectivo</name>
<environment>Smalltalk</environment>
<super>MedioPago</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>PagoEfectivo</class-id>
<body>Pago en efectivo.</body>
</comment>

<class>
<name>PagoTarjeta</name>
<environment>Smalltalk</environment>
<super>MedioPago</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>tipoTarjeta marca titular ultimosDigitos cuotas</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>PagoTarjeta</class-id>
<body>Pago con tarjeta: tipoTarjeta #credito / #debito, ultimos 4 digitos, titular y cuotas.</body>
</comment>

<class>
<name>PagoTransferencia</name>
<environment>Smalltalk</environment>
<super>MedioPago</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aliasOrigen numeroOperacion</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>PagoTransferencia</class-id>
<body>Pago por transferencia bancaria: alias/CBU de origen y numero de operacion.</body>
</comment>

<class>
<name>Venta</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id idReserva idFuncion idSocio fecha hora monto medioPago butacasVendidas</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>Venta</class-id>
<body>Venta de entradas. Directa (idReserva = nil) o a partir de una reserva. idSocio es nil si el comprador no es socio.</body>
</comment>

<class>
<name>AdministradorCine</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>personas socios criticos obras salas funciones carpetaDatos fechaSimulada horaSimulada listasIlegibles</inst-vars>
<class-inst-vars>instancia</class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>AdministradorCine</class-id>
<body>Administrador del Cine/Teatro. Concentra la gestion de personas, socios, criticos, obras, salas, funciones, reservas y ventas, las consultas y la persistencia en disco (una lista por archivo, con BOSS).</body>
</comment>

<class>
<name>VentanaCine</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>admin salida</inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>CineTeatro</category>
<attributes>
<package>CineTeatro</package>
</attributes>
</class>

<comment>
<class-id>VentanaCine</class-id>
<body>Interfaz grafica del sistema. Abrir con:  VentanaCine open</body>
</comment>

<methods>
<class-id>UtilCine class</class-id> <category>formato</category>

<body package="CineTeatro" selector="pad:digitos:">pad: unEntero digitos: n
	"Devuelve el entero como texto, completado con ceros a la izquierda"
	| s |
	s := unEntero printString.
	[s size &lt; n] whileTrue: [s := '0' , s].
	^s</body>

<body package="CineTeatro" selector="textoFecha:">textoFecha: unaFecha
	unaFecha isNil ifTrue: [^'-'].
	^(self pad: unaFecha dayOfMonth digitos: 2) , '/' , (self pad: unaFecha monthIndex digitos: 2) , '/' , unaFecha year printString</body>

<body package="CineTeatro" selector="textoHora:">textoHora: unaHora
	unaHora isNil ifTrue: [^'-'].
	^(self pad: unaHora hours digitos: 2) , ':' , (self pad: unaHora minutes digitos: 2)</body>

<body package="CineTeatro" selector="textoMoneda:">textoMoneda: unNumero
	"Formato $ 12.345,50"
	| centavos enteros ws |
	centavos := (unNumero * 100) rounded.
	enteros := (centavos // 100) printString.
	ws := WriteStream on: (String new: 20).
	enteros keysAndValuesDo: [:i :c |
		ws nextPut: c.
		((enteros size - i) \\ 3 = 0 and: [i &lt; enteros size]) ifTrue: [ws nextPut: $.]].
	^'$ ' , ws contents , ',' , (self pad: centavos \\ 100 digitos: 2)</body>

<body package="CineTeatro" selector="textoPorcentaje:">textoPorcentaje: unNumero
	^((unNumero * 10) rounded / 10) asFloat printString , ' %'</body>

<body package="CineTeatro" selector="textoPromedio:">textoPromedio: unNumero
	^((unNumero * 100) rounded / 100) asFloat printString</body>

<body package="CineTeatro" selector="rellenar:a:">rellenar: unString a: n
	"Ajusta el texto a n caracteres (corta o completa con espacios)"
	| s |
	s := unString isNil ifTrue: [''] ifFalse: [unString asString].
	s size &gt;= n ifTrue: [^s copyFrom: 1 to: n].
	^s , (String new: n - s size withAll: $ )</body>

<body package="CineTeatro" selector="alinearDerecha:a:">alinearDerecha: unString a: n
	| s |
	s := unString isNil ifTrue: [''] ifFalse: [unString asString].
	s size &gt;= n ifTrue: [^s].
	^(String new: n - s size withAll: $ ) , s</body>

<body package="CineTeatro" selector="linea:">linea: n
	^String new: n withAll: $-</body>

</methods>

<methods>
<class-id>UtilCine class</class-id> <category>conversion</category>

<body package="CineTeatro" selector="esEntero:">esEntero: unString
	| s |
	unString isNil ifTrue: [^false].
	s := unString trimSeparators.
	^s notEmpty and: [s allSatisfy: [:c | c isDigit]]</body>

<body package="CineTeatro" selector="enteroDesde:">enteroDesde: unString
	(self esEntero: unString) ifFalse: [^ErrorCine new raiseSignal: 'Se esperaba un numero entero y se ingreso: ' , unString printString].
	^unString trimSeparators asNumber</body>

<body package="CineTeatro" selector="numeroDesde:">numeroDesde: unString
	"Convierte un importe escrito a la manera local: coma decimal y punto de miles opcional
	 (5000, 5.000, 4500,50, 1.234.567,89). Tambien acepta el punto como decimal si lo siguen
	 1 o 2 digitos (4500.50). Devuelve un numero exacto (entero o fraccion), nunca un Float,
	 para no perder centavos en las cuentas."
	| s coma punto entera decimales valor |
	s := unString trimSeparators.
	(s notEmpty and: [s allSatisfy: [:c | c isDigit or: [c = $. or: [c = $,]]]]) ifFalse: [^self numeroInvalido: unString].
	(s occurrencesOf: $,) &gt; 1 ifTrue: [^self numeroInvalido: unString].
	coma := (s indexOf: $,).
	punto := (s indexOf: $.).
	entera := s.
	decimales := ''.
	coma &gt; 0
		ifTrue: [
			entera := s copyFrom: 1 to: coma - 1.
			decimales := s copyFrom: coma + 1 to: s size.
			((decimales size between: 1 and: 2) and: [decimales allSatisfy: [:c | c isDigit]]) ifFalse: [^self numeroInvalido: unString]]
		ifFalse: [
			((s occurrencesOf: $.) = 1 and: [s size - punto between: 1 and: 2]) ifTrue: [
				entera := s copyFrom: 1 to: punto - 1.
				decimales := s copyFrom: punto + 1 to: s size]].
	entera := self enteraDeImporte: entera.
	entera isNil ifTrue: [^self numeroInvalido: unString].
	valor := entera asNumber.
	decimales isEmpty ifFalse: [valor := valor + (decimales asNumber / (10 raisedTo: decimales size))].
	^valor</body>

<body package="CineTeatro" selector="enteraDeImporte:">enteraDeImporte: unString
	"Parte entera de un importe: solo digitos, o grupos de miles separados por punto (1.234.567).
	 Devuelve los digitos sin los puntos, o nil si los puntos estan mal ubicados."
	| cuenta |
	unString isEmpty ifTrue: [^nil].
	(unString includes: $.) ifFalse: [^unString].
	cuenta := 0.
	unString reverse do: [:c |
		c = $.
			ifTrue: [
				cuenta = 3 ifFalse: [^nil].
				cuenta := 0]
			ifFalse: [cuenta := cuenta + 1]].
	(cuenta between: 1 and: 3) ifFalse: [^nil].
	^unString reject: [:c | c = $.]</body>

<body package="CineTeatro" selector="numeroInvalido:">numeroInvalido: unString
	^ErrorCine new raiseSignal: 'Importe invalido: ' , unString printString , '. Use solo numeros, con coma para los centavos (ej: 4500,50)'</body>

<body package="CineTeatro" selector="textoNumero:">textoNumero: unNumero
	"Texto editable de un importe, en el formato que acepta numeroDesde: (5000 o 4500,50)"
	| centavos |
	centavos := (unNumero * 100) rounded.
	centavos \\ 100 = 0 ifTrue: [^(centavos // 100) printString].
	^(centavos // 100) printString , ',' , (self pad: centavos \\ 100 digitos: 2)</body>

<body package="CineTeatro" selector="fechaDesde:">fechaDesde: unString
	"Convierte un texto dd/mm/aaaa en una fecha"
	| partes d m a fecha |
	partes := (unString trimSeparators tokensBasedOn: $/) asOrderedCollection.
	(partes size = 3 and: [partes allSatisfy: [:p | self esEntero: p]])
		ifFalse: [^ErrorCine new raiseSignal: 'Fecha invalida (use dd/mm/aaaa): ' , unString printString].
	d := (partes at: 1) asNumber.
	m := (partes at: 2) asNumber.
	a := (partes at: 3) asNumber.
	(a between: 1900 and: 2100) ifFalse: [^ErrorCine new raiseSignal: 'Escriba el anio completo, con 4 digitos (dd/mm/aaaa): ' , unString printString].
	fecha := [Date newDay: d monthNumber: m year: a] on: Error do: [:e | e return: nil].
	fecha isNil ifTrue: [^ErrorCine new raiseSignal: 'Fecha inexistente: ' , unString printString].
	^fecha</body>

<body package="CineTeatro" selector="horaDesde:">horaDesde: unString
	"Convierte un texto hh:mm en una hora"
	| partes h m |
	partes := (unString trimSeparators tokensBasedOn: $:) asOrderedCollection.
	(partes size = 2 and: [partes allSatisfy: [:p | self esEntero: p]])
		ifFalse: [^ErrorCine new raiseSignal: 'Hora invalida (use hh:mm): ' , unString printString].
	h := partes first asNumber.
	m := partes last asNumber.
	(h &lt;= 23 and: [m &lt;= 59]) ifFalse: [^ErrorCine new raiseSignal: 'Hora fuera de rango: ' , unString printString].
	^Time fromSeconds: h * 3600 + (m * 60)</body>

<body package="CineTeatro" selector="segundosDe:hora:">segundosDe: unaFecha hora: unaHora
	"Instante absoluto (en segundos) de una fecha y hora, para comparar intervalos"
	^unaFecha asSeconds + unaHora asSeconds</body>

<body package="CineTeatro" selector="palabras:">palabras: unString
	"Separa un texto en palabras (separadas por espacios o comas)"
	^((unString copyReplaceAll: ',' with: ' ') tokensBasedOn: $ ) reject: [:p | p isEmpty]</body>

</methods>

<methods>
<class-id>Persona</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="nombre">nombre
	^nombre</body>

<body package="CineTeatro" selector="nombre:">nombre: unNombre
	nombre := unNombre</body>

<body package="CineTeatro" selector="dni">dni
	^dni</body>

<body package="CineTeatro" selector="dni:">dni: unDni
	dni := unDni</body>

<body package="CineTeatro" selector="fechaNacimiento">fechaNacimiento
	^fechaNacimiento</body>

<body package="CineTeatro" selector="fechaNacimiento:">fechaNacimiento: unFechaNacimiento
	fechaNacimiento := unFechaNacimiento</body>

<body package="CineTeatro" selector="sexo">sexo
	^sexo</body>

<body package="CineTeatro" selector="sexo:">sexo: unSexo
	sexo := unSexo</body>

<body package="CineTeatro" selector="domicilio">domicilio
	^domicilio</body>

<body package="CineTeatro" selector="domicilio:">domicilio: unDomicilio
	domicilio := unDomicilio</body>

<body package="CineTeatro" selector="email">email
	^email</body>

<body package="CineTeatro" selector="email:">email: unEmail
	email := unEmail</body>

<body package="CineTeatro" selector="celular">celular
	^celular</body>

<body package="CineTeatro" selector="celular:">celular: unCelular
	celular := unCelular</body>

</methods>

<methods>
<class-id>Persona class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Persona</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	nombre := ''.
	dni := ''.
	fechaNacimiento := nil.
	sexo := ''.
	domicilio := ''.
	email := ''.
	celular := ''</body>

</methods>

<methods>
<class-id>Persona</class-id> <category>consultas</category>

<body package="CineTeatro" selector="edadAl:">edadAl: unaFecha
	| edad |
	fechaNacimiento isNil ifTrue: [^nil].
	edad := unaFecha year - fechaNacimiento year.
	(unaFecha monthIndex &lt; fechaNacimiento monthIndex or: [unaFecha monthIndex = fechaNacimiento monthIndex and: [unaFecha dayOfMonth &lt; fechaNacimiento dayOfMonth]])
		ifTrue: [edad := edad - 1].
	^edad</body>

<body package="CineTeatro" selector="descripcionCompleta">descripcionCompleta
	^'#' , id printString , ' ' , nombre , ' | DNI ' , dni , ' | Nac. ' , (UtilCine textoFecha: fechaNacimiento) , ' | Sexo ' , sexo , ' | ' , domicilio , ' | ' , email , ' | Cel ' , celular</body>

</methods>

<methods>
<class-id>Persona</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: '#' , id printString , ' ' , nombre , ' (DNI ' , dni , ')'</body>

</methods>

<methods>
<class-id>Socio</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="idPersona">idPersona
	^idPersona</body>

<body package="CineTeatro" selector="idPersona:">idPersona: unIdPersona
	idPersona := unIdPersona</body>

<body package="CineTeatro" selector="fechaAlta">fechaAlta
	^fechaAlta</body>

<body package="CineTeatro" selector="fechaAlta:">fechaAlta: unFechaAlta
	fechaAlta := unFechaAlta</body>

<body package="CineTeatro" selector="estado">estado
	^estado</body>

<body package="CineTeatro" selector="estado:">estado: unEstado
	estado := unEstado</body>

</methods>

<methods>
<class-id>Socio class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Socio class</class-id> <category>constantes</category>

<body package="CineTeatro" selector="porcentajeDescuento">porcentajeDescuento
	"Descuento que obtienen los socios en todas las compras de entradas"
	^20</body>

</methods>

<methods>
<class-id>Socio</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	idPersona := nil.
	fechaAlta := nil.
	estado := #activo</body>

</methods>

<methods>
<class-id>Socio</class-id> <category>estado</category>

<body package="CineTeatro" selector="estaActivo">estaActivo
	^estado = #activo</body>

<body package="CineTeatro" selector="activar">activar
	estado := #activo</body>

<body package="CineTeatro" selector="desactivar">desactivar
	estado := #inactivo</body>

</methods>

<methods>
<class-id>Socio</class-id> <category>calculos</category>

<body package="CineTeatro" selector="aplicarDescuentoA:">aplicarDescuentoA: unMonto
	^unMonto * (100 - self class porcentajeDescuento) / 100</body>

</methods>

<methods>
<class-id>Socio</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: 'Socio #' , id printString , ' (persona #' , idPersona printString , ', ' , estado , ')'</body>

</methods>

<methods>
<class-id>Critico</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="idPersona">idPersona
	^idPersona</body>

<body package="CineTeatro" selector="idPersona:">idPersona: unIdPersona
	idPersona := unIdPersona</body>

<body package="CineTeatro" selector="nombreUsuario">nombreUsuario
	^nombreUsuario</body>

<body package="CineTeatro" selector="nombreUsuario:">nombreUsuario: unNombreUsuario
	nombreUsuario := unNombreUsuario</body>

<body package="CineTeatro" selector="fechaAlta">fechaAlta
	^fechaAlta</body>

<body package="CineTeatro" selector="fechaAlta:">fechaAlta: unFechaAlta
	fechaAlta := unFechaAlta</body>

</methods>

<methods>
<class-id>Critico class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Critico</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	idPersona := nil.
	nombreUsuario := ''.
	fechaAlta := nil</body>

</methods>

<methods>
<class-id>Critico</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: '@' , nombreUsuario , ' (critico #' , id printString , ')'</body>

</methods>

<methods>
<class-id>Critica</class-id> <category>accessing</category>

<body package="CineTeatro" selector="idCritico">idCritico
	^idCritico</body>

<body package="CineTeatro" selector="idCritico:">idCritico: unIdCritico
	idCritico := unIdCritico</body>

<body package="CineTeatro" selector="resena">resena
	^resena</body>

<body package="CineTeatro" selector="resena:">resena: unResena
	resena := unResena</body>

<body package="CineTeatro" selector="puntaje">puntaje
	^puntaje</body>

<body package="CineTeatro" selector="puntaje:">puntaje: unPuntaje
	puntaje := unPuntaje</body>

<body package="CineTeatro" selector="fecha">fecha
	^fecha</body>

<body package="CineTeatro" selector="fecha:">fecha: unFecha
	fecha := unFecha</body>

</methods>

<methods>
<class-id>Critica class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

<body package="CineTeatro" selector="critico:resena:puntaje:fecha:">critico: unId resena: unTexto puntaje: unPuntaje fecha: unaFecha
	(unPuntaje between: 1 and: 10) ifFalse: [^ErrorCine new raiseSignal: 'El puntaje debe estar entre 1 y 10'].
	^self new
		idCritico: unId;
		resena: unTexto;
		puntaje: unPuntaje;
		fecha: unaFecha;
		yourself</body>

</methods>

<methods>
<class-id>Critica</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	idCritico := nil.
	resena := ''.
	puntaje := 0.
	fecha := nil</body>

</methods>

<methods>
<class-id>Critica</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: puntaje printString , '/10 - ' , resena</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="titulo">titulo
	^titulo</body>

<body package="CineTeatro" selector="titulo:">titulo: unTitulo
	titulo := unTitulo</body>

<body package="CineTeatro" selector="descripcion">descripcion
	^descripcion</body>

<body package="CineTeatro" selector="descripcion:">descripcion: unDescripcion
	descripcion := unDescripcion</body>

<body package="CineTeatro" selector="duracion">duracion
	^duracion</body>

<body package="CineTeatro" selector="duracion:">duracion: unDuracion
	duracion := unDuracion</body>

<body package="CineTeatro" selector="clasificacion">clasificacion
	^clasificacion</body>

<body package="CineTeatro" selector="clasificacion:">clasificacion: unClasificacion
	clasificacion := unClasificacion</body>

<body package="CineTeatro" selector="elenco">elenco
	^elenco</body>

<body package="CineTeatro" selector="elenco:">elenco: unElenco
	elenco := unElenco</body>

<body package="CineTeatro" selector="director">director
	^director</body>

<body package="CineTeatro" selector="director:">director: unDirector
	director := unDirector</body>

<body package="CineTeatro" selector="estado">estado
	^estado</body>

<body package="CineTeatro" selector="estado:">estado: unEstado
	estado := unEstado</body>

</methods>

<methods>
<class-id>ObraArtistica class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	titulo := ''.
	descripcion := ''.
	duracion := 0.
	clasificacion := ''.
	elenco := OrderedCollection new.
	director := nil.
	estado := #enCartel</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>estado</category>

<body package="CineTeatro" selector="estaEnCartel">estaEnCartel
	^estado = #enCartel</body>

<body package="CineTeatro" selector="ponerEnCartel">ponerEnCartel
	estado := #enCartel</body>

<body package="CineTeatro" selector="sacarDeCartel">sacarDeCartel
	estado := #fueraDeCartel</body>

<body package="CineTeatro" selector="textoEstado">textoEstado
	^self estaEnCartel ifTrue: ['En cartel'] ifFalse: ['Fuera de cartel']</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	"#pelicula o #obra"
	^self subclassResponsibility</body>

<body package="CineTeatro" selector="tipoTexto">tipoTexto
	^self subclassResponsibility</body>

<body package="CineTeatro" selector="puedePresentarseEn:">puedePresentarseEn: unaSala
	"Indica si la sala admite este tipo de obra"
	^self subclassResponsibility</body>

<body package="CineTeatro" selector="admiteCriticas">admiteCriticas
	^false</body>

<body package="CineTeatro" selector="esPelicula">esPelicula
	^false</body>

<body package="CineTeatro" selector="criticas">criticas
	^#()</body>

<body package="CineTeatro" selector="agregarCritica:">agregarCritica: unaCritica
	^ErrorCine new raiseSignal: 'Solo se pueden registrar criticas de peliculas, no de obras de teatro'</body>

<body package="CineTeatro" selector="promedioCriticas">promedioCriticas
	| cs |
	cs := self criticas.
	cs isEmpty ifTrue: [^0].
	^(cs inject: 0 into: [:suma :c | suma + c puntaje]) / cs size</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>elenco</category>

<body package="CineTeatro" selector="agregarAlElenco:">agregarAlElenco: unIdPersona
	(elenco includes: unIdPersona) ifTrue: [^ErrorCine new raiseSignal: 'La persona ya forma parte del elenco'].
	elenco add: unIdPersona</body>

<body package="CineTeatro" selector="participa:">participa: unIdPersona
	^director = unIdPersona or: [elenco includes: unIdPersona]</body>

</methods>

<methods>
<class-id>ObraArtistica</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: '#' , id printString , ' ' , titulo , ' [' , self tipoTexto , ', ' , duracion printString , ' min, ' , clasificacion , ', ' , self textoEstado , ']'</body>

</methods>

<methods>
<class-id>Pelicula</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	super initialize.
	criticas := OrderedCollection new</body>

</methods>

<methods>
<class-id>Pelicula</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^#pelicula</body>

<body package="CineTeatro" selector="tipoTexto">tipoTexto
	^'Pelicula'</body>

<body package="CineTeatro" selector="puedePresentarseEn:">puedePresentarseEn: unaSala
	^unaSala permitePeliculas</body>

<body package="CineTeatro" selector="admiteCriticas">admiteCriticas
	^true</body>

<body package="CineTeatro" selector="esPelicula">esPelicula
	^true</body>

<body package="CineTeatro" selector="criticas">criticas
	^criticas</body>

<body package="CineTeatro" selector="agregarCritica:">agregarCritica: unaCritica
	"Un critico deja una sola critica por pelicula: si ya existia, se reemplaza"
	| anterior |
	anterior := criticas detect: [:c | c idCritico = unaCritica idCritico] ifNone: [nil].
	anterior isNil ifFalse: [criticas remove: anterior].
	criticas add: unaCritica</body>

</methods>

<methods>
<class-id>ObraTeatro</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^#obra</body>

<body package="CineTeatro" selector="tipoTexto">tipoTexto
	^'Obra de teatro'</body>

<body package="CineTeatro" selector="puedePresentarseEn:">puedePresentarseEn: unaSala
	^unaSala permiteTeatro</body>

</methods>

<methods>
<class-id>Butaca</class-id> <category>accessing</category>

<body package="CineTeatro" selector="fila">fila
	^fila</body>

<body package="CineTeatro" selector="fila:">fila: unFila
	fila := unFila</body>

<body package="CineTeatro" selector="numero">numero
	^numero</body>

<body package="CineTeatro" selector="numero:">numero: unNumero
	numero := unNumero</body>

<body package="CineTeatro" selector="posicionX">posicionX
	^posicionX</body>

<body package="CineTeatro" selector="posicionX:">posicionX: unPosicionX
	posicionX := unPosicionX</body>

<body package="CineTeatro" selector="posicionY">posicionY
	^posicionY</body>

<body package="CineTeatro" selector="posicionY:">posicionY: unPosicionY
	posicionY := unPosicionY</body>

</methods>

<methods>
<class-id>Butaca class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

<body package="CineTeatro" selector="fila:numero:x:y:">fila: unaLetra numero: unNumero x: x y: y
	^self new
		fila: unaLetra;
		numero: unNumero;
		posicionX: x;
		posicionY: y;
		yourself</body>

</methods>

<methods>
<class-id>Butaca</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	fila := ''.
	numero := 0.
	posicionX := 0.
	posicionY := 0</body>

</methods>

<methods>
<class-id>Butaca</class-id> <category>comparing</category>

<body package="CineTeatro" selector="codigo">codigo
	"Ej: 'C7'"
	^fila , numero printString</body>

<body package="CineTeatro" selector="=">= otra
	^(otra isKindOf: Butaca) and: [fila = otra fila and: [numero = otra numero]]</body>

<body package="CineTeatro" selector="hash">hash
	^fila hash bitXor: numero hash</body>

</methods>

<methods>
<class-id>Butaca</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: self codigo</body>

</methods>

<methods>
<class-id>Sala</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="nombre">nombre
	^nombre</body>

<body package="CineTeatro" selector="nombre:">nombre: unNombre
	nombre := unNombre</body>

<body package="CineTeatro" selector="permitePeliculas">permitePeliculas
	^permitePeliculas</body>

<body package="CineTeatro" selector="permitePeliculas:">permitePeliculas: unPermitePeliculas
	permitePeliculas := unPermitePeliculas</body>

<body package="CineTeatro" selector="permiteTeatro">permiteTeatro
	^permiteTeatro</body>

<body package="CineTeatro" selector="permiteTeatro:">permiteTeatro: unPermiteTeatro
	permiteTeatro := unPermiteTeatro</body>

<body package="CineTeatro" selector="butacas">butacas
	^butacas</body>

<body package="CineTeatro" selector="butacas:">butacas: unButacas
	butacas := unButacas</body>

</methods>

<methods>
<class-id>Sala class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Sala</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	nombre := ''.
	permitePeliculas := true.
	permiteTeatro := false.
	butacas := OrderedCollection new</body>

</methods>

<methods>
<class-id>Sala</class-id> <category>butacas</category>

<body package="CineTeatro" selector="generarButacasFilas:porFila:">generarButacasFilas: cantFilas porFila: cantPorFila
	"Genera las butacas A1..; deja un pasillo central (posicionX salta una columna en la mitad)"
	| letra x |
	butacas := OrderedCollection new.
	1 to: cantFilas do: [:f |
		letra := String with: (Character value: 64 + f).
		1 to: cantPorFila do: [:n |
			x := n &gt; (cantPorFila // 2) ifTrue: [n + 1] ifFalse: [n].
			butacas add: (Butaca fila: letra numero: n x: x y: f)]]</body>

<body package="CineTeatro" selector="capacidad">capacidad
	^butacas size</body>

<body package="CineTeatro" selector="butacaDeCodigo:">butacaDeCodigo: unCodigo
	^butacas detect: [:b | b codigo = unCodigo asUppercase] ifNone: [nil]</body>

<body package="CineTeatro" selector="tiposPermitidosTexto">tiposPermitidosTexto
	(permitePeliculas and: [permiteTeatro]) ifTrue: [^'Peliculas y teatro'].
	permitePeliculas ifTrue: [^'Solo peliculas'].
	permiteTeatro ifTrue: [^'Solo teatro'].
	^'Ninguno'</body>

<body package="CineTeatro" selector="planoMarcando:">planoMarcando: codigosOcupados
	"Dibuja el plano de la sala usando las posiciones (x,y) de las butacas.
	 Las ocupadas se muestran como XX y las libres con su numero."
	| ws maxX maxY ancho |
	ws := WriteStream on: (String new: 500).
	butacas isEmpty ifTrue: [^'(sala sin butacas)'].
	maxX := butacas inject: 0 into: [:m :b | m max: b posicionX].
	maxY := butacas inject: 0 into: [:m :b | m max: b posicionY].
	ancho := maxX * 3.
	ws nextPutAll: '    '; nextPutAll: (String new: ancho withAll: $=); cr.
	ws nextPutAll: '    '; nextPutAll: (UtilCine rellenar: (String new: ((ancho - 20) // 2 max: 0) withAll: $ ) , 'PANTALLA / ESCENARIO' a: ancho); cr.
	ws nextPutAll: '    '; nextPutAll: (String new: ancho withAll: $=); cr; cr.
	1 to: maxY do: [:y | | fila |
		fila := butacas select: [:b | b posicionY = y].
		fila isEmpty ifFalse: [
			ws nextPutAll: ' ' , fila first fila , '  '.
			1 to: maxX do: [:x | | b |
				b := fila detect: [:each | each posicionX = x] ifNone: [nil].
				b isNil
					ifTrue: [ws nextPutAll: '   ']
					ifFalse: [
						(codigosOcupados includes: b codigo)
							ifTrue: [ws nextPutAll: ' XX']
							ifFalse: [ws nextPutAll: ' ' , (UtilCine pad: b numero digitos: 2)]]].
			ws cr]].
	ws cr; nextPutAll: '  XX = ocupada    nn = libre (numero de butaca)'.
	^ws contents</body>

</methods>

<methods>
<class-id>Sala</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: '#' , id printString , ' ' , nombre , ' (' , self capacidad printString , ' butacas, ' , self tiposPermitidosTexto , ')'</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="idObra">idObra
	^idObra</body>

<body package="CineTeatro" selector="idObra:">idObra: unIdObra
	idObra := unIdObra</body>

<body package="CineTeatro" selector="idSala">idSala
	^idSala</body>

<body package="CineTeatro" selector="idSala:">idSala: unIdSala
	idSala := unIdSala</body>

<body package="CineTeatro" selector="fecha">fecha
	^fecha</body>

<body package="CineTeatro" selector="fecha:">fecha: unFecha
	fecha := unFecha</body>

<body package="CineTeatro" selector="horaInicio">horaInicio
	^horaInicio</body>

<body package="CineTeatro" selector="horaInicio:">horaInicio: unHoraInicio
	horaInicio := unHoraInicio</body>

<body package="CineTeatro" selector="duracion">duracion
	^duracion</body>

<body package="CineTeatro" selector="duracion:">duracion: unDuracion
	duracion := unDuracion</body>

<body package="CineTeatro" selector="precioEntrada">precioEntrada
	^precioEntrada</body>

<body package="CineTeatro" selector="precioEntrada:">precioEntrada: unPrecioEntrada
	precioEntrada := unPrecioEntrada</body>

<body package="CineTeatro" selector="capacidad">capacidad
	^capacidad</body>

<body package="CineTeatro" selector="capacidad:">capacidad: unCapacidad
	capacidad := unCapacidad</body>

<body package="CineTeatro" selector="estado">estado
	^estado</body>

<body package="CineTeatro" selector="estado:">estado: unEstado
	estado := unEstado</body>

<body package="CineTeatro" selector="listaReservas">listaReservas
	^listaReservas</body>

<body package="CineTeatro" selector="listaReservas:">listaReservas: unListaReservas
	listaReservas := unListaReservas</body>

<body package="CineTeatro" selector="listaVentas">listaVentas
	^listaVentas</body>

<body package="CineTeatro" selector="listaVentas:">listaVentas: unListaVentas
	listaVentas := unListaVentas</body>

</methods>

<methods>
<class-id>Funcion class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	idObra := nil.
	idSala := nil.
	fecha := nil.
	horaInicio := nil.
	duracion := 0.
	precioEntrada := 0.
	capacidad := 0.
	estado := #disponible.
	listaReservas := OrderedCollection new.
	listaVentas := OrderedCollection new</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>horarios</category>

<body package="CineTeatro" selector="inicioEnSegundos">inicioEnSegundos
	^UtilCine segundosDe: fecha hora: horaInicio</body>

<body package="CineTeatro" selector="finEnSegundos">finEnSegundos
	^self inicioEnSegundos + (duracion * 60)</body>

<body package="CineTeatro" selector="horaFin">horaFin
	^Time fromSeconds: (horaInicio asSeconds + (duracion * 60)) \\ 86400</body>

<body package="CineTeatro" selector="seSuperponeDesde:hasta:">seSuperponeDesde: inicioSeg hasta: finSeg
	^inicioSeg &lt; self finEnSegundos and: [self inicioEnSegundos &lt; finSeg]</body>

<body package="CineTeatro" selector="comenzoA:">comenzoA: ahoraSeg
	^ahoraSeg &gt;= self inicioEnSegundos</body>

<body package="CineTeatro" selector="segundosHastaInicioDesde:">segundosHastaInicioDesde: ahoraSeg
	^self inicioEnSegundos - ahoraSeg</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>ocupacion</category>

<body package="CineTeatro" selector="reservasActivas">reservasActivas
	"Reservas pendientes o confirmadas (no canceladas)"
	^listaReservas reject: [:r | r estaCancelada]</body>

<body package="CineTeatro" selector="reservasPendientes">reservasPendientes
	^listaReservas select: [:r | r estaPendiente]</body>

<body package="CineTeatro" selector="codigosOcupados">codigosOcupados
	| ocupados |
	ocupados := Set new.
	self reservasActivas do: [:r | r listaButacasReservadas do: [:b | ocupados add: b codigo]].
	listaVentas do: [:v | v butacasVendidas do: [:b | ocupados add: b codigo]].
	^ocupados</body>

<body package="CineTeatro" selector="estaOcupada:">estaOcupada: unCodigo
	^self codigosOcupados includes: unCodigo</body>

<body package="CineTeatro" selector="cantidadOcupadas">cantidadOcupadas
	^self codigosOcupados size</body>

<body package="CineTeatro" selector="butacasLibres">butacasLibres
	^capacidad - self cantidadOcupadas</body>

<body package="CineTeatro" selector="porcentajeOcupacion">porcentajeOcupacion
	capacidad = 0 ifTrue: [^0].
	^self cantidadOcupadas * 100 / capacidad</body>

<body package="CineTeatro" selector="estaAgotada">estaAgotada
	^estado = #agotada</body>

<body package="CineTeatro" selector="actualizarEstado">actualizarEstado
	"Si todas las butacas estan reservadas o vendidas, la funcion pasa a estar agotada"
	estado := self cantidadOcupadas &gt;= capacidad ifTrue: [#agotada] ifFalse: [#disponible]</body>

<body package="CineTeatro" selector="agregarReserva:">agregarReserva: unaReserva
	listaReservas add: unaReserva.
	self actualizarEstado</body>

<body package="CineTeatro" selector="agregarVenta:">agregarVenta: unaVenta
	listaVentas add: unaVenta.
	self actualizarEstado</body>

<body package="CineTeatro" selector="tieneMovimientos">tieneMovimientos
	"Tiene alguna reserva (en cualquier estado, tambien cancelada) o alguna venta.
	 Una funcion con movimientos no se elimina: se perderia su historial y los
	 numeros de reserva volverian a usarse."
	^listaReservas notEmpty or: [listaVentas notEmpty]</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>ventas</category>

<body package="CineTeatro" selector="entradasVendidas">entradasVendidas
	^listaVentas inject: 0 into: [:suma :v | suma + v cantidadEntradas]</body>

<body package="CineTeatro" selector="recaudacion">recaudacion
	^listaVentas inject: 0 into: [:suma :v | suma + v monto]</body>

</methods>

<methods>
<class-id>Funcion</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: 'Funcion #' , id printString , ' ' , (UtilCine textoFecha: fecha) , ' ' , (UtilCine textoHora: horaInicio)</body>

</methods>

<methods>
<class-id>Reserva</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="idSocio">idSocio
	^idSocio</body>

<body package="CineTeatro" selector="idSocio:">idSocio: unIdSocio
	idSocio := unIdSocio</body>

<body package="CineTeatro" selector="idFuncion">idFuncion
	^idFuncion</body>

<body package="CineTeatro" selector="idFuncion:">idFuncion: unIdFuncion
	idFuncion := unIdFuncion</body>

<body package="CineTeatro" selector="listaButacasReservadas">listaButacasReservadas
	^listaButacasReservadas</body>

<body package="CineTeatro" selector="listaButacasReservadas:">listaButacasReservadas: unListaButacasReservadas
	listaButacasReservadas := unListaButacasReservadas</body>

<body package="CineTeatro" selector="fechaReserva">fechaReserva
	^fechaReserva</body>

<body package="CineTeatro" selector="fechaReserva:">fechaReserva: unFechaReserva
	fechaReserva := unFechaReserva</body>

<body package="CineTeatro" selector="fechaCancelacion">fechaCancelacion
	^fechaCancelacion</body>

<body package="CineTeatro" selector="fechaCancelacion:">fechaCancelacion: unFechaCancelacion
	fechaCancelacion := unFechaCancelacion</body>

<body package="CineTeatro" selector="precioUnitario">precioUnitario
	^precioUnitario</body>

<body package="CineTeatro" selector="precioUnitario:">precioUnitario: unPrecio
	precioUnitario := unPrecio</body>

<body package="CineTeatro" selector="estado">estado
	^estado</body>

<body package="CineTeatro" selector="estado:">estado: unEstado
	estado := unEstado</body>

</methods>

<methods>
<class-id>Reserva class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Reserva class</class-id> <category>constantes</category>

<body package="CineTeatro" selector="horasLimiteCancelacion">horasLimiteCancelacion
	"Las reservas se pueden cancelar sin costo hasta 24 horas antes de la funcion"
	^24</body>

</methods>

<methods>
<class-id>Reserva</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	idSocio := nil.
	idFuncion := nil.
	listaButacasReservadas := OrderedCollection new.
	fechaReserva := nil.
	fechaCancelacion := nil.
	estado := #pendiente.
	precioUnitario := 0</body>

</methods>

<methods>
<class-id>Reserva</class-id> <category>estado</category>

<body package="CineTeatro" selector="estaPendiente">estaPendiente
	^estado = #pendiente</body>

<body package="CineTeatro" selector="estaConfirmada">estaConfirmada
	^estado = #confirmada</body>

<body package="CineTeatro" selector="estaCancelada">estaCancelada
	^estado = #cancelada</body>

<body package="CineTeatro" selector="confirmar">confirmar
	estado := #confirmada</body>

<body package="CineTeatro" selector="cancelarEl:">cancelarEl: unaFecha
	estado := #cancelada.
	fechaCancelacion := unaFecha</body>

<body package="CineTeatro" selector="puedeCancelarseFaltando:">puedeCancelarseFaltando: segundosHastaFuncion
	"Sin costo solo si falta al menos el limite de horas para la funcion"
	^self estaPendiente and: [segundosHastaFuncion &gt;= (self class horasLimiteCancelacion * 3600)]</body>

</methods>

<methods>
<class-id>Reserva</class-id> <category>consultas</category>

<body package="CineTeatro" selector="cantidadButacas">cantidadButacas
	^listaButacasReservadas size</body>

<body package="CineTeatro" selector="importeBruto">importeBruto
	"Lo que valen las butacas reservadas al precio del dia de la reserva, sin descuentos"
	^precioUnitario * self cantidadButacas</body>

<body package="CineTeatro" selector="textoButacas">textoButacas
	| ws |
	ws := WriteStream on: (String new: 40).
	listaButacasReservadas do: [:b | ws nextPutAll: b codigo] separatedBy: [ws space].
	^ws contents</body>

</methods>

<methods>
<class-id>Reserva</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: 'Reserva #' , id printString , ' [' , estado , '] butacas: ' , self textoButacas</body>

</methods>

<methods>
<class-id>MedioPago class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>MedioPago</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^self subclassResponsibility</body>

<body package="CineTeatro" selector="nombre">nombre
	^self subclassResponsibility</body>

<body package="CineTeatro" selector="descripcion">descripcion
	^self nombre</body>

</methods>

<methods>
<class-id>MedioPago</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: self descripcion</body>

</methods>

<methods>
<class-id>PagoEfectivo</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^#efectivo</body>

<body package="CineTeatro" selector="nombre">nombre
	^'Efectivo'</body>

</methods>

<methods>
<class-id>PagoTarjeta</class-id> <category>accessing</category>

<body package="CineTeatro" selector="tipoTarjeta">tipoTarjeta
	^tipoTarjeta</body>

<body package="CineTeatro" selector="tipoTarjeta:">tipoTarjeta: unTipoTarjeta
	tipoTarjeta := unTipoTarjeta</body>

<body package="CineTeatro" selector="marca">marca
	^marca</body>

<body package="CineTeatro" selector="marca:">marca: unMarca
	marca := unMarca</body>

<body package="CineTeatro" selector="titular">titular
	^titular</body>

<body package="CineTeatro" selector="titular:">titular: unTitular
	titular := unTitular</body>

<body package="CineTeatro" selector="ultimosDigitos">ultimosDigitos
	^ultimosDigitos</body>

<body package="CineTeatro" selector="ultimosDigitos:">ultimosDigitos: unUltimosDigitos
	ultimosDigitos := unUltimosDigitos</body>

<body package="CineTeatro" selector="cuotas">cuotas
	^cuotas</body>

<body package="CineTeatro" selector="cuotas:">cuotas: unCuotas
	cuotas := unCuotas</body>

</methods>

<methods>
<class-id>PagoTarjeta</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	tipoTarjeta := #credito.
	marca := ''.
	titular := ''.
	ultimosDigitos := ''.
	cuotas := 1</body>

</methods>

<methods>
<class-id>PagoTarjeta</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^#tarjeta</body>

<body package="CineTeatro" selector="nombre">nombre
	^'Tarjeta'</body>

<body package="CineTeatro" selector="descripcion">descripcion
	^'Tarjeta de ' , tipoTarjeta , ' ' , marca , ' **** ' , ultimosDigitos , ' (' , cuotas printString , ' cuota/s) titular: ' , titular</body>

</methods>

<methods>
<class-id>PagoTransferencia</class-id> <category>accessing</category>

<body package="CineTeatro" selector="aliasOrigen">aliasOrigen
	^aliasOrigen</body>

<body package="CineTeatro" selector="aliasOrigen:">aliasOrigen: unAliasOrigen
	aliasOrigen := unAliasOrigen</body>

<body package="CineTeatro" selector="numeroOperacion">numeroOperacion
	^numeroOperacion</body>

<body package="CineTeatro" selector="numeroOperacion:">numeroOperacion: unNumeroOperacion
	numeroOperacion := unNumeroOperacion</body>

</methods>

<methods>
<class-id>PagoTransferencia</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	aliasOrigen := ''.
	numeroOperacion := ''</body>

</methods>

<methods>
<class-id>PagoTransferencia</class-id> <category>polimorfismo</category>

<body package="CineTeatro" selector="tipo">tipo
	^#transferencia</body>

<body package="CineTeatro" selector="nombre">nombre
	^'Transferencia'</body>

<body package="CineTeatro" selector="descripcion">descripcion
	^'Transferencia desde ' , aliasOrigen , ' (op. ' , numeroOperacion , ')'</body>

</methods>

<methods>
<class-id>Venta</class-id> <category>accessing</category>

<body package="CineTeatro" selector="id">id
	^id</body>

<body package="CineTeatro" selector="id:">id: unId
	id := unId</body>

<body package="CineTeatro" selector="idReserva">idReserva
	^idReserva</body>

<body package="CineTeatro" selector="idReserva:">idReserva: unIdReserva
	idReserva := unIdReserva</body>

<body package="CineTeatro" selector="idFuncion">idFuncion
	^idFuncion</body>

<body package="CineTeatro" selector="idFuncion:">idFuncion: unIdFuncion
	idFuncion := unIdFuncion</body>

<body package="CineTeatro" selector="idSocio">idSocio
	^idSocio</body>

<body package="CineTeatro" selector="idSocio:">idSocio: unIdSocio
	idSocio := unIdSocio</body>

<body package="CineTeatro" selector="fecha">fecha
	^fecha</body>

<body package="CineTeatro" selector="fecha:">fecha: unFecha
	fecha := unFecha</body>

<body package="CineTeatro" selector="hora">hora
	^hora</body>

<body package="CineTeatro" selector="hora:">hora: unHora
	hora := unHora</body>

<body package="CineTeatro" selector="monto">monto
	^monto</body>

<body package="CineTeatro" selector="monto:">monto: unMonto
	monto := unMonto</body>

<body package="CineTeatro" selector="medioPago">medioPago
	^medioPago</body>

<body package="CineTeatro" selector="medioPago:">medioPago: unMedioPago
	medioPago := unMedioPago</body>

<body package="CineTeatro" selector="butacasVendidas">butacasVendidas
	^butacasVendidas</body>

<body package="CineTeatro" selector="butacasVendidas:">butacasVendidas: unButacasVendidas
	butacasVendidas := unButacasVendidas</body>

</methods>

<methods>
<class-id>Venta class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	"Answer a newly created and initialized instance."
	^super new initialize</body>

</methods>

<methods>
<class-id>Venta</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	id := nil.
	idReserva := nil.
	idFuncion := nil.
	idSocio := nil.
	fecha := nil.
	hora := nil.
	monto := 0.
	medioPago := nil.
	butacasVendidas := OrderedCollection new</body>

</methods>

<methods>
<class-id>Venta</class-id> <category>consultas</category>

<body package="CineTeatro" selector="esDeSocio">esDeSocio
	^idSocio notNil</body>

<body package="CineTeatro" selector="esDirecta">esDirecta
	^idReserva isNil</body>

<body package="CineTeatro" selector="tipoCliente">tipoCliente
	^self esDeSocio ifTrue: ['Socio'] ifFalse: ['No socio']</body>

<body package="CineTeatro" selector="cantidadEntradas">cantidadEntradas
	^butacasVendidas size</body>

<body package="CineTeatro" selector="textoButacas">textoButacas
	| ws |
	ws := WriteStream on: (String new: 40).
	butacasVendidas do: [:b | ws nextPutAll: b codigo] separatedBy: [ws space].
	^ws contents</body>

</methods>

<methods>
<class-id>Venta</class-id> <category>printing</category>

<body package="CineTeatro" selector="printOn:">printOn: aStream
	aStream nextPutAll: 'Venta #' , id printString , ' ' , (UtilCine textoMoneda: monto) , ' (' , self tipoCliente , ')'</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>accessing</category>

<body package="CineTeatro" selector="personas">personas
	^personas</body>

<body package="CineTeatro" selector="personas:">personas: unPersonas
	personas := unPersonas</body>

<body package="CineTeatro" selector="socios">socios
	^socios</body>

<body package="CineTeatro" selector="socios:">socios: unSocios
	socios := unSocios</body>

<body package="CineTeatro" selector="criticos">criticos
	^criticos</body>

<body package="CineTeatro" selector="criticos:">criticos: unCriticos
	criticos := unCriticos</body>

<body package="CineTeatro" selector="obras">obras
	^obras</body>

<body package="CineTeatro" selector="obras:">obras: unObras
	obras := unObras</body>

<body package="CineTeatro" selector="salas">salas
	^salas</body>

<body package="CineTeatro" selector="salas:">salas: unSalas
	salas := unSalas</body>

<body package="CineTeatro" selector="funciones">funciones
	^funciones</body>

<body package="CineTeatro" selector="funciones:">funciones: unFunciones
	funciones := unFunciones</body>

<body package="CineTeatro" selector="carpetaDatos">carpetaDatos
	^carpetaDatos</body>

<body package="CineTeatro" selector="carpetaDatos:">carpetaDatos: unCarpetaDatos
	carpetaDatos := unCarpetaDatos</body>

</methods>

<methods>
<class-id>AdministradorCine class</class-id> <category>instance creation</category>

<body package="CineTeatro" selector="new">new
	^super new initialize</body>

<body package="CineTeatro" selector="enCarpeta:">enCarpeta: unaCarpeta
	"Crea un administrador que lee y guarda sus listas en la carpeta indicada"
	^self new
		carpetaDatos: unaCarpeta;
		cargar;
		yourself</body>

<body package="CineTeatro" selector="default">default
	"Instancia unica usada por la interfaz. Lee los datos de disco la primera vez."
	instancia isNil ifTrue: [instancia := self enCarpeta: self carpetaPorDefecto].
	^instancia</body>

<body package="CineTeatro" selector="reiniciar">reiniciar
	"Olvida la instancia en memoria (la proxima vez se vuelve a leer de disco)"
	instancia := nil</body>

<body package="CineTeatro" selector="carpetaPorDefecto">carpetaPorDefecto
	^'datosCine'</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	carpetaDatos := self class carpetaPorDefecto.
	self vaciar</body>

<body package="CineTeatro" selector="vaciar">vaciar
	personas := OrderedCollection new.
	socios := OrderedCollection new.
	criticos := OrderedCollection new.
	obras := OrderedCollection new.
	salas := OrderedCollection new.
	funciones := OrderedCollection new.
	listasIlegibles := OrderedCollection new</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>persistencia</category>

<body package="CineTeatro" selector="nombresDeListas">nombresDeListas
	^#(#personas #socios #criticos #obras #salas #funciones)</body>

<body package="CineTeatro" selector="archivoDe:">archivoDe: unNombre
	^carpetaDatos asFilename construct: unNombre , '.bos'</body>

<body package="CineTeatro" selector="guardar">guardar
	"Graba cada lista en su propio archivo (BOSS).
	 Si en la ultima carga hubo archivos que no se pudieron leer, no graba nada:
	 asi no se pisan con listas vacias (ver cargar y avisoListasIlegibles). En ese caso
	 vuelve a leer el disco, para que la memoria no quede con un cambio sin grabar."
	self listasIlegibles isEmpty ifFalse: [| aviso |
		aviso := self avisoListasIlegibles.
		self cargar.
		^self fallar: aviso , ' El ultimo cambio se descarto.'].
	carpetaDatos asFilename ensureDirectory.
	self nombresDeListas do: [:nombre | self guardarLista: (self perform: nombre) en: (self archivoDe: nombre)]</body>

<body package="CineTeatro" selector="guardarLista:en:">guardarLista: unaColeccion en: unArchivo
	| bos |
	bos := BinaryObjectStorage onNew: unArchivo writeStream.
	[bos nextPut: unaColeccion] ensure: [bos close]</body>

<body package="CineTeatro" selector="cargar">cargar
	"Lee cada lista de su archivo; si el archivo no existe, la lista queda vacia.
	 Si un archivo existe pero no se puede leer, su nombre se anota en listasIlegibles:
	 mientras haya alguno, guardar se niega a grabar para no perder esos datos."
	self vaciar.
	self nombresDeListas do: [:nombre | | archivo |
		archivo := self archivoDe: nombre.
		archivo exists ifTrue: [
			[self perform: (nombre , ':') asSymbol with: (self leerListaDe: archivo)]
				on: Error
				do: [:e |
					self listasIlegibles add: nombre.
					Transcript cr; show: 'No se pudo leer ' , archivo asString , ': ' , e description.
					e return: nil]]]</body>

<body package="CineTeatro" selector="leerListaDe:">leerListaDe: unArchivo
	| bos lista |
	bos := BinaryObjectStorage onOldNoScan: unArchivo readStream.
	[lista := bos next] ensure: [bos close].
	(lista isKindOf: OrderedCollection) ifFalse: [^self error: 'el archivo no contiene una lista'].
	^lista</body>

<body package="CineTeatro" selector="listasIlegibles">listasIlegibles
	"Nombres de las listas cuyo archivo existe pero no se pudo leer en la ultima carga"
	^listasIlegibles ifNil: [listasIlegibles := OrderedCollection new]</body>

<body package="CineTeatro" selector="avisoListasIlegibles">avisoListasIlegibles
	"Advertencia para el usuario cuando hay archivos de datos ilegibles (texto vacio si no hay ninguno)"
	| ws |
	self listasIlegibles isEmpty ifTrue: [^''].
	ws := WriteStream on: (String new: 300).
	ws nextPutAll: 'No se pudo leer: '.
	self listasIlegibles do: [:n | ws nextPutAll: n , '.bos'] separatedBy: [ws nextPutAll: ', '].
	ws nextPutAll: '. Para no perder esos datos no se grabara nada hasta que repare o quite el archivo y use "Recargar desde disco" (o "Cargar datos de prueba" para empezar de cero).'.
	^ws contents</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>reloj</category>

<body package="CineTeatro" selector="hoy">hoy
	^fechaSimulada isNil ifTrue: [Date today] ifFalse: [fechaSimulada]</body>

<body package="CineTeatro" selector="horaActual">horaActual
	^horaSimulada isNil ifTrue: [Time now] ifFalse: [horaSimulada]</body>

<body package="CineTeatro" selector="ahoraEnSegundos">ahoraEnSegundos
	^UtilCine segundosDe: self hoy hora: self horaActual</body>

<body package="CineTeatro" selector="simularFecha:hora:">simularFecha: unaFecha hora: unaHora
	"Permite fijar la fecha/hora del sistema (para pruebas y demostraciones)"
	fechaSimulada := unaFecha.
	horaSimulada := unaHora</body>

<body package="CineTeatro" selector="usarRelojReal">usarRelojReal
	fechaSimulada := nil.
	horaSimulada := nil</body>

<body package="CineTeatro" selector="usaRelojSimulado">usaRelojSimulado
	^fechaSimulada notNil</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>auxiliares</category>

<body package="CineTeatro" selector="fallar:">fallar: unMensaje
	^ErrorCine new raiseSignal: unMensaje</body>

<body package="CineTeatro" selector="siguienteIdEn:">siguienteIdEn: unaColeccion
	^(unaColeccion inject: 0 into: [:max :e | max max: e id]) + 1</body>

<body package="CineTeatro" selector="buscar:en:nombre:">buscar: unId en: unaColeccion nombre: unNombre
	^unaColeccion detect: [:e | e id = unId] ifNone: [self fallar: 'No existe ' , unNombre , ' con id ' , unId printString]</body>

<body package="CineTeatro" selector="todasLasReservas">todasLasReservas
	^funciones inject: OrderedCollection new into: [:todas :f | todas addAll: f listaReservas; yourself]</body>

<body package="CineTeatro" selector="todasLasVentas">todasLasVentas
	^funciones inject: OrderedCollection new into: [:todas :f | todas addAll: f listaVentas; yourself]</body>

<body package="CineTeatro" selector="ordenarFunciones:">ordenarFunciones: unaColeccion
	^(unaColeccion asSortedCollection: [:a :b | a inicioEnSegundos &lt;= b inicioEnSegundos]) asOrderedCollection</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>busquedas</category>

<body package="CineTeatro" selector="personaId:">personaId: unId
	^self buscar: unId en: personas nombre: 'una persona'</body>

<body package="CineTeatro" selector="personaConDni:">personaConDni: unDni
	^personas detect: [:p | p dni = unDni] ifNone: [nil]</body>

<body package="CineTeatro" selector="socioId:">socioId: unId
	^self buscar: unId en: socios nombre: 'un socio'</body>

<body package="CineTeatro" selector="socioDePersona:">socioDePersona: unIdPersona
	^socios detect: [:s | s idPersona = unIdPersona] ifNone: [nil]</body>

<body package="CineTeatro" selector="criticoId:">criticoId: unId
	^self buscar: unId en: criticos nombre: 'un critico'</body>

<body package="CineTeatro" selector="obraId:">obraId: unId
	^self buscar: unId en: obras nombre: 'una pelicula/obra'</body>

<body package="CineTeatro" selector="salaId:">salaId: unId
	^self buscar: unId en: salas nombre: 'una sala'</body>

<body package="CineTeatro" selector="funcionId:">funcionId: unId
	^self buscar: unId en: funciones nombre: 'una funcion'</body>

<body package="CineTeatro" selector="reservaId:">reservaId: unId
	^self buscar: unId en: self todasLasReservas nombre: 'una reserva'</body>

<body package="CineTeatro" selector="nombreDePersona:">nombreDePersona: unIdPersona
	unIdPersona isNil ifTrue: [^'-'].
	^(personas detect: [:p | p id = unIdPersona] ifNone: [nil])
		ifNil: ['(persona ' , unIdPersona printString , ')']
		ifNotNil: [:p | p nombre]</body>

<body package="CineTeatro" selector="nombreDeSocio:">nombreDeSocio: unIdSocio
	| socio |
	unIdSocio isNil ifTrue: [^'-'].
	socio := socios detect: [:s | s id = unIdSocio] ifNone: [nil].
	socio isNil ifTrue: [^'(socio ' , unIdSocio printString , ')'].
	^self nombreDePersona: socio idPersona</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion personas</category>

<body package="CineTeatro" selector="altaPersonaNombre:dni:fechaNacimiento:sexo:domicilio:email:celular:">altaPersonaNombre: unNombre dni: unDni fechaNacimiento: unaFecha sexo: unSexo domicilio: unDomicilio email: unEmail celular: unCelular
	| persona |
	unNombre trimSeparators isEmpty ifTrue: [^self fallar: 'El nombre es obligatorio'].
	(UtilCine esEntero: unDni) ifFalse: [^self fallar: 'El DNI debe ser numerico'].
	(self personaConDni: unDni trimSeparators) isNil ifFalse: [^self fallar: 'Ya existe una persona con DNI ' , unDni].
	(unaFecha notNil and: [unaFecha &gt; self hoy]) ifTrue: [^self fallar: 'La fecha de nacimiento no puede ser futura'].
	persona := Persona new
		id: (self siguienteIdEn: personas);
		nombre: unNombre trimSeparators;
		dni: unDni trimSeparators;
		fechaNacimiento: unaFecha;
		sexo: unSexo asUppercase;
		domicilio: unDomicilio;
		email: unEmail;
		celular: unCelular;
		yourself.
	personas add: persona.
	self guardar.
	^persona</body>

<body package="CineTeatro" selector="modificarPersona:nombre:domicilio:email:celular:">modificarPersona: unId nombre: unNombre domicilio: unDomicilio email: unEmail celular: unCelular
	| persona |
	persona := self personaId: unId.
	unNombre trimSeparators isEmpty ifTrue: [^self fallar: 'El nombre es obligatorio'].
	persona
		nombre: unNombre trimSeparators;
		domicilio: unDomicilio;
		email: unEmail;
		celular: unCelular.
	self guardar.
	^persona</body>

<body package="CineTeatro" selector="bajaPersona:">bajaPersona: unId
	"Solo se puede eliminar una persona que no sea socio, critico ni participe de una obra"
	| persona |
	persona := self personaId: unId.
	(self socioDePersona: unId) isNil ifFalse: [^self fallar: 'No se puede eliminar: la persona es socio (dar de baja el socio)'].
	(criticos anySatisfy: [:c | c idPersona = unId]) ifTrue: [^self fallar: 'No se puede eliminar: la persona es critico'].
	(obras anySatisfy: [:o | o participa: unId]) ifTrue: [^self fallar: 'No se puede eliminar: la persona participa en una pelicula/obra'].
	personas remove: persona.
	self guardar.
	^persona</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion socios</category>

<body package="CineTeatro" selector="altaSocioPersona:">altaSocioPersona: unIdPersona
	| persona existente socio |
	persona := self personaId: unIdPersona.
	existente := self socioDePersona: unIdPersona.
	existente isNil ifFalse: [
		existente estaActivo
			ifTrue: [^self fallar: persona nombre , ' ya es socio activo']
			ifFalse: [^self fallar: persona nombre , ' es socio inactivo: use Reactivar socio']].
	socio := Socio new
		id: (self siguienteIdEn: socios);
		idPersona: unIdPersona;
		fechaAlta: self hoy;
		activar;
		yourself.
	socios add: socio.
	self guardar.
	^socio</body>

<body package="CineTeatro" selector="darDeBajaSocio:">darDeBajaSocio: unIdSocio
	| socio |
	socio := self socioId: unIdSocio.
	socio estaActivo ifFalse: [^self fallar: 'El socio ya esta inactivo'].
	socio desactivar.
	self guardar.
	^socio</body>

<body package="CineTeatro" selector="reactivarSocio:">reactivarSocio: unIdSocio
	| socio |
	socio := self socioId: unIdSocio.
	socio estaActivo ifTrue: [^self fallar: 'El socio ya esta activo'].
	socio activar.
	self guardar.
	^socio</body>

<body package="CineTeatro" selector="sociosActivos">sociosActivos
	^socios select: [:s | s estaActivo]</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion criticos</category>

<body package="CineTeatro" selector="altaCriticoPersona:usuario:">altaCriticoPersona: unIdPersona usuario: unUsuario
	| critico |
	self personaId: unIdPersona.
	unUsuario trimSeparators isEmpty ifTrue: [^self fallar: 'El nombre de usuario es obligatorio'].
	(criticos anySatisfy: [:c | c idPersona = unIdPersona]) ifTrue: [^self fallar: 'La persona ya esta registrada como critico'].
	(criticos anySatisfy: [:c | c nombreUsuario = unUsuario trimSeparators]) ifTrue: [^self fallar: 'El nombre de usuario ya existe'].
	critico := Critico new
		id: (self siguienteIdEn: criticos);
		idPersona: unIdPersona;
		nombreUsuario: unUsuario trimSeparators;
		fechaAlta: self hoy;
		yourself.
	criticos add: critico.
	self guardar.
	^critico</body>

<body package="CineTeatro" selector="registrarCriticaDe:obra:resena:puntaje:">registrarCriticaDe: unIdCritico obra: unIdObra resena: unTexto puntaje: unPuntaje
	| obra critica |
	self criticoId: unIdCritico.
	obra := self obraId: unIdObra.
	obra admiteCriticas ifFalse: [^self fallar: 'Las obras de teatro no admiten criticas'].
	critica := Critica critico: unIdCritico resena: unTexto puntaje: unPuntaje fecha: self hoy.
	obra agregarCritica: critica.
	self guardar.
	^critica</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion obras</category>

<body package="CineTeatro" selector="registrarObra:titulo:descripcion:duracion:clasificacion:director:">registrarObra: unaObra titulo: unTitulo descripcion: unaDescripcion duracion: minutos clasificacion: unaClasificacion director: unIdDirector
	unTitulo trimSeparators isEmpty ifTrue: [^self fallar: 'El titulo es obligatorio'].
	minutos &gt; 0 ifFalse: [^self fallar: 'La duracion debe ser mayor a cero'].
	unIdDirector isNil ifFalse: [self personaId: unIdDirector].
	unaObra
		id: (self siguienteIdEn: obras);
		titulo: unTitulo trimSeparators;
		descripcion: unaDescripcion;
		duracion: minutos;
		clasificacion: unaClasificacion;
		director: unIdDirector;
		ponerEnCartel.
	obras add: unaObra.
	self guardar.
	^unaObra</body>

<body package="CineTeatro" selector="altaPeliculaTitulo:descripcion:duracion:clasificacion:director:">altaPeliculaTitulo: unTitulo descripcion: unaDescripcion duracion: minutos clasificacion: unaClasificacion director: unIdDirector
	^self registrarObra: Pelicula new titulo: unTitulo descripcion: unaDescripcion duracion: minutos clasificacion: unaClasificacion director: unIdDirector</body>

<body package="CineTeatro" selector="altaObraTeatroTitulo:descripcion:duracion:clasificacion:director:">altaObraTeatroTitulo: unTitulo descripcion: unaDescripcion duracion: minutos clasificacion: unaClasificacion director: unIdDirector
	^self registrarObra: ObraTeatro new titulo: unTitulo descripcion: unaDescripcion duracion: minutos clasificacion: unaClasificacion director: unIdDirector</body>

<body package="CineTeatro" selector="agregarAlElenco:obra:">agregarAlElenco: unIdPersona obra: unIdObra
	| obra |
	self personaId: unIdPersona.
	obra := self obraId: unIdObra.
	obra agregarAlElenco: unIdPersona.
	self guardar.
	^obra</body>

<body package="CineTeatro" selector="ponerEnCartel:">ponerEnCartel: unIdObra
	| obra |
	obra := self obraId: unIdObra.
	obra ponerEnCartel.
	self guardar.
	^obra</body>

<body package="CineTeatro" selector="sacarDeCartel:">sacarDeCartel: unIdObra
	| obra |
	obra := self obraId: unIdObra.
	obra sacarDeCartel.
	self guardar.
	^obra</body>

<body package="CineTeatro" selector="obrasEnCartel">obrasEnCartel
	^obras select: [:o | o estaEnCartel]</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion salas</category>

<body package="CineTeatro" selector="altaSalaNombre:filas:butacasPorFila:permitePeliculas:permiteTeatro:">altaSalaNombre: unNombre filas: cantFilas butacasPorFila: cantPorFila permitePeliculas: pelis permiteTeatro: teatro
	| sala |
	unNombre trimSeparators isEmpty ifTrue: [^self fallar: 'El nombre de la sala es obligatorio'].
	(salas anySatisfy: [:s | s nombre = unNombre trimSeparators]) ifTrue: [^self fallar: 'Ya existe una sala con ese nombre'].
	(cantFilas between: 1 and: 26) ifFalse: [^self fallar: 'La cantidad de filas debe estar entre 1 y 26 (A..Z)'].
	(cantPorFila between: 1 and: 40) ifFalse: [^self fallar: 'Las butacas por fila deben estar entre 1 y 40'].
	(pelis or: [teatro]) ifFalse: [^self fallar: 'La sala debe permitir peliculas, teatro o ambos'].
	sala := Sala new
		id: (self siguienteIdEn: salas);
		nombre: unNombre trimSeparators;
		permitePeliculas: pelis;
		permiteTeatro: teatro;
		yourself.
	sala generarButacasFilas: cantFilas porFila: cantPorFila.
	salas add: sala.
	self guardar.
	^sala</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>gestion funciones</category>

<body package="CineTeatro" selector="programarFuncionObra:sala:fecha:hora:precio:">programarFuncionObra: unIdObra sala: unIdSala fecha: unaFecha hora: unaHora precio: unPrecio
	| obra sala inicio fin conflictos funcion |
	obra := self obraId: unIdObra.
	sala := self salaId: unIdSala.
	obra estaEnCartel ifFalse: [^self fallar: 'Solo se pueden programar funciones de peliculas/obras en cartel'].
	(obra puedePresentarseEn: sala) ifFalse: [^self fallar: 'La sala ' , sala nombre , ' no admite ' , obra tipoTexto].
	unPrecio &gt; 0 ifFalse: [^self fallar: 'El precio de la entrada debe ser mayor a cero'].
	inicio := UtilCine segundosDe: unaFecha hora: unaHora.
	inicio &gt; self ahoraEnSegundos ifFalse: [^self fallar: 'No se puede programar una funcion en el pasado'].
	fin := inicio + (obra duracion * 60).
	conflictos := self funcionesEnSala: unIdSala desde: inicio hasta: fin.
	conflictos isEmpty ifFalse: [^self fallar: 'La sala no esta libre en ese horario. Se superpone con: ' , (self descripcionFuncion: conflictos first)].
	funcion := Funcion new
		id: (self siguienteIdEn: funciones);
		idObra: unIdObra;
		idSala: unIdSala;
		fecha: unaFecha;
		horaInicio: unaHora;
		duracion: obra duracion;
		precioEntrada: unPrecio;
		capacidad: sala capacidad;
		yourself.
	funcion actualizarEstado.
	funciones add: funcion.
	self guardar.
	^funcion</body>

<body package="CineTeatro" selector="cancelarFuncion:">cancelarFuncion: unIdFuncion
	| funcion |
	funcion := self funcionId: unIdFuncion.
	funcion tieneMovimientos ifTrue: [^self fallar: 'No se puede eliminar: la funcion tiene reservas (aunque esten canceladas) o ventas'].
	funciones remove: funcion.
	self guardar.
	^funcion</body>

<body package="CineTeatro" selector="modificarPrecio:funcion:">modificarPrecio: unPrecio funcion: unIdFuncion
	"Cambia el precio para las ventas y reservas que se hagan de ahora en mas.
	 Las reservas ya hechas no cambian: cada una guarda el precio al que se reservo."
	| funcion |
	funcion := self funcionId: unIdFuncion.
	unPrecio &gt; 0 ifFalse: [^self fallar: 'El precio debe ser mayor a cero'].
	funcion precioEntrada: unPrecio.
	self guardar.
	^funcion</body>

<body package="CineTeatro" selector="funcionesFuturas">funcionesFuturas
	| ahora |
	ahora := self ahoraEnSegundos.
	^self ordenarFunciones: (funciones reject: [:f | f comenzoA: ahora])</body>

<body package="CineTeatro" selector="descripcionCortaFuncion:">descripcionCortaFuncion: unaFuncion
	| obra |
	obra := obras detect: [:o | o id = unaFuncion idObra] ifNone: [nil].
	^'#' , unaFuncion id printString , ' ' , (UtilCine textoFecha: unaFuncion fecha) , ' ' , (UtilCine textoHora: unaFuncion horaInicio) , ' ' , (obra isNil ifTrue: ['?'] ifFalse: [obra titulo])</body>

<body package="CineTeatro" selector="descripcionFuncion:">descripcionFuncion: unaFuncion
	| obra sala |
	obra := obras detect: [:o | o id = unaFuncion idObra] ifNone: [nil].
	sala := salas detect: [:s | s id = unaFuncion idSala] ifNone: [nil].
	^'#' , unaFuncion id printString , ' ' , (UtilCine textoFecha: unaFuncion fecha) , ' ' , (UtilCine textoHora: unaFuncion horaInicio) , '-' , (UtilCine textoHora: unaFuncion horaFin) , ' | ' , (obra isNil ifTrue: ['?'] ifFalse: [obra titulo]) , ' | ' , (sala isNil ifTrue: ['?'] ifFalse: [sala nombre]) , ' | ' , (UtilCine textoMoneda: unaFuncion precioEntrada) , ' | ' , unaFuncion cantidadOcupadas printString , '/' , unaFuncion capacidad printString , (unaFuncion estaAgotada ifTrue: [' AGOTADA'] ifFalse: [''])</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>reservas</category>

<body package="CineTeatro" selector="butacas:paraFuncion:">butacas: unosCodigos paraFuncion: unaFuncion
	"Valida los codigos de butaca ingresados y devuelve las butacas de la sala"
	| sala resultado codigos |
	sala := self salaId: unaFuncion idSala.
	codigos := unosCodigos collect: [:c | c asUppercase].
	codigos isEmpty ifTrue: [^self fallar: 'Debe indicar al menos una butaca'].
	codigos asSet size = codigos size ifFalse: [^self fallar: 'Hay butacas repetidas'].
	resultado := OrderedCollection new.
	codigos do: [:c | | b |
		b := sala butacaDeCodigo: c.
		b isNil ifTrue: [^self fallar: 'La butaca ' , c , ' no existe en la sala ' , sala nombre].
		(unaFuncion estaOcupada: c) ifTrue: [^self fallar: 'La butaca ' , c , ' ya esta reservada o vendida'].
		resultado add: b].
	^resultado</body>

<body package="CineTeatro" selector="reservarSocio:funcion:butacas:">reservarSocio: unIdSocio funcion: unIdFuncion butacas: unosCodigos
	| socio funcion butacas reserva |
	socio := self socioId: unIdSocio.
	socio estaActivo ifFalse: [^self fallar: 'Solo los socios activos pueden reservar'].
	funcion := self funcionId: unIdFuncion.
	(funcion comenzoA: self ahoraEnSegundos) ifTrue: [^self fallar: 'La funcion ya comenzo o finalizo'].
	funcion estaAgotada ifTrue: [^self fallar: 'La funcion esta agotada'].
	butacas := self butacas: unosCodigos paraFuncion: funcion.
	reserva := Reserva new
		id: (self siguienteIdEn: self todasLasReservas);
		idSocio: unIdSocio;
		idFuncion: unIdFuncion;
		listaButacasReservadas: butacas;
		fechaReserva: self hoy;
		precioUnitario: funcion precioEntrada;
		yourself.
	funcion agregarReserva: reserva.
	self guardar.
	^reserva</body>

<body package="CineTeatro" selector="cancelarReserva:">cancelarReserva: unIdReserva
	"Se puede cancelar sin costo hasta 24 hs antes; despues ya no se anula y el socio debe pagarla"
	| reserva funcion |
	reserva := self reservaId: unIdReserva.
	reserva estaPendiente ifFalse: [^self fallar: 'Solo se pueden cancelar reservas pendientes (la reserva esta ' , reserva estado , ')'].
	funcion := self funcionId: reserva idFuncion.
	(reserva puedeCancelarseFaltando: (funcion segundosHastaInicioDesde: self ahoraEnSegundos))
		ifFalse: [^self fallar: 'Faltan menos de ' , Reserva horasLimiteCancelacion printString , ' horas para la funcion: la reserva ya no se puede anular y el socio debe pagarla'].
	reserva cancelarEl: self hoy.
	funcion actualizarEstado.
	self guardar.
	^reserva</body>

<body package="CineTeatro" selector="esCancelable:">esCancelable: unaReserva
	| funcion |
	funcion := funciones detect: [:f | f id = unaReserva idFuncion] ifNone: [^false].
	^unaReserva puedeCancelarseFaltando: (funcion segundosHastaInicioDesde: self ahoraEnSegundos)</body>

<body package="CineTeatro" selector="reservasPendientes">reservasPendientes
	^self todasLasReservas select: [:r | r estaPendiente]</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>ventas</category>

<body package="CineTeatro" selector="calcularMontoPrecio:cantidad:socio:">calcularMontoPrecio: unPrecio cantidad: unaCantidad socio: unSocioOrNil
	"Importe a cobrar, redondeado al centavo"
	| bruto monto |
	bruto := unPrecio * unaCantidad.
	monto := unSocioOrNil isNil ifTrue: [bruto] ifFalse: [unSocioOrNil aplicarDescuentoA: bruto].
	^(monto * 100) rounded / 100</body>

<body package="CineTeatro" selector="montoDeReserva:">montoDeReserva: unaReserva
	"Lo que el socio paga (o debe) por una reserva: el precio del dia en que reservo, con su descuento"
	^self calcularMontoPrecio: unaReserva precioUnitario cantidad: unaReserva cantidadButacas socio: (self socioId: unaReserva idSocio)</body>

<body package="CineTeatro" selector="venderReserva:medioPago:">venderReserva: unIdReserva medioPago: unMedioPago
	"Venta en base a una reserva: se venden las mismas butacas, al precio que tenia la entrada
	 cuando se reservo, y la reserva queda confirmada"
	| reserva funcion socio venta |
	reserva := self reservaId: unIdReserva.
	reserva estaPendiente ifFalse: [^self fallar: 'La reserva no esta pendiente de pago (esta ' , reserva estado , ')'].
	funcion := self funcionId: reserva idFuncion.
	socio := self socioId: reserva idSocio.
	venta := Venta new
		id: (self siguienteIdEn: self todasLasVentas);
		idReserva: reserva id;
		idFuncion: funcion id;
		idSocio: socio id;
		fecha: self hoy;
		hora: self horaActual;
		medioPago: unMedioPago;
		butacasVendidas: reserva listaButacasReservadas copy;
		monto: (self montoDeReserva: reserva);
		yourself.
	reserva confirmar.
	funcion agregarVenta: venta.
	self guardar.
	^venta</body>

<body package="CineTeatro" selector="venderFuncion:butacas:medioPago:socio:">venderFuncion: unIdFuncion butacas: unosCodigos medioPago: unMedioPago socio: unIdSocioOrNil
	"Venta directa (sin reserva previa). Si el comprador es socio activo se aplica el descuento."
	| funcion socio butacas venta |
	funcion := self funcionId: unIdFuncion.
	(funcion comenzoA: self ahoraEnSegundos) ifTrue: [^self fallar: 'La funcion ya comenzo o finalizo'].
	funcion estaAgotada ifTrue: [^self fallar: 'La funcion esta agotada'].
	socio := nil.
	unIdSocioOrNil isNil ifFalse: [
		socio := self socioId: unIdSocioOrNil.
		socio estaActivo ifFalse: [^self fallar: 'El socio esta inactivo: no tiene descuento']].
	butacas := self butacas: unosCodigos paraFuncion: funcion.
	venta := Venta new
		id: (self siguienteIdEn: self todasLasVentas);
		idReserva: nil;
		idFuncion: funcion id;
		idSocio: unIdSocioOrNil;
		fecha: self hoy;
		hora: self horaActual;
		medioPago: unMedioPago;
		butacasVendidas: butacas;
		monto: (self calcularMontoPrecio: funcion precioEntrada cantidad: butacas size socio: socio);
		yourself.
	funcion agregarVenta: venta.
	self guardar.
	^venta</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>consultas</category>

<body package="CineTeatro" selector="funcionesEnSala:desde:hasta:">funcionesEnSala: unIdSala desde: inicioSeg hasta: finSeg
	"Funciones de la sala que se superponen con el intervalo [inicio, fin)"
	^self ordenarFunciones: (funciones select: [:f | f idSala = unIdSala and: [f seSuperponeDesde: inicioSeg hasta: finSeg]])</body>

<body package="CineTeatro" selector="salaLibre:desde:hora:hasta:hora:">salaLibre: unIdSala desde: fecha1 hora: hora1 hasta: fecha2 hora: hora2
	"Consulta 1: la sala esta libre entre esas fechas y horarios?"
	| ini fin |
	self salaId: unIdSala.
	ini := UtilCine segundosDe: fecha1 hora: hora1.
	fin := UtilCine segundosDe: fecha2 hora: hora2.
	fin &gt; ini ifFalse: [^self fallar: 'El fin del intervalo debe ser posterior al inicio'].
	^(self funcionesEnSala: unIdSala desde: ini hasta: fin) isEmpty</body>

<body package="CineTeatro" selector="funcionesDelDia:">funcionesDelDia: unaFecha
	"Consulta 2a: funciones de una fecha"
	^self ordenarFunciones: (funciones select: [:f | f fecha = unaFecha])</body>

<body package="CineTeatro" selector="funcionesDeObra:">funcionesDeObra: unIdObra
	"Consulta 2b: funciones de una pelicula/obra"
	^self ordenarFunciones: (funciones select: [:f | f idObra = unIdObra])</body>

<body package="CineTeatro" selector="sociosConReservasPendientes">sociosConReservasPendientes
	"Consulta 3: socios con reservas pendientes de pago (socio -&gt; reservas)"
	| resultado |
	resultado := OrderedCollection new.
	socios do: [:s | | pendientes |
		pendientes := self reservasPendientes select: [:r | r idSocio = s id].
		pendientes isEmpty ifFalse: [resultado add: s -&gt; pendientes]].
	^resultado</body>

<body package="CineTeatro" selector="peliculasEnCarteleraPorCriticas">peliculasEnCarteleraPorCriticas
	"Consulta 4: peliculas en cartel con criticas, de mejor a peor promedio"
	^((obras select: [:o | o esPelicula and: [o estaEnCartel and: [o criticas notEmpty]]])
		asSortedCollection: [:a :b | a promedioCriticas &gt;= b promedioCriticas]) asOrderedCollection</body>

<body package="CineTeatro" selector="resumenIngresosDesde:hasta:">resumenIngresosDesde: fecha1 hasta: fecha2
	"Consulta 5: ingresos entre fechas, con totales y discriminado por tipo de cliente.
	 Devuelve un Dictionary con los totales."
	| ventas resumen porMedio |
	fecha2 &lt; fecha1 ifTrue: [^self fallar: 'La fecha final es anterior a la inicial'].
	ventas := self todasLasVentas select: [:v | v fecha between: fecha1 and: fecha2].
	resumen := Dictionary new.
	resumen at: #ventas put: ventas.
	resumen at: #totalSocios put: ((ventas select: [:v | v esDeSocio]) inject: 0 into: [:s :v | s + v monto]).
	resumen at: #totalNoSocios put: ((ventas reject: [:v | v esDeSocio]) inject: 0 into: [:s :v | s + v monto]).
	resumen at: #entradasSocios put: ((ventas select: [:v | v esDeSocio]) inject: 0 into: [:s :v | s + v cantidadEntradas]).
	resumen at: #entradasNoSocios put: ((ventas reject: [:v | v esDeSocio]) inject: 0 into: [:s :v | s + v cantidadEntradas]).
	resumen at: #total put: (resumen at: #totalSocios) + (resumen at: #totalNoSocios).
	porMedio := Dictionary new.
	ventas do: [:v | porMedio at: v medioPago nombre put: (porMedio at: v medioPago nombre ifAbsent: [0]) + v monto].
	resumen at: #porMedio put: porMedio.
	^resumen</body>

<body package="CineTeatro" selector="ocupacionPromedioPorObra">ocupacionPromedioPorObra
	"Consulta 6: ocupacion promedio de cada pelicula/obra (Array: obra, cantidad de funciones, % promedio)"
	| resultado |
	resultado := OrderedCollection new.
	obras do: [:o | | fs promedio |
		fs := funciones select: [:f | f idObra = o id].
		fs isEmpty ifFalse: [
			promedio := (fs inject: 0 into: [:s :f | s + f porcentajeOcupacion]) / fs size.
			resultado add: (Array with: o with: fs size with: promedio)]].
	^(resultado asSortedCollection: [:a :b | (a at: 3) &gt;= (b at: 3)]) asOrderedCollection</body>

<body package="CineTeatro" selector="funcionesAgotadas">funcionesAgotadas
	"Consulta 7"
	^self ordenarFunciones: (funciones select: [:f | f estaAgotada])</body>

<body package="CineTeatro" selector="planoDeFuncion:">planoDeFuncion: unIdFuncion
	"Consulta extra 1: plano de la sala con las butacas ocupadas/libres de una funcion"
	| funcion sala |
	funcion := self funcionId: unIdFuncion.
	sala := self salaId: funcion idSala.
	^sala planoMarcando: funcion codigosOcupados</body>

<body package="CineTeatro" selector="rankingObrasPorVentas">rankingObrasPorVentas
	"Consulta extra 2: peliculas/obras ordenadas por entradas vendidas (Array: obra, entradas, recaudacion)"
	| resultado |
	resultado := obras collect: [:o | | fs |
		fs := funciones select: [:f | f idObra = o id].
		Array with: o with: (fs inject: 0 into: [:s :f | s + f entradasVendidas]) with: (fs inject: 0 into: [:s :f | s + f recaudacion])].
	^(resultado asSortedCollection: [:a :b | (a at: 2) &gt; (b at: 2) or: [(a at: 2) = (b at: 2) and: [(a at: 3) &gt;= (b at: 3)]]]) asOrderedCollection</body>

<body package="CineTeatro" selector="reservasDeSocio:">reservasDeSocio: unIdSocio
	^self todasLasReservas select: [:r | r idSocio = unIdSocio]</body>

<body package="CineTeatro" selector="comprasDeSocio:">comprasDeSocio: unIdSocio
	^self todasLasVentas select: [:v | v idSocio = unIdSocio]</body>

<body package="CineTeatro" selector="totalGastadoPorSocio:">totalGastadoPorSocio: unIdSocio
	"Consulta extra 3 (historial del socio)"
	^(self comprasDeSocio: unIdSocio) inject: 0 into: [:s :v | s + v monto]</body>

<body package="CineTeatro" selector="proximasFuncionesConDisponibilidad">proximasFuncionesConDisponibilidad
	"Consulta extra 4: funciones que aun no comenzaron y tienen butacas libres"
	^self funcionesFuturas reject: [:f | f estaAgotada]</body>

<body package="CineTeatro" selector="obrasDePersona:">obrasDePersona: unIdPersona
	"Consulta extra 5: peliculas/obras en las que una persona dirige o actua"
	self personaId: unIdPersona.
	^obras select: [:o | o participa: unIdPersona]</body>

</methods>

<methods>
<class-id>AdministradorCine</class-id> <category>datos de prueba</category>

<body package="CineTeatro" selector="cargarDatosDePrueba">cargarDatosDePrueba
	"Borra todo y carga un juego de datos completo para probar el sistema.
	 Usa los mismos metodos de negocio (con validaciones) y el reloj simulado
	 para generar funciones y ventas en el pasado y en el futuro respecto de hoy."
	| hoy p o s f |
	hoy := Date today.
	self vaciar.
	"ensure: garantiza que el reloj vuelva a ser el real aunque algo falle en el medio"
	[self simularFecha: (hoy subtractDays: 20) hora: (Time fromSeconds: 9 * 3600).
	p := self cargarPersonasDePrueba.
	self cargarSociosYCriticosDePrueba: p.
	s := self cargarSalasDePrueba.
	o := self cargarObrasDePrueba: p.
	self cargarCriticasDePrueba: o.
	f := self cargarFuncionesDePrueba: o salas: s desde: hoy.
	self cargarMovimientosDePrueba: f desde: hoy]
		ensure: [self usarRelojReal].
	(self obraId: 5) sacarDeCartel.
	self guardar</body>

<body package="CineTeatro" selector="fecha:mes:anio:">fecha: d mes: m anio: a
	^Date newDay: d monthNumber: m year: a</body>

<body package="CineTeatro" selector="hora:minutos:">hora: h minutos: m
	^Time fromSeconds: h * 3600 + (m * 60)</body>

<body package="CineTeatro" selector="tarjeta:ultimos:cuotas:titular:">tarjeta: unTipo ultimos: digitos cuotas: n titular: unTitular
	^PagoTarjeta new
		tipoTarjeta: unTipo;
		marca: 'VISA';
		ultimosDigitos: digitos;
		cuotas: n;
		titular: unTitular;
		yourself</body>

<body package="CineTeatro" selector="cargarPersonasDePrueba">cargarPersonasDePrueba
	| datos |
	datos := #(
		#('Laura Gomez' '30111222' 12 3 1990 'F' 'San Martin 120, C. del Uruguay' 'laura.gomez@mail.com' '3442-401122')
		#('Martin Rodriguez' '28444555' 4 7 1985 'M' 'Rocamora 455, C. del Uruguay' 'mrodriguez@mail.com' '3442-402233')
		#('Sofia Fernandez' '35666777' 22 11 1994 'F' 'Galarza 890, C. del Uruguay' 'sofi.fer@mail.com' '3442-403344')
		#('Diego Lopez' '25888999' 9 1 1978 'M' 'Belgrano 33, Concepcion del Uruguay' 'diegol@mail.com' '3442-404455')
		#('Valeria Martinez' '32123456' 17 5 1988 'F' '9 de Julio 777, C. del Uruguay' 'vale.mtz@mail.com' '3442-405566')
		#('Joaquin Perez' '38222333' 2 2 1997 'M' 'Urquiza 1200, Concepcion del Uruguay' 'joaco.cine@mail.com' '3442-406677')
		#('Camila Sanchez' '36333444' 30 8 1995 'F' 'Moreno 56, C. del Uruguay' 'camisanchez@mail.com' '3442-407788')
		#('Lucas Romero' '31444555' 14 6 1989 'M' 'Mitre 980, C. del Uruguay' 'lucas.romero@mail.com' '3442-408899')
		#('Julieta Diaz' '24555666' 25 12 1975 'F' 'Rivadavia 300, Buenos Aires' 'jdiaz.dir@mail.com' '11-5550-1001')
		#('Tomas Alvarez' '22666777' 8 10 1970 'M' 'Corrientes 1500, Buenos Aires' 'talvarez@mail.com' '11-5550-1002')
		#('Ana Torres' '33777888' 19 4 1991 'F' 'Santa Fe 2100, Buenos Aires' 'ana.torres@mail.com' '11-5550-1003')
		#('Pablo Ruiz' '29888999' 11 9 1986 'M' 'Callao 640, Buenos Aires' 'pablo.ruiz@mail.com' '11-5550-1004')
		#('Micaela Herrera' '37999000' 6 3 1996 'F' 'Pellegrini 45, Parana' 'mica.herrera@mail.com' '343-555-2001')
		#('Federico Molina' '34000111' 27 7 1993 'M' 'Alem 210, Parana' 'fede.molina@mail.com' '343-555-2002')
		#('Carla Benitez' '39111000' 13 1 1999 'F' 'Sarmiento 87, C. del Uruguay' 'carla.b@mail.com' '3442-409900')
		#('Nicolas Castro' '27000222' 3 12 1982 'M' 'Lavalle 920, Buenos Aires' 'ncastro@mail.com' '11-5550-1005')
		#('Gabriela Ojeda' '40222111' 21 2 2001 'F' 'Colon 15, C. del Uruguay' 'gabi.ojeda@mail.com' '3442-410011')
		#('Ramiro Acosta' '41333222' 10 10 2002 'M' 'Artusi 340, C. del Uruguay' 'ramiacosta@mail.com' '3442-411122')).
	^datos collect: [:d |
		self
			altaPersonaNombre: (d at: 1)
			dni: (d at: 2)
			fechaNacimiento: (self fecha: (d at: 3) mes: (d at: 4) anio: (d at: 5))
			sexo: (d at: 6)
			domicilio: (d at: 7)
			email: (d at: 8)
			celular: (d at: 9)]</body>

<body package="CineTeatro" selector="cargarSociosYCriticosDePrueba:">cargarSociosYCriticosDePrueba: personasCreadas
	"Socios: personas 1 a 5 y 17 (la 5 queda inactiva). Criticos: personas 6, 7 y 8."
	#(1 2 3 4 5 17) do: [:i | self altaSocioPersona: (personasCreadas at: i) id].
	self darDeBajaSocio: (self socioDePersona: (personasCreadas at: 5) id) id.
	self altaCriticoPersona: (personasCreadas at: 6) id usuario: 'joaco_cinefilo'.
	self altaCriticoPersona: (personasCreadas at: 7) id usuario: 'cami.critica'.
	self altaCriticoPersona: (personasCreadas at: 8) id usuario: 'lucas_en_pantalla'</body>

<body package="CineTeatro" selector="cargarSalasDePrueba">cargarSalasDePrueba
	| resultado |
	resultado := OrderedCollection new.
	resultado add: (self altaSalaNombre: 'Sala 1 Lumiere' filas: 6 butacasPorFila: 10 permitePeliculas: true permiteTeatro: false).
	resultado add: (self altaSalaNombre: 'Sala 2 Borges' filas: 8 butacasPorFila: 12 permitePeliculas: true permiteTeatro: true).
	resultado add: (self altaSalaNombre: 'Sala 3 Microcine' filas: 3 butacasPorFila: 6 permitePeliculas: true permiteTeatro: false).
	resultado add: (self altaSalaNombre: 'Teatro Principal' filas: 10 butacasPorFila: 14 permitePeliculas: false permiteTeatro: true).
	^resultado</body>

<body package="CineTeatro" selector="cargarObrasDePrueba:">cargarObrasDePrueba: p
	| resultado o |
	resultado := OrderedCollection new.
	o := self altaPeliculaTitulo: 'La ultima funcion' descripcion: 'Un viejo proyectorista intenta salvar el cine de su pueblo.' duracion: 110 clasificacion: 'ATP' director: (p at: 9) id.
	#(11 12) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaPeliculaTitulo: 'Viento del sur' descripcion: 'Drama familiar en la costa del rio Uruguay.' duracion: 125 clasificacion: '+13' director: (p at: 10) id.
	#(13 14) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaPeliculaTitulo: 'Noche de estreno' descripcion: 'Thriller que transcurre durante el estreno de una obra.' duracion: 98 clasificacion: '+16' director: (p at: 16) id.
	#(11 15) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaPeliculaTitulo: 'El faro' descripcion: 'Dos guardianes aislados en una isla durante una tormenta.' duracion: 105 clasificacion: '+13' director: (p at: 9) id.
	#(12 14) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaPeliculaTitulo: 'Ciudad de papel' descripcion: 'Comedia romantica.' duracion: 92 clasificacion: 'ATP' director: (p at: 10) id.
	#(13 15) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaObraTeatroTitulo: 'La casa de Bernarda Alba' descripcion: 'Clasico de Federico Garcia Lorca.' duracion: 100 clasificacion: '+13' director: (p at: 16) id.
	#(11 13 15) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	o := self altaObraTeatroTitulo: 'Hamlet' descripcion: 'Tragedia de William Shakespeare.' duracion: 150 clasificacion: '+13' director: (p at: 10) id.
	#(12 14) do: [:i | o agregarAlElenco: (p at: i) id].
	resultado add: o.
	^resultado</body>

<body package="CineTeatro" selector="cargarCriticasDePrueba:">cargarCriticasDePrueba: o
	| c1 c2 c3 |
	c1 := (criticos at: 1) id.
	c2 := (criticos at: 2) id.
	c3 := (criticos at: 3) id.
	self registrarCriticaDe: c1 obra: (o at: 1) id resena: 'Emotiva y muy bien actuada.' puntaje: 9.
	self registrarCriticaDe: c2 obra: (o at: 1) id resena: 'Un homenaje al cine de barrio.' puntaje: 8.
	self registrarCriticaDe: c3 obra: (o at: 1) id resena: 'Imperdible.' puntaje: 10.
	self registrarCriticaDe: c1 obra: (o at: 2) id resena: 'Buena fotografia, ritmo lento.' puntaje: 7.
	self registrarCriticaDe: c2 obra: (o at: 2) id resena: 'Correcta, sin sorpresas.' puntaje: 6.
	self registrarCriticaDe: c1 obra: (o at: 3) id resena: 'Atrapante de principio a fin.' puntaje: 8.
	self registrarCriticaDe: c2 obra: (o at: 3) id resena: 'Gran giro final.' puntaje: 9.
	self registrarCriticaDe: c3 obra: (o at: 3) id resena: 'Algo previsible.' puntaje: 7.
	self registrarCriticaDe: c3 obra: (o at: 4) id resena: 'Visualmente impactante pero confusa.' puntaje: 5.
	self registrarCriticaDe: c2 obra: (o at: 5) id resena: 'Liviana y divertida.' puntaje: 6</body>

<body package="CineTeatro" selector="cargarFuncionesDePrueba:salas:desde:">cargarFuncionesDePrueba: o salas: s desde: hoy
	"Devuelve las funciones creadas en orden. Se programan con el reloj simulado 20 dias atras."
	| datos resultado prox ahora |
	datos := #(
		#(1 1 -10 18 0 4500)
		#(2 1 -10 21 0 4500)
		#(6 4 -7 20 0 7000)
		#(3 3 -5 19 0 4000)
		#(4 2 -3 21 30 5000)
		#(7 4 -2 20 0 8000)
		#(1 1 1 21 0 5000)
		#(2 2 2 20 0 5000)
		#(3 3 3 18 0 4500)
		#(6 4 4 21 0 7500)
		#(7 4 5 20 30 8500)
		#(4 1 6 19 0 5000)
		#(3 2 1 18 0 4500)).
	resultado := datos collect: [:d |
		self
			programarFuncionObra: (o at: (d at: 1)) id
			sala: (s at: (d at: 2)) id
			fecha: (hoy addDays: (d at: 3))
			hora: (self hora: (d at: 4) minutos: (d at: 5))
			precio: (d at: 6)].
	"Una funcion que empieza dentro de unas 6 horas (para probar la regla de las 24 hs)"
	ahora := UtilCine segundosDe: hoy hora: Time now.
	prox := ahora + (6 * 3600) - ((ahora + (6 * 3600)) \\ 3600).
	resultado := resultado asOrderedCollection.
	resultado add: (self
		programarFuncionObra: (o at: 4) id
		sala: (s at: 3) id
		fecha: (hoy addDays: prox // 86400 - (hoy asSeconds // 86400))
		hora: (Time fromSeconds: prox \\ 86400)
		precio: 5000).
	^resultado</body>

<body package="CineTeatro" selector="cargarMovimientosDePrueba:desde:">cargarMovimientosDePrueba: f desde: hoy
	"Reservas y ventas. Para las funciones pasadas se simula la fecha del dia de la funcion."
	| socio efectivo transf r |
	socio := [:nroPersona | (self socioDePersona: (personas at: nroPersona) id) id].
	efectivo := PagoEfectivo new.
	transf := [:alias :op | PagoTransferencia new aliasOrigen: alias; numeroOperacion: op; yourself].

	"--- Funcion 1 (hace 10 dias)"
	self simularFecha: (hoy subtractDays: 12) hora: (self hora: 11 minutos: 0).
	r := self reservarSocio: (socio value: 1) funcion: (f at: 1) id butacas: #('C4' 'C5').
	self simularFecha: (hoy subtractDays: 10) hora: (self hora: 17 minutos: 30).
	self venderReserva: r id medioPago: (self tarjeta: #debito ultimos: '4321' cuotas: 1 titular: 'Laura Gomez').
	self venderFuncion: (f at: 1) id butacas: #('D1' 'D2' 'D3') medioPago: efectivo socio: nil.
	self venderFuncion: (f at: 1) id butacas: #('E7' 'E8') medioPago: (transf value: 'cine.martin' value: '889001') socio: (socio value: 2).
	self venderFuncion: (f at: 1) id butacas: #('A1' 'A2' 'A3' 'A4') medioPago: efectivo socio: nil.

	"--- Funcion 2 (hace 10 dias)"
	self venderFuncion: (f at: 2) id butacas: #('B1' 'B2') medioPago: (self tarjeta: #credito ultimos: '1111' cuotas: 3 titular: 'Pablo Ruiz') socio: nil.
	self venderFuncion: (f at: 2) id butacas: #('C6') medioPago: efectivo socio: (socio value: 4).

	"--- Funcion 3 teatro (hace 7 dias)"
	self simularFecha: (hoy subtractDays: 9) hora: (self hora: 10 minutos: 0).
	r := self reservarSocio: (socio value: 2) funcion: (f at: 3) id butacas: #('E6' 'E7' 'E8').
	self simularFecha: (hoy subtractDays: 7) hora: (self hora: 19 minutos: 0).
	self venderReserva: r id medioPago: efectivo.
	self venderFuncion: (f at: 3) id butacas: #('A5' 'A6' 'A7' 'A8' 'A9' 'A10') medioPago: (transf value: 'escuela.teatro' value: '552310') socio: nil.
	self venderFuncion: (f at: 3) id butacas: #('F1' 'F2') medioPago: (self tarjeta: #credito ultimos: '9876' cuotas: 6 titular: 'Sofia Fernandez') socio: (socio value: 3).

	"--- Funcion 4 Microcine (hace 5 dias): se agota"
	self simularFecha: (hoy subtractDays: 5) hora: (self hora: 12 minutos: 0).
	self venderFuncion: (f at: 4) id butacas: #('A1' 'A2' 'A3' 'A4' 'A5' 'A6') medioPago: (transf value: 'club.cine' value: '700100') socio: nil.
	self venderFuncion: (f at: 4) id butacas: #('B1' 'B2' 'B3' 'B4' 'B5' 'B6') medioPago: efectivo socio: nil.
	self venderFuncion: (f at: 4) id butacas: #('C1' 'C2' 'C3') medioPago: efectivo socio: (socio value: 1).
	self venderFuncion: (f at: 4) id butacas: #('C4' 'C5' 'C6') medioPago: (self tarjeta: #debito ultimos: '5555' cuotas: 1 titular: 'Diego Lopez') socio: (socio value: 4).

	"--- Funcion 5 (hace 3 dias): una reserva quedo sin pagar"
	self simularFecha: (hoy subtractDays: 4) hora: (self hora: 18 minutos: 0).
	self reservarSocio: (socio value: 3) funcion: (f at: 5) id butacas: #('D6' 'D7').
	self simularFecha: (hoy subtractDays: 3) hora: (self hora: 20 minutos: 0).
	self venderFuncion: (f at: 5) id butacas: #('C1' 'C2' 'C3' 'C4') medioPago: efectivo socio: nil.
	self venderFuncion: (f at: 5) id butacas: #('E5' 'E6') medioPago: (self tarjeta: #credito ultimos: '2468' cuotas: 1 titular: 'Martin Rodriguez') socio: (socio value: 2).

	"--- Funcion 6 teatro (hace 2 dias)"
	self simularFecha: (hoy subtractDays: 2) hora: (self hora: 15 minutos: 0).
	self venderFuncion: (f at: 6) id butacas: #('D3' 'D4' 'D5' 'D6' 'D7' 'D8' 'D9' 'D10') medioPago: (transf value: 'jubilados.cdu' value: '330091') socio: nil.
	self venderFuncion: (f at: 6) id butacas: #('B7' 'B8') medioPago: efectivo socio: (socio value: 17).

	"--- Movimientos de hoy sobre funciones futuras"
	self usarRelojReal.
	self simularFecha: hoy hora: (self hora: 0 minutos: 5).
	r := self reservarSocio: (socio value: 1) funcion: (f at: 7) id butacas: #('B5' 'B6').
	r := self reservarSocio: (socio value: 2) funcion: (f at: 8) id butacas: #('C3' 'C4' 'C5').
	self venderFuncion: (f at: 8) id butacas: #('F1' 'F2' 'F3' 'F4' 'F5') medioPago: efectivo socio: nil.
	"Funcion 9 (Microcine, en 3 dias): queda agotada"
	self venderFuncion: (f at: 9) id butacas: #('A1' 'A2' 'A3' 'A4' 'A5' 'A6') medioPago: efectivo socio: nil.
	self venderFuncion: (f at: 9) id butacas: #('B1' 'B2' 'B3' 'B4' 'B5' 'B6') medioPago: (transf value: 'grupo.amigos' value: '991002') socio: nil.
	r := self reservarSocio: (socio value: 3) funcion: (f at: 9) id butacas: #('C1' 'C2' 'C3' 'C4' 'C5' 'C6').
	"Una reserva cancelada y otra ya pagada"
	r := self reservarSocio: (socio value: 4) funcion: (f at: 10) id butacas: #('A1' 'A2').
	self cancelarReserva: r id.
	r := self reservarSocio: (socio value: 2) funcion: (f at: 11) id butacas: #('E7' 'E8').
	self venderReserva: r id medioPago: (self tarjeta: #credito ultimos: '2468' cuotas: 3 titular: 'Martin Rodriguez').
	self venderFuncion: (f at: 12) id butacas: #('A5' 'A6') medioPago: efectivo socio: nil.
	"Reserva para la funcion que empieza en pocas horas: ya no se puede cancelar"
	self usarRelojReal.
	self reservarSocio: (socio value: 17) funcion: (f at: 14) id butacas: #('B3' 'B4').
	self usarRelojReal</body>

</methods>

<methods>
<class-id>VentanaCine class</class-id> <category>interface specs</category>

<body package="CineTeatro" selector="windowSpec">windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	&lt;resource: #canvas&gt;
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 'Gestion de Cine / Teatro' 
			#min: #(#{Core.Point} 1122 521) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 60 40 1182 811) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 10 8) #name: #titulo #label: 'ADMINISTRADOR DEL CINE / TEATRO' #style: #large) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 12 41) #label: 'PERSONAS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 63 224 86) #name: #altaPersona #model: #altaPersona #label: 'Alta de persona' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 88 224 111) #name: #modificarPersona #model: #modificarPersona #label: 'Modificar persona' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 113 224 136) #name: #bajaPersona #model: #bajaPersona #label: 'Eliminar persona' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 138 224 161) #name: #listarPersonas #model: #listarPersonas #label: 'Listar personas' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 12 166) #label: 'SOCIOS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 188 224 211) #name: #altaSocio #model: #altaSocio #label: 'Alta de socio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 213 224 236) #name: #bajaSocio #model: #bajaSocio #label: 'Dar de baja socio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 238 224 261) #name: #reactivarSocio #model: #reactivarSocio #label: 'Reactivar socio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 10 263 224 286) #name: #listarSocios #model: #listarSocios #label: 'Listar socios' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 234 41) #label: 'CRITICOS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 63 446 86) #name: #altaCritico #model: #altaCritico #label: 'Alta de critico' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 88 446 111) #name: #registrarCritica #model: #registrarCritica #label: 'Registrar critica' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 113 446 136) #name: #listarCriticos #model: #listarCriticos #label: 'Listar criticos' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 234 141) #label: 'PELICULAS / OBRAS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 163 446 186) #name: #altaPelicula #model: #altaPelicula #label: 'Alta de pelicula' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 188 446 211) #name: #altaObraTeatro #model: #altaObraTeatro #label: 'Alta de obra de teatro' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 213 446 236) #name: #agregarElenco #model: #agregarElenco #label: 'Agregar al elenco' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 238 446 261) #name: #cambiarEstadoCartel #model: #cambiarEstadoCartel #label: 'Poner / sacar de cartel' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 232 263 446 286) #name: #listarObras #model: #listarObras #label: 'Listar peliculas y obras' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 456 41) #label: 'SALAS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 63 668 86) #name: #altaSala #model: #altaSala #label: 'Alta de sala' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 88 668 111) #name: #listarSalas #model: #listarSalas #label: 'Listar salas (con plano)' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 456 116) #label: 'FUNCIONES') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 138 668 161) #name: #programarFuncion #model: #programarFuncion #label: 'Programar funcion' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 163 668 186) #name: #eliminarFuncion #model: #eliminarFuncion #label: 'Eliminar funcion' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 188 668 211) #name: #cambiarPrecio #model: #cambiarPrecio #label: 'Cambiar precio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 213 668 236) #name: #listarFunciones #model: #listarFunciones #label: 'Listar funciones' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 456 241) #label: 'SISTEMA') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 263 668 286) #name: #fechaSistema #model: #fechaSistema #label: 'Fecha / hora del sistema' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 288 668 311) #name: #cargarDatosPrueba #model: #cargarDatosPrueba #label: 'Cargar datos de prueba' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 454 313 668 336) #name: #recargarDisco #model: #recargarDisco #label: 'Recargar desde disco' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 678 41) #label: 'RESERVAS Y VENTAS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 63 890 86) #name: #nuevaReserva #model: #nuevaReserva #label: 'Nueva reserva (socios)' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 88 890 111) #name: #cancelarReserva #model: #cancelarReserva #label: 'Cancelar reserva' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 113 890 136) #name: #pagarReserva #model: #pagarReserva #label: 'Pagar reserva (venta)' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 138 890 161) #name: #ventaDirecta #model: #ventaDirecta #label: 'Venta directa' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 163 890 186) #name: #listarReservas #model: #listarReservas #label: 'Listar reservas' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 188 890 211) #name: #listarVentas #model: #listarVentas #label: 'Listar ventas' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 678 216) #label: 'CONSULTAS EXTRA') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 238 890 261) #name: #consultaPlano #model: #consultaPlano #label: 'Plano de una funcion' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 263 890 286) #name: #consultaRanking #model: #consultaRanking #label: 'Ranking de ventas' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 288 890 311) #name: #consultaHistorialSocio #model: #consultaHistorialSocio #label: 'Historial de un socio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 313 890 336) #name: #consultaProximas #model: #consultaProximas #label: 'Proximas con lugar' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 676 338 890 361) #name: #consultaParticipaciones #model: #consultaParticipaciones #label: 'Participaciones persona' #defaultable: true) 
				#(#{UI.LabelSpec} #layout: #(#{Core.Point} 900 41) #label: 'CONSULTAS') 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 63 1112 86) #name: #consultaSalaLibre #model: #consultaSalaLibre #label: '1. Sala libre?' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 88 1112 111) #name: #consultaFuncionesPorFecha #model: #consultaFuncionesPorFecha #label: '2. Funciones por fecha' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 113 1112 136) #name: #consultaFuncionesPorObra #model: #consultaFuncionesPorObra #label: '2. Funciones por obra' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 138 1112 161) #name: #consultaReservasImpagas #model: #consultaReservasImpagas #label: '3. Reservas impagas' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 163 1112 186) #name: #consultaMejoresCriticas #model: #consultaMejoresCriticas #label: '4. Mejores criticas' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 188 1112 211) #name: #consultaIngresos #model: #consultaIngresos #label: '5. Resumen de ingresos' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 213 1112 236) #name: #consultaOcupacion #model: #consultaOcupacion #label: '6. Ocupacion promedio' #defaultable: true) 
				#(#{UI.ActionButtonSpec} #layout: #(#{Graphics.Rectangle} 898 238 1112 261) #name: #consultaAgotadas #model: #consultaAgotadas #label: '7. Funciones agotadas' #defaultable: true) 
				#(#{UI.TextEditorSpec} #layout: #(#{Graphics.LayoutFrame} 10 0 371 0 -10 1 -10 1) #name: #salida #model: #salida #isReadOnly: true #tabRequiresControl: true #style: #fixed) ) ) )</body>

</methods>

<methods>
<class-id>VentanaCine class</class-id> <category>interface opening</category>

<body package="CineTeatro" selector="abrir">abrir
	"VentanaCine abrir"
	^self open</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>initialize-release</category>

<body package="CineTeatro" selector="initialize">initialize
	super initialize.
	admin := AdministradorCine default.
	salida := String new asValue</body>

<body package="CineTeatro" selector="postOpenWith:">postOpenWith: aBuilder
	super postOpenWith: aBuilder.
	self mostrarBienvenida</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>aspects</category>

<body package="CineTeatro" selector="salida">salida
	^salida</body>

<body package="CineTeatro" selector="admin">admin
	^admin</body>

<body package="CineTeatro" selector="admin:">admin: unAdministrador
	admin := unAdministrador</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>dialogos</category>

<body package="CineTeatro" selector="dialogoPedir:inicial:">dialogoPedir: unMensaje inicial: unTexto
	"Devuelve nil si el usuario cancela. (Sin onCancel:, Dialog devuelve un texto vacio
	 y no se puede distinguir Cancelar de aceptar un campo en blanco.)"
	^Dialog request: unMensaje initialAnswer: unTexto onCancel: [nil]</body>

<body package="CineTeatro" selector="dialogoElegir:etiquetas:valores:">dialogoElegir: unTitulo etiquetas: etiquetas valores: valores
	^Dialog choose: unTitulo fromList: etiquetas values: valores lines: 18 cancel: [nil]</body>

<body package="CineTeatro" selector="dialogoConfirmar:">dialogoConfirmar: unMensaje
	^Dialog confirm: unMensaje</body>

<body package="CineTeatro" selector="dialogoAvisar:">dialogoAvisar: unMensaje
	Dialog warn: unMensaje</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>entrada de datos</category>

<body package="CineTeatro" selector="pedir:">pedir: unMensaje
	^self pedir: unMensaje inicial: ''</body>

<body package="CineTeatro" selector="pedir:inicial:">pedir: unMensaje inicial: unTexto
	"Pide un dato obligatorio. Si se deja vacio o se cancela, se cancela la accion."
	| r |
	r := self dialogoPedir: unMensaje inicial: unTexto.
	(r isNil or: [r trimSeparators isEmpty]) ifTrue: [^AccionCancelada new raise].
	^r trimSeparators</body>

<body package="CineTeatro" selector="pedirOpcional:inicial:">pedirOpcional: unMensaje inicial: unTexto
	"Pide un dato que puede quedar vacio. Cancelar cancela toda la accion (no borra el dato)."
	| r |
	r := self dialogoPedir: unMensaje , ' (opcional)' inicial: unTexto.
	r isNil ifTrue: [^AccionCancelada new raise].
	^r trimSeparators</body>

<body package="CineTeatro" selector="pedirEntero:inicial:">pedirEntero: unMensaje inicial: unNumero
	^UtilCine enteroDesde: (self pedir: unMensaje inicial: (unNumero isNil ifTrue: [''] ifFalse: [unNumero printString]))</body>

<body package="CineTeatro" selector="pedirNumero:inicial:">pedirNumero: unMensaje inicial: unNumero
	^UtilCine numeroDesde: (self pedir: unMensaje inicial: (unNumero isNil ifTrue: [''] ifFalse: [UtilCine textoNumero: unNumero]))</body>

<body package="CineTeatro" selector="pedirFecha:inicial:">pedirFecha: unMensaje inicial: unaFecha
	^UtilCine fechaDesde: (self pedir: unMensaje , ' (dd/mm/aaaa)' inicial: (unaFecha isNil ifTrue: [''] ifFalse: [UtilCine textoFecha: unaFecha]))</body>

<body package="CineTeatro" selector="pedirHora:inicial:">pedirHora: unMensaje inicial: unaHora
	^UtilCine horaDesde: (self pedir: unMensaje , ' (hh:mm)' inicial: (unaHora isNil ifTrue: [''] ifFalse: [UtilCine textoHora: unaHora]))</body>

<body package="CineTeatro" selector="pedirButacas:">pedirButacas: unMensaje
	^UtilCine palabras: (self pedir: unMensaje , ' (ej: C4 C5 C6)')</body>

<body package="CineTeatro" selector="confirmar:">confirmar: unMensaje
	^self dialogoConfirmar: unMensaje</body>

<body package="CineTeatro" selector="elegir:entre:mostrando:">elegir: unTitulo entre: unaColeccion mostrando: unBloque
	"Muestra una lista para elegir un elemento. Cancelar cancela la accion."
	| r |
	unaColeccion isEmpty ifTrue: [^ErrorCine new raiseSignal: 'No hay elementos para elegir (' , unTitulo , ')'].
	r := self dialogoElegir: unTitulo etiquetas: (unaColeccion asArray collect: unBloque) valores: unaColeccion asArray.
	r isNil ifTrue: [^AccionCancelada new raise].
	^r</body>

<body package="CineTeatro" selector="elegirPersona:entre:">elegirPersona: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:p | p printString]</body>

<body package="CineTeatro" selector="elegirSocio:entre:">elegirSocio: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:s | self descripcionSocio: s]</body>

<body package="CineTeatro" selector="elegirObra:entre:">elegirObra: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:o | o printString]</body>

<body package="CineTeatro" selector="elegirSala:entre:">elegirSala: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:s | s printString]</body>

<body package="CineTeatro" selector="elegirFuncion:entre:">elegirFuncion: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:f | (admin descripcionCortaFuncion: f) , ' - ' , (admin salaId: f idSala) nombre , (f estaAgotada ifTrue: [' (AGOTADA)'] ifFalse: [' (' , f butacasLibres printString , ' libres)'])]</body>

<body package="CineTeatro" selector="elegirReserva:entre:">elegirReserva: unTitulo entre: unaColeccion
	^self elegir: unTitulo entre: unaColeccion mostrando: [:r | '#' , r id printString , ' ' , (admin nombreDeSocio: r idSocio) , ' - ' , r textoButacas , ' - ' , (admin descripcionCortaFuncion: (admin funcionId: r idFuncion))]</body>

<body package="CineTeatro" selector="pedirMedioPago">pedirMedioPago
	| tipo tarjeta |
	tipo := self elegir: 'Medio de pago' entre: #(#efectivo #tarjeta #transferencia) mostrando: [:t | t asString].
	tipo = #efectivo ifTrue: [^PagoEfectivo new].
	tipo = #transferencia ifTrue: [
		^PagoTransferencia new
			aliasOrigen: (self pedir: 'Alias o CBU de origen');
			numeroOperacion: (self pedir: 'Numero de operacion');
			yourself].
	tarjeta := PagoTarjeta new.
	tarjeta tipoTarjeta: (self elegir: 'Tipo de tarjeta' entre: #(#credito #debito) mostrando: [:t | t asString]).
	tarjeta marca: (self pedir: 'Marca de la tarjeta' inicial: 'VISA').
	tarjeta titular: (self pedir: 'Titular de la tarjeta').
	tarjeta ultimosDigitos: (self pedir: 'Ultimos 4 digitos de la tarjeta').
	((UtilCine esEntero: tarjeta ultimosDigitos) and: [tarjeta ultimosDigitos size = 4]) ifFalse: [^ErrorCine new raiseSignal: 'Debe ingresar exactamente 4 digitos'].
	tarjeta tipoTarjeta = #credito ifTrue: [
		tarjeta cuotas: (self pedirEntero: 'Cantidad de cuotas (1 a 12)' inicial: 1).
		(tarjeta cuotas between: 1 and: 12) ifFalse: [^ErrorCine new raiseSignal: 'Cantidad de cuotas invalida']].
	^tarjeta</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>salida</category>

<body package="CineTeatro" selector="ejecutar:">ejecutar: unBloque
	"Ejecuta una accion de la interfaz mostrando los errores de negocio como aviso"
	^[[unBloque value]
		on: ErrorCine
		do: [:e |
			self mostrar: 'ATENCION: ' , e messageText.
			self dialogoAvisar: e messageText.
			e return: nil]]
			on: AccionCancelada
			do: [:e | e return: nil]</body>

<body package="CineTeatro" selector="mostrar:">mostrar: unTexto
	salida value: unTexto</body>

<body package="CineTeatro" selector="nuevoTexto:">nuevoTexto: unTitulo
	| ws |
	ws := WriteStream on: (String new: 2000).
	ws nextPutAll: unTitulo; cr; nextPutAll: (UtilCine linea: unTitulo size); cr.
	^ws</body>

<body package="CineTeatro" selector="col:ancho:">col: unTexto ancho: n
	"Columna de ancho fijo (siempre deja un espacio de separacion)"
	^(UtilCine rellenar: unTexto a: n - 1) , ' '</body>

<body package="CineTeatro" selector="num:ancho:">num: unTexto ancho: n
	^UtilCine alinearDerecha: unTexto a: n</body>

<body package="CineTeatro" selector="descripcionSocio:">descripcionSocio: unSocio
	^'#' , unSocio id printString , ' ' , (admin nombreDeSocio: unSocio id) , (unSocio estaActivo ifTrue: [''] ifFalse: [' (inactivo)'])</body>

<body package="CineTeatro" selector="descripcionReserva:">descripcionReserva: unaReserva
	| funcion |
	funcion := admin funcionId: unaReserva idFuncion.
	^'Reserva #' , unaReserva id printString , ' | ' , (admin nombreDeSocio: unaReserva idSocio) , ' | ' , unaReserva textoButacas , ' | funcion ' , (admin descripcionCortaFuncion: funcion) , ' | ' , unaReserva estado</body>

<body package="CineTeatro" selector="roles:">roles: unaPersona
	| roles |
	roles := OrderedCollection new.
	(admin socioDePersona: unaPersona id) ifNotNil: [:s | roles add: (s estaActivo ifTrue: ['Socio'] ifFalse: ['Socio inactivo'])].
	(admin criticos anySatisfy: [:c | c idPersona = unaPersona id]) ifTrue: [roles add: 'Critico'].
	(admin obras anySatisfy: [:o | o director = unaPersona id]) ifTrue: [roles add: 'Director'].
	(admin obras anySatisfy: [:o | o elenco includes: unaPersona id]) ifTrue: [roles add: 'Actor/Actriz'].
	^roles isEmpty
		ifTrue: ['Cliente']
		ifFalse: [roles inject: '' into: [:acc :r | acc isEmpty ifTrue: [r] ifFalse: [acc , ', ' , r]]]</body>

<body package="CineTeatro" selector="escribirFunciones:en:">escribirFunciones: unaColeccion en: ws
	unaColeccion isEmpty ifTrue: [^ws nextPutAll: '(no hay funciones)'; cr].
	unaColeccion do: [:f | ws nextPutAll: (admin descripcionFuncion: f); cr]</body>

<body package="CineTeatro" selector="mostrarBienvenida">mostrarBienvenida
	| ws |
	ws := self nuevoTexto: 'GESTION DE CINE / TEATRO - Paradigmas de Programacion 2025'.
	ws cr; nextPutAll: 'Datos en disco: ' , admin carpetaDatos asFilename asAbsoluteFilename asString , ' (una lista por archivo .bos)'; cr.
	admin listasIlegibles isEmpty ifFalse: [ws cr; nextPutAll: 'ATENCION: ' , admin avisoListasIlegibles; cr; cr].
	ws nextPutAll: 'Fecha del sistema: ' , (UtilCine textoFecha: admin hoy) , ' ' , (UtilCine textoHora: admin horaActual) , (admin usaRelojSimulado ifTrue: [' (SIMULADA)'] ifFalse: [' (real)']); cr; cr.
	ws nextPutAll: 'Personas: ' , admin personas size printString; cr.
	ws nextPutAll: 'Socios: ' , admin socios size printString , ' (' , admin sociosActivos size printString , ' activos)'; cr.
	ws nextPutAll: 'Criticos: ' , admin criticos size printString; cr.
	ws nextPutAll: 'Peliculas/obras: ' , admin obras size printString , ' (' , admin obrasEnCartel size printString , ' en cartel)'; cr.
	ws nextPutAll: 'Salas: ' , admin salas size printString; cr.
	ws nextPutAll: 'Funciones: ' , admin funciones size printString; cr.
	ws nextPutAll: 'Reservas: ' , admin todasLasReservas size printString , ' (' , admin reservasPendientes size printString , ' pendientes de pago)'; cr.
	ws nextPutAll: 'Ventas: ' , admin todasLasVentas size printString; cr; cr.
	admin personas isEmpty ifTrue: [ws nextPutAll: 'No hay datos cargados: use "Cargar datos de prueba" o empiece dando de alta personas, salas y obras.'; cr].
	ws nextPutAll: 'Use los botones de arriba. Todos los cambios se graban automaticamente en disco.'.
	self mostrar: ws contents</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>personas</category>

<body package="CineTeatro" selector="altaPersona">altaPersona
	self ejecutar: [| p |
		p := admin
			altaPersonaNombre: (self pedir: 'Nombre y apellido')
			dni: (self pedir: 'DNI (solo numeros)')
			fechaNacimiento: (self pedirFecha: 'Fecha de nacimiento' inicial: nil)
			sexo: (self elegir: 'Sexo' entre: #('F' 'M' 'X') mostrando: [:x | x])
			domicilio: (self pedirOpcional: 'Domicilio' inicial: '')
			email: (self pedirOpcional: 'Email' inicial: '')
			celular: (self pedirOpcional: 'Celular' inicial: '').
		self mostrar: 'Persona registrada:' , (String with: Character cr) , p descripcionCompleta]</body>

<body package="CineTeatro" selector="modificarPersona">modificarPersona
	self ejecutar: [| p |
		p := self elegirPersona: 'Persona a modificar' entre: admin personas.
		admin
			modificarPersona: p id
			nombre: (self pedir: 'Nombre y apellido' inicial: p nombre)
			domicilio: (self pedirOpcional: 'Domicilio' inicial: p domicilio)
			email: (self pedirOpcional: 'Email' inicial: p email)
			celular: (self pedirOpcional: 'Celular' inicial: p celular).
		self mostrar: 'Persona modificada:' , (String with: Character cr) , p descripcionCompleta]</body>

<body package="CineTeatro" selector="bajaPersona">bajaPersona
	self ejecutar: [| p |
		p := self elegirPersona: 'Persona a eliminar' entre: admin personas.
		(self confirmar: 'Eliminar a ' , p nombre , '?') ifTrue: [
			admin bajaPersona: p id.
			self mostrar: 'Se elimino a ' , p nombre]]</body>

<body package="CineTeatro" selector="listarPersonas">listarPersonas
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'PERSONAS (' , admin personas size printString , ')'.
		ws nextPutAll: (self col: 'Id' ancho: 4) , (self col: 'Nombre' ancho: 20) , (self col: 'DNI' ancho: 10) , (self col: 'Nacimiento' ancho: 11) , (self col: 'Edad' ancho: 5) , (self col: 'Sx' ancho: 3) , (self col: 'Email' ancho: 25) , (self col: 'Celular' ancho: 14) , 'Rol'; cr.
		admin personas do: [:p |
			ws
				nextPutAll: (self col: p id printString ancho: 4);
				nextPutAll: (self col: p nombre ancho: 20);
				nextPutAll: (self col: p dni ancho: 10);
				nextPutAll: (self col: (UtilCine textoFecha: p fechaNacimiento) ancho: 11);
				nextPutAll: (self col: ((p edadAl: admin hoy) ifNil: ['-'] ifNotNil: [:e | e printString]) ancho: 5);
				nextPutAll: (self col: p sexo ancho: 3);
				nextPutAll: (self col: p email ancho: 25);
				nextPutAll: (self col: p celular ancho: 14);
				nextPutAll: (self roles: p); cr].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>socios</category>

<body package="CineTeatro" selector="altaSocio">altaSocio
	self ejecutar: [| p s |
		p := self elegirPersona: 'Persona que se asocia' entre: (admin personas select: [:x | (admin socioDePersona: x id) isNil]).
		s := admin altaSocioPersona: p id.
		self mostrar: 'Nuevo socio #' , s id printString , ': ' , p nombre , ' (alta ' , (UtilCine textoFecha: s fechaAlta) , ', ' , Socio porcentajeDescuento printString , '% de descuento)']</body>

<body package="CineTeatro" selector="bajaSocio">bajaSocio
	self ejecutar: [| s |
		s := self elegirSocio: 'Socio a dar de baja' entre: admin sociosActivos.
		(self confirmar: 'Dar de baja (inactivo) al socio ' , (admin nombreDeSocio: s id) , '?') ifTrue: [
			admin darDeBajaSocio: s id.
			self mostrar: 'Socio dado de baja: ' , (self descripcionSocio: s)]]</body>

<body package="CineTeatro" selector="reactivarSocio">reactivarSocio
	self ejecutar: [| s |
		s := self elegirSocio: 'Socio a reactivar' entre: (admin socios reject: [:x | x estaActivo]).
		admin reactivarSocio: s id.
		self mostrar: 'Socio reactivado: ' , (self descripcionSocio: s)]</body>

<body package="CineTeatro" selector="listarSocios">listarSocios
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'SOCIOS (' , admin socios size printString , ')'.
		ws nextPutAll: (self col: 'Id' ancho: 4) , (self col: 'Nombre' ancho: 20) , (self col: 'DNI' ancho: 10) , (self col: 'Alta' ancho: 11) , (self col: 'Estado' ancho: 9) , (self col: 'Reservas pend.' ancho: 15) , 'Total gastado'; cr.
		admin socios do: [:s | | p |
			p := admin personaId: s idPersona.
			ws
				nextPutAll: (self col: s id printString ancho: 4);
				nextPutAll: (self col: p nombre ancho: 20);
				nextPutAll: (self col: p dni ancho: 10);
				nextPutAll: (self col: (UtilCine textoFecha: s fechaAlta) ancho: 11);
				nextPutAll: (self col: s estado ancho: 9);
				nextPutAll: (self col: ((admin reservasDeSocio: s id) select: [:r | r estaPendiente]) size printString ancho: 15);
				nextPutAll: (UtilCine textoMoneda: (admin totalGastadoPorSocio: s id)); cr].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>criticos</category>

<body package="CineTeatro" selector="altaCritico">altaCritico
	self ejecutar: [| p c |
		p := self elegirPersona: 'Persona que se registra como critico' entre: (admin personas reject: [:x | admin criticos anySatisfy: [:k | k idPersona = x id]]).
		c := admin altaCriticoPersona: p id usuario: (self pedir: 'Nombre de usuario').
		self mostrar: 'Nuevo critico: ' , c printString , ' - ' , p nombre]</body>

<body package="CineTeatro" selector="registrarCritica">registrarCritica
	self ejecutar: [| c o critica |
		c := self elegir: 'Critico' entre: admin criticos mostrando: [:k | k printString , ' ' , (admin nombreDePersona: k idPersona)].
		o := self elegirObra: 'Pelicula a criticar (solo peliculas)' entre: (admin obras select: [:x | x esPelicula]).
		critica := admin registrarCriticaDe: c id obra: o id resena: (self pedir: 'Resena') puntaje: (self pedirEntero: 'Puntaje (1 a 10)' inicial: nil).
		self mostrar: 'Critica registrada para "' , o titulo , '": ' , critica printString , (String with: Character cr) , 'Nuevo promedio: ' , (UtilCine textoPromedio: o promedioCriticas)]</body>

<body package="CineTeatro" selector="listarCriticos">listarCriticos
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'CRITICOS (' , admin criticos size printString , ')'.
		admin criticos do: [:c | | cant |
			cant := (admin obras select: [:o | o criticas anySatisfy: [:k | k idCritico = c id]]) size.
			ws nextPutAll: (self col: c printString ancho: 32) , (self col: (admin nombreDePersona: c idPersona) ancho: 20) , 'alta ' , (UtilCine textoFecha: c fechaAlta) , '  criticas: ' , cant printString; cr].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>obras</category>

<body package="CineTeatro" selector="altaObraArtistica:">altaObraArtistica: esPelicula
	self ejecutar: [| titulo desc dur clasif dir o |
		titulo := self pedir: 'Titulo'.
		desc := self pedirOpcional: 'Descripcion' inicial: ''.
		dur := self pedirEntero: 'Duracion (minutos)' inicial: nil.
		clasif := self elegir: 'Clasificacion' entre: #('ATP' '+13' '+16' '+18') mostrando: [:x | x].
		dir := self elegir: 'Director' entre: (Array with: #ninguno) , admin personas asArray mostrando: [:p | p = #ninguno ifTrue: ['(sin director)'] ifFalse: [p printString]].
		dir := dir = #ninguno ifTrue: [nil] ifFalse: [dir id].
		o := esPelicula
			ifTrue: [admin altaPeliculaTitulo: titulo descripcion: desc duracion: dur clasificacion: clasif director: dir]
			ifFalse: [admin altaObraTeatroTitulo: titulo descripcion: desc duracion: dur clasificacion: clasif director: dir].
		self mostrar: 'Registrada: ' , o printString]</body>

<body package="CineTeatro" selector="altaPelicula">altaPelicula
	self altaObraArtistica: true</body>

<body package="CineTeatro" selector="altaObraTeatro">altaObraTeatro
	self altaObraArtistica: false</body>

<body package="CineTeatro" selector="agregarElenco">agregarElenco
	self ejecutar: [| o p |
		o := self elegirObra: 'Pelicula/obra' entre: admin obras.
		p := self elegirPersona: 'Persona que se agrega al elenco' entre: (admin personas reject: [:x | o elenco includes: x id]).
		admin agregarAlElenco: p id obra: o id.
		self mostrar: p nombre , ' se agrego al elenco de "' , o titulo , '"']</body>

<body package="CineTeatro" selector="cambiarEstadoCartel">cambiarEstadoCartel
	self ejecutar: [| o |
		o := self elegirObra: 'Pelicula/obra' entre: admin obras.
		o estaEnCartel
			ifTrue: [admin sacarDeCartel: o id]
			ifFalse: [admin ponerEnCartel: o id].
		self mostrar: o printString]</body>

<body package="CineTeatro" selector="listarObras">listarObras
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'PELICULAS Y OBRAS (' , admin obras size printString , ')'.
		admin obras do: [:o |
			ws cr; nextPutAll: o printString; cr.
			o descripcion isEmpty ifFalse: [ws nextPutAll: '   ' , o descripcion; cr].
			ws nextPutAll: '   Director: ' , (admin nombreDePersona: o director); cr.
			ws nextPutAll: '   Elenco: '.
			o elenco do: [:id | ws nextPutAll: (admin nombreDePersona: id)] separatedBy: [ws nextPutAll: ', '].
			ws cr.
			o admiteCriticas ifTrue: [
				ws nextPutAll: '   Criticas: ' , o criticas size printString , '  promedio: ' , (UtilCine textoPromedio: o promedioCriticas); cr.
				o criticas do: [:c |
					ws nextPutAll: '     - ' , (admin criticoId: c idCritico) printString , ' ' , c printString; cr]]].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>salas</category>

<body package="CineTeatro" selector="altaSala">altaSala
	self ejecutar: [| s |
		s := admin
			altaSalaNombre: (self pedir: 'Nombre de la sala')
			filas: (self pedirEntero: 'Cantidad de filas (1 a 26)' inicial: nil)
			butacasPorFila: (self pedirEntero: 'Butacas por fila' inicial: nil)
			permitePeliculas: (self confirmar: 'La sala permite peliculas?')
			permiteTeatro: (self confirmar: 'La sala permite obras de teatro?').
		self mostrar: 'Sala registrada: ' , s printString , (String with: Character cr with: Character cr) , (s planoMarcando: #())]</body>

<body package="CineTeatro" selector="listarSalas">listarSalas
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'SALAS (' , admin salas size printString , ')'.
		admin salas do: [:s |
			ws cr; nextPutAll: s printString; cr; cr; nextPutAll: (s planoMarcando: #()); cr].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>funciones</category>

<body package="CineTeatro" selector="programarFuncion">programarFuncion
	self ejecutar: [| o s f |
		o := self elegirObra: 'Pelicula/obra (en cartel)' entre: admin obrasEnCartel.
		s := self elegirSala: 'Sala (que admita ' , o tipoTexto , ')' entre: (admin salas select: [:x | o puedePresentarseEn: x]).
		f := admin
			programarFuncionObra: o id
			sala: s id
			fecha: (self pedirFecha: 'Fecha de la funcion' inicial: (admin hoy addDays: 1))
			hora: (self pedirHora: 'Hora de inicio' inicial: (Time fromSeconds: 20 * 3600))
			precio: (self pedirNumero: 'Precio de la entrada' inicial: 5000).
		self mostrar: 'Funcion programada:' , (String with: Character cr) , (admin descripcionFuncion: f)]</body>

<body package="CineTeatro" selector="eliminarFuncion">eliminarFuncion
	self ejecutar: [| f |
		f := self elegirFuncion: 'Funcion a eliminar' entre: (admin ordenarFunciones: admin funciones).
		(self confirmar: 'Eliminar la funcion ' , (admin descripcionFuncion: f) , '?') ifTrue: [
			admin cancelarFuncion: f id.
			self mostrar: 'Funcion eliminada']]</body>

<body package="CineTeatro" selector="cambiarPrecio">cambiarPrecio
	self ejecutar: [| f |
		f := self elegirFuncion: 'Funcion' entre: admin funcionesFuturas.
		admin modificarPrecio: (self pedirNumero: 'Nuevo precio' inicial: f precioEntrada) funcion: f id.
		self mostrar: (admin descripcionFuncion: f)]</body>

<body package="CineTeatro" selector="listarFunciones">listarFunciones
	self ejecutar: [| ws ahora |
		ahora := admin ahoraEnSegundos.
		ws := self nuevoTexto: 'FUNCIONES (' , admin funciones size printString , ')'.
		(admin ordenarFunciones: admin funciones) do: [:f |
			ws nextPutAll: ((f comenzoA: ahora) ifTrue: ['[pasada] '] ifFalse: ['[futura] ']) , (admin descripcionFuncion: f); cr].
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>sistema</category>

<body package="CineTeatro" selector="fechaSistema">fechaSistema
	self ejecutar: [| op |
		op := self elegir: 'Fecha/hora actual: ' , (UtilCine textoFecha: admin hoy) , ' ' , (UtilCine textoHora: admin horaActual) entre: #(#real #simular) mostrando: [:x | x = #real ifTrue: ['Usar la fecha y hora real de la computadora'] ifFalse: ['Simular otra fecha y hora (para pruebas)']].
		op = #real
			ifTrue: [admin usarRelojReal]
			ifFalse: [admin simularFecha: (self pedirFecha: 'Fecha simulada' inicial: admin hoy) hora: (self pedirHora: 'Hora simulada' inicial: admin horaActual)].
		self mostrarBienvenida]</body>

<body package="CineTeatro" selector="cargarDatosPrueba">cargarDatosPrueba
	self ejecutar: [
		(self confirmar: 'Se borraran TODOS los datos actuales y se cargaran datos de prueba. Continuar?') ifTrue: [
			admin cargarDatosDePrueba.
			self mostrarBienvenida]]</body>

<body package="CineTeatro" selector="recargarDisco">recargarDisco
	self ejecutar: [
		admin cargar.
		self mostrarBienvenida.
		admin listasIlegibles isEmpty ifFalse: [self dialogoAvisar: admin avisoListasIlegibles]]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>reservas y ventas</category>

<body package="CineTeatro" selector="nuevaReserva">nuevaReserva
	self ejecutar: [| s f r |
		s := self elegirSocio: 'Socio que reserva' entre: admin sociosActivos.
		f := self elegirFuncion: 'Funcion' entre: admin proximasFuncionesConDisponibilidad.
		self mostrar: (admin descripcionFuncion: f) , (String with: Character cr with: Character cr) , (admin planoDeFuncion: f id).
		r := admin reservarSocio: s id funcion: f id butacas: (self pedirButacas: 'Butacas a reservar').
		self mostrar: 'Reserva #' , r id printString , ' registrada a nombre de ' , (admin nombreDeSocio: s id) , ' (pendiente de pago)' , (String with: Character cr) , 'Butacas: ' , r textoButacas , '   A pagar: ' , (UtilCine textoMoneda: (admin montoDeReserva: r)) , (String with: Character cr with: Character cr) , (admin planoDeFuncion: f id)]</body>

<body package="CineTeatro" selector="cancelarReserva">cancelarReserva
	self ejecutar: [| r |
		r := self elegirReserva: 'Reserva a cancelar' entre: admin reservasPendientes.
		(self confirmar: 'Cancelar la reserva #' , r id printString , '?') ifTrue: [
			admin cancelarReserva: r id.
			self mostrar: 'Reserva cancelada sin costo: ' , (self descripcionReserva: r)]]</body>

<body package="CineTeatro" selector="pagarReserva">pagarReserva
	self ejecutar: [| r v |
		r := self elegirReserva: 'Reserva a pagar' entre: admin reservasPendientes.
		v := admin venderReserva: r id medioPago: self pedirMedioPago.
		self mostrar: (self textoVenta: v)]</body>

<body package="CineTeatro" selector="ventaDirecta">ventaDirecta
	self ejecutar: [| f codigos socio v |
		f := self elegirFuncion: 'Funcion' entre: admin proximasFuncionesConDisponibilidad.
		self mostrar: (admin descripcionFuncion: f) , (String with: Character cr with: Character cr) , (admin planoDeFuncion: f id).
		codigos := self pedirButacas: 'Butacas a vender'.
		socio := nil.
		(self confirmar: 'El comprador es socio? (20% de descuento)') ifTrue: [
			socio := (self elegirSocio: 'Socio comprador' entre: admin sociosActivos) id].
		v := admin venderFuncion: f id butacas: codigos medioPago: self pedirMedioPago socio: socio.
		self mostrar: (self textoVenta: v) , (String with: Character cr with: Character cr) , (admin planoDeFuncion: f id)]</body>

<body package="CineTeatro" selector="textoVenta:">textoVenta: unaVenta
	| ws |
	ws := self nuevoTexto: 'VENTA #' , unaVenta id printString.
	ws nextPutAll: 'Funcion: ' , (admin descripcionFuncion: (admin funcionId: unaVenta idFuncion)); cr.
	ws nextPutAll: 'Fecha: ' , (UtilCine textoFecha: unaVenta fecha) , ' ' , (UtilCine textoHora: unaVenta hora); cr.
	ws nextPutAll: 'Cliente: ' , (unaVenta esDeSocio ifTrue: ['Socio ' , (admin nombreDeSocio: unaVenta idSocio) , ' (' , Socio porcentajeDescuento printString , '% desc.)'] ifFalse: ['No socio']); cr.
	ws nextPutAll: 'Reserva: ' , (unaVenta esDirecta ifTrue: ['- (venta directa)'] ifFalse: ['#' , unaVenta idReserva printString]); cr.
	ws nextPutAll: 'Butacas: ' , unaVenta textoButacas , ' (' , unaVenta cantidadEntradas printString , ')'; cr.
	ws nextPutAll: 'Medio de pago: ' , unaVenta medioPago descripcion; cr.
	ws nextPutAll: 'TOTAL: ' , (UtilCine textoMoneda: unaVenta monto); cr.
	^ws contents</body>

<body package="CineTeatro" selector="listarReservas">listarReservas
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'RESERVAS (' , admin todasLasReservas size printString , ')'.
		(admin todasLasReservas asSortedCollection: [:a :b | a id &lt;= b id]) do: [:r |
			ws nextPutAll: (self descripcionReserva: r) , ' | reservada ' , (UtilCine textoFecha: r fechaReserva).
			r estaCancelada ifTrue: [ws nextPutAll: ' | cancelada ' , (UtilCine textoFecha: r fechaCancelacion)].
			r estaPendiente ifTrue: [ws nextPutAll: ((admin esCancelable: r) ifTrue: [' | cancelable'] ifFalse: [' | YA NO SE PUEDE ANULAR'])].
			ws cr].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="listarVentas">listarVentas
	self ejecutar: [| ws total |
		ws := self nuevoTexto: 'VENTAS (' , admin todasLasVentas size printString , ')'.
		ws nextPutAll: (self col: 'Id' ancho: 4) , (self col: 'Fecha' ancho: 17) , (self col: 'Func.' ancho: 6) , (self col: 'Cliente' ancho: 22) , (self col: 'Res.' ancho: 5) , (self col: 'Butacas' ancho: 30) , (self col: 'Medio' ancho: 14) , 'Monto'; cr.
		total := 0.
		(admin todasLasVentas asSortedCollection: [:a :b | a id &lt;= b id]) do: [:v |
			total := total + v monto.
			ws
				nextPutAll: (self col: v id printString ancho: 4);
				nextPutAll: (self col: (UtilCine textoFecha: v fecha) , ' ' , (UtilCine textoHora: v hora) ancho: 17);
				nextPutAll: (self col: v idFuncion printString ancho: 6);
				nextPutAll: (self col: (v esDeSocio ifTrue: [admin nombreDeSocio: v idSocio] ifFalse: ['No socio']) ancho: 22);
				nextPutAll: (self col: (v esDirecta ifTrue: ['-'] ifFalse: [v idReserva printString]) ancho: 5);
				nextPutAll: (self col: v textoButacas ancho: 30);
				nextPutAll: (self col: v medioPago nombre ancho: 14);
				nextPutAll: (UtilCine textoMoneda: v monto); cr].
		ws nextPutAll: 'TOTAL: ' , (UtilCine textoMoneda: total).
		self mostrar: ws contents]</body>

</methods>

<methods>
<class-id>VentanaCine</class-id> <category>consultas</category>

<body package="CineTeatro" selector="consultaSalaLibre">consultaSalaLibre
	self ejecutar: [| s f1 h1 f2 h2 libre ws |
		s := self elegirSala: 'Sala' entre: admin salas.
		f1 := self pedirFecha: 'Desde fecha' inicial: admin hoy.
		h1 := self pedirHora: 'Desde hora' inicial: (Time fromSeconds: 18 * 3600).
		f2 := self pedirFecha: 'Hasta fecha' inicial: f1.
		h2 := self pedirHora: 'Hasta hora' inicial: (Time fromSeconds: 23 * 3600).
		libre := admin salaLibre: s id desde: f1 hora: h1 hasta: f2 hora: h2.
		ws := self nuevoTexto: 'CONSULTA 1 - DISPONIBILIDAD DE SALA'.
		ws nextPutAll: s nombre , ' entre ' , (UtilCine textoFecha: f1) , ' ' , (UtilCine textoHora: h1) , ' y ' , (UtilCine textoFecha: f2) , ' ' , (UtilCine textoHora: h2) , ': '.
		libre
			ifTrue: [ws nextPutAll: 'LIBRE (se puede programar una nueva funcion)'; cr]
			ifFalse: [
				ws nextPutAll: 'OCUPADA. Funciones en ese horario:'; cr.
				self escribirFunciones: (admin funcionesEnSala: s id desde: (UtilCine segundosDe: f1 hora: h1) hasta: (UtilCine segundosDe: f2 hora: h2)) en: ws].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaFuncionesPorFecha">consultaFuncionesPorFecha
	self ejecutar: [| f ws |
		f := self pedirFecha: 'Fecha' inicial: admin hoy.
		ws := self nuevoTexto: 'CONSULTA 2 - FUNCIONES DEL ' , (UtilCine textoFecha: f).
		self escribirFunciones: (admin funcionesDelDia: f) en: ws.
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaFuncionesPorObra">consultaFuncionesPorObra
	self ejecutar: [| o ws |
		o := self elegirObra: 'Pelicula/obra' entre: admin obras.
		ws := self nuevoTexto: 'CONSULTA 2 - FUNCIONES DE "' , o titulo , '"'.
		self escribirFunciones: (admin funcionesDeObra: o id) en: ws.
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaReservasImpagas">consultaReservasImpagas
	self ejecutar: [| ws lista |
		lista := admin sociosConReservasPendientes.
		ws := self nuevoTexto: 'CONSULTA 3 - CLIENTES CON RESERVAS PENDIENTES DE PAGO'.
		lista isEmpty ifTrue: [ws nextPutAll: '(no hay reservas pendientes)'; cr].
		lista do: [:par | | socio p |
			socio := par key.
			p := admin personaId: socio idPersona.
			ws cr; nextPutAll: (self descripcionSocio: socio) , ' | DNI ' , p dni , ' | Cel ' , p celular , ' | ' , p email; cr.
			par value do: [:r | | f |
				f := admin funcionId: r idFuncion.
				ws nextPutAll: '   Reserva #' , r id printString , ' butacas ' , r textoButacas , ' | a pagar ' , (UtilCine textoMoneda: (admin montoDeReserva: r)).
				ws nextPutAll: ((admin esCancelable: r) ifTrue: [' | aun cancelable'] ifFalse: [' | YA NO SE PUEDE ANULAR: DEBE PAGARLA']); cr.
				ws nextPutAll: '      funcion ' , (admin descripcionFuncion: f); cr]].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaMejoresCriticas">consultaMejoresCriticas
	self ejecutar: [| ws pos |
		ws := self nuevoTexto: 'CONSULTA 4 - PELICULAS EN CARTELERA CON MEJORES CRITICAS'.
		pos := 0.
		admin peliculasEnCarteleraPorCriticas do: [:o |
			pos := pos + 1.
			ws nextPutAll: (self num: pos printString ancho: 3) , '. ' , (self col: o titulo ancho: 28) , 'promedio ' , (self num: (UtilCine textoPromedio: o promedioCriticas) ancho: 5) , '  (' , o criticas size printString , ' critica/s)'; cr].
		pos = 0 ifTrue: [ws nextPutAll: '(no hay peliculas en cartel con criticas)'].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaIngresos">consultaIngresos
	self ejecutar: [| f1 f2 r ws |
		f1 := self pedirFecha: 'Desde' inicial: (admin hoy subtractDays: 30).
		f2 := self pedirFecha: 'Hasta' inicial: admin hoy.
		r := admin resumenIngresosDesde: f1 hasta: f2.
		ws := self nuevoTexto: 'CONSULTA 5 - RESUMEN DE INGRESOS DEL ' , (UtilCine textoFecha: f1) , ' AL ' , (UtilCine textoFecha: f2).
		ws nextPutAll: 'Cantidad de ventas: ' , (r at: #ventas) size printString; cr; cr.
		ws nextPutAll: (self col: 'Tipo de cliente' ancho: 18) , (self num: 'Entradas' ancho: 9) , (self num: 'Importe' ancho: 18); cr.
		ws nextPutAll: (self col: 'Socios' ancho: 18) , (self num: (r at: #entradasSocios) printString ancho: 9) , (self num: (UtilCine textoMoneda: (r at: #totalSocios)) ancho: 18); cr.
		ws nextPutAll: (self col: 'No socios' ancho: 18) , (self num: (r at: #entradasNoSocios) printString ancho: 9) , (self num: (UtilCine textoMoneda: (r at: #totalNoSocios)) ancho: 18); cr.
		ws nextPutAll: (UtilCine linea: 45); cr.
		ws nextPutAll: (self col: 'TOTAL' ancho: 18) , (self num: ((r at: #entradasSocios) + (r at: #entradasNoSocios)) printString ancho: 9) , (self num: (UtilCine textoMoneda: (r at: #total)) ancho: 18); cr; cr.
		ws nextPutAll: 'Por medio de pago:'; cr.
		((r at: #porMedio) keys asSortedCollection: [:a :b | a &lt;= b]) do: [:k |
			ws nextPutAll: '   ' , (self col: k ancho: 15) , (self num: (UtilCine textoMoneda: ((r at: #porMedio) at: k)) ancho: 15); cr].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaOcupacion">consultaOcupacion
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'CONSULTA 6 - OCUPACION PROMEDIO DE CADA PELICULA/OBRA'.
		ws nextPutAll: (self col: 'Pelicula/obra' ancho: 30) , (self col: 'Tipo' ancho: 16) , (self num: 'Funciones' ancho: 10) , (self num: 'Ocupacion' ancho: 12); cr.
		admin ocupacionPromedioPorObra do: [:fila |
			ws nextPutAll: (self col: (fila at: 1) titulo ancho: 30) , (self col: (fila at: 1) tipoTexto ancho: 16) , (self num: (fila at: 2) printString ancho: 10) , (self num: (UtilCine textoPorcentaje: (fila at: 3)) ancho: 12); cr].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaAgotadas">consultaAgotadas
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'CONSULTA 7 - FUNCIONES AGOTADAS'.
		self escribirFunciones: admin funcionesAgotadas en: ws.
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaPlano">consultaPlano
	self ejecutar: [| f |
		f := self elegirFuncion: 'Funcion' entre: (admin ordenarFunciones: admin funciones).
		self mostrar: 'PLANO DE LA FUNCION' , (String with: Character cr) , (admin descripcionFuncion: f) , (String with: Character cr with: Character cr) , (admin planoDeFuncion: f id)]</body>

<body package="CineTeatro" selector="consultaRanking">consultaRanking
	self ejecutar: [| ws pos |
		ws := self nuevoTexto: 'EXTRA - RANKING DE PELICULAS/OBRAS POR ENTRADAS VENDIDAS'.
		pos := 0.
		admin rankingObrasPorVentas do: [:fila |
			pos := pos + 1.
			ws nextPutAll: (self num: pos printString ancho: 3) , '. ' , (self col: (fila at: 1) titulo ancho: 30) , (self num: (fila at: 2) printString ancho: 6) , ' entradas  ' , (self num: (UtilCine textoMoneda: (fila at: 3)) ancho: 15); cr].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaHistorialSocio">consultaHistorialSocio
	self ejecutar: [| s ws |
		s := self elegirSocio: 'Socio' entre: admin socios.
		ws := self nuevoTexto: 'EXTRA - HISTORIAL DEL SOCIO ' , (self descripcionSocio: s).
		ws nextPutAll: 'Reservas:'; cr.
		(admin reservasDeSocio: s id) do: [:r | ws nextPutAll: '   ' , (self descripcionReserva: r); cr].
		ws cr; nextPutAll: 'Compras:'; cr.
		(admin comprasDeSocio: s id) do: [:v | ws nextPutAll: '   Venta #' , v id printString , ' ' , (UtilCine textoFecha: v fecha) , ' | funcion ' , (admin descripcionCortaFuncion: (admin funcionId: v idFuncion)) , ' | ' , v textoButacas , ' | ' , (UtilCine textoMoneda: v monto); cr].
		ws cr; nextPutAll: 'Total gastado: ' , (UtilCine textoMoneda: (admin totalGastadoPorSocio: s id)).
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaProximas">consultaProximas
	self ejecutar: [| ws |
		ws := self nuevoTexto: 'EXTRA - PROXIMAS FUNCIONES CON BUTACAS DISPONIBLES'.
		admin proximasFuncionesConDisponibilidad do: [:f |
			ws nextPutAll: (admin descripcionFuncion: f) , ' | libres: ' , f butacasLibres printString; cr].
		self mostrar: ws contents]</body>

<body package="CineTeatro" selector="consultaParticipaciones">consultaParticipaciones
	self ejecutar: [| p ws |
		p := self elegirPersona: 'Persona' entre: admin personas.
		ws := self nuevoTexto: 'EXTRA - PELICULAS/OBRAS EN LAS QUE PARTICIPA ' , p nombre.
		(admin obrasDePersona: p id) do: [:o |
			ws nextPutAll: o printString , ' - ' , (o director = p id ifTrue: ['Director/a'] ifFalse: ['Elenco']); cr].
		self mostrar: ws contents]</body>

</methods>



</st-source>
