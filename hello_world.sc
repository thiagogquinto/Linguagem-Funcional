object Hello{
    def main(args: Array[String]) = {
        val lista1 = List(1, 2, 3, 4, 5)
        val lista2 = List(6, 7, 8, 9, 10)

        println(lista1.exists(x => x == 3))

        println("Tamanho da Lista:")
        println(lista1.length)

        println("Soma dos elementos da Lista:")
        println(lista1.sum)

        println("Produto dos elementos da lista:")
        println(lista1.product)

        println("Reversao da Lista:")
        println(lista1.reverse)
        
        if (lista1 == lista2) {
            println("Listas iguais")
        }
         else {
            println("Listas diferentes")
        }

        val lista3 = lista1 ::: lista2
        println("Concatenacao de listas:")
        println(lista3)

        println("Interseccao de listas:")
        println(lista1.intersect(lista2))

        println("Ordenação (QuickSort):")
        


    } 
}
