"Carga el sistema y corre todas las pruebas automaticas, sin abrir ninguna ventana.

 Como usarlo (desde la carpeta del repositorio, ver README):
     vwntconsole.exe C:\ruta\trabajo.im -nogui -filein tests\correr-pruebas.st

 Escribe el resultado en tests\resultado.txt y cierra VisualWorks.
 Este archivo esta en formato chunk: cada bloque de codigo termina con un signo de exclamacion."

"--- 1. Cargar SUnitToo, el sistema y las pruebas ---"
| salida |
[Parcel loadParcelByName: 'SUnitToo'.
('src' asFilename construct: 'CineTeatro.st') fileIn.
('src' asFilename construct: 'CineTeatro-Tests.st') fileIn]
	on: Error
	do: [:e |
		salida := ('tests' asFilename construct: 'resultado.txt') writeStream.
		salida nextPutAll: 'ERROR AL CARGAR: ' , e class name , ' - ' , e description; cr.
		salida close.
		ObjectMemory quit]!

"--- 2. Verificar la carga, correr las pruebas y escribir el resultado ---"
| salida contar clasesDe metodosDe verificar clasesDePrueba suite resultado cargaBien |
salida := ('tests' asFilename construct: 'resultado.txt') writeStream.
[[
	salida nextPutAll: 'PROYECTO CINE/TEATRO - RESULTADO DE LAS PRUEBAS'; cr; cr.

	"Cuantos metodos hay escritos en un archivo fuente (cada metodo empieza con <body )"
	contar := [:nombreArchivo | | texto cantidad posicion |
		texto := ('src' asFilename construct: nombreArchivo) contentsOfEntireFile.
		cantidad := 0.
		posicion := texto indexOfSubCollection: '<body ' startingAt: 1.
		[posicion > 0] whileTrue: [
			cantidad := cantidad + 1.
			posicion := texto indexOfSubCollection: '<body ' startingAt: posicion + 1].
		cantidad].
	clasesDe := [:categoria | Smalltalk allClasses select: [:c | c category notNil and: [c category asString = categoria]]].
	metodosDe := [:clases | clases inject: 0 into: [:suma :c | suma + c selectors size + c class selectors size]].
	cargaBien := true.
	verificar := [:nombreArchivo :categoria | | escritos compilados |
		escritos := contar value: nombreArchivo.
		compilados := metodosDe value: (clasesDe value: categoria).
		salida nextPutAll: nombreArchivo , ': ' , (clasesDe value: categoria) size printString , ' clases, ' , compilados printString , ' metodos compilados de ' , escritos printString , ' escritos'.
		escritos = compilados ifFalse: [
			cargaBien := false.
			salida nextPutAll: '  <-- HAY METODOS QUE NO COMPILARON'].
		salida cr].
	verificar value: 'CineTeatro.st' value: 'CineTeatro'.
	verificar value: 'CineTeatro-Tests.st' value: 'CineTeatro-Tests'.
	Undeclared bindingsDo: [:b |
		cargaBien := false.
		salida nextPutAll: 'VARIABLE SIN DECLARAR: ' , b key printString; cr].
	salida nextPutAll: (cargaBien ifTrue: ['Carga correcta: compilo todo y no hay variables sin declarar.'] ifFalse: ['LA CARGA TUVO PROBLEMAS (ver arriba).']); cr; cr.

	"Armar una suite con todos los metodos test... de cada clase de prueba"
	clasesDePrueba := (CineTestCase allSubclasses asSortedCollection: [:a :b | a name <= b name]) asOrderedCollection.
	suite := SUnit.TestSuite new.
	clasesDePrueba do: [:clase | | cantidad |
		cantidad := 0.
		clase testSelectorsDo: [:selector |
			cantidad := cantidad + 1.
			suite addTest: (clase selector: selector)].
		salida nextPutAll: clase name , ': ' , cantidad printString , ' pruebas'; cr].
	resultado := suite run.
	salida cr; nextPutAll: 'TOTAL: ' , resultado runCount printString , ' pruebas, ' , resultado passCount printString , ' pasaron, ' , resultado failureCount printString , ' fallaron, ' , resultado errorCount printString , ' con error'; cr.

	"Si algo no paso, repetir cada prueba por separado para mostrar cual fue y por que"
	resultado allPassed ifFalse: [
		salida cr; nextPutAll: 'PRUEBAS QUE NO PASARON:'; cr.
		clasesDePrueba do: [:clase |
			clase testSelectorsDo: [:selector | | motivo |
				motivo := [(clase selector: selector) doTestCycle. nil]
					on: Error , SUnit.FailedAssertion
					do: [:e | e return: e class name , ': ' , (e messageText ifNil: [e description])].
				motivo isNil ifFalse: [salida nextPutAll: '  ' , clase name , '>>' , selector , '  ->  ' , motivo; cr]]]].

	salida cr; nextPutAll: ((resultado allPassed and: [cargaBien])
		ifTrue: ['RESULTADO: TODAS LAS PRUEBAS PASARON']
		ifFalse: ['RESULTADO: HAY PROBLEMAS']); cr]
	on: Error
	do: [:e | salida cr; nextPutAll: 'ERROR AL CORRER LAS PRUEBAS: ' , e class name , ' - ' , e description; cr]]
	ensure: [salida close].
ObjectMemory quit!
