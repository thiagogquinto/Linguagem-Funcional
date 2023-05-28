var nome =  "Thiago" //mutável
val idade =  30 //imutável
var salario: Double =  1000.50 //mutável

def soma(x: Int, y: Int): Int = {
  return x + y
}

def soma2(x: Int, y: Int) = x + y

val lista = list(1, 2, 3, 4, 5)
lista.exists(x => x == 3)

val soma = {
  val x : Int = 15
  val y : Int = 20
  x + y
}

lazy val lz = 20 // varável inicializada apenas quando for ser usada

