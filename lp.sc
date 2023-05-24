object Exercicios{
    def main(args:Array[String]) = {

        var list = List(1,2,3,4,5)
        var num = 3

        def ehMembro(list:List[Int], num:Int):Boolean = {
            if (list.isEmpty) false
            else if (list.head == num) true
            else isMemberOf(list.tail, num)
        }

        if (isMemberOf(list, num)) {
            println("3 eh membro da lista")
        } else{
            println("3 nao eh a membro da lista")
        }

        def calcularSomaElementos(list:List):Int = {
            if (list.isEmpty) {
                0
            }
            else {
                list.head + calculaSoma(list.tail)
            }
        }

        println(calcularSomaElementos(list))


    }
}
