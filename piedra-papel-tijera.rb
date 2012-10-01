# Juego que implementa piedra, papel o tijera.

derrotado_por = { :piedra => :tijeras, :papel => piedra, tijeras => papel }
jugadas = derrota.keys

jugada_jugador = {ARGV.shift || ''}.to_sym #Lee desde línea de comandos, y si no me pasan parámetros, almaceno la cadena vacía para evitar la excepción

#raise: genera una excepción de la clase ScriptError.
#$0: variable global que contiene el nombre del programa
#unless es igual a ifnot
raise ScriptError, 
	"Debes ejecutar: ''#($0)'' 
		seguido por uno de los siguientes '#{jugadas.join(', ')}" 
	unless throws.include? jugada_jugador
	
jugada_maquina = jugadas.sample

if jugada_jugador == jugada_maquina
   puts "Empate"
elsif jugada_jugador == derrota[jugada_maquina]