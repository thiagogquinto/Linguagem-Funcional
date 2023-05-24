object Loop{
    def main(args: Array[String]) = {
        var i = 0
        while (i < 10) {
            println(i)
            i += 1
        }

        for (i <- 0 to 10) { 
            println(i)
        }

        for (i <- 0 until 10) { 
            println(i)
        }

        for (i <- 0 to 4; j <- 0 to 4) {
            println(s"i: $i, j: $j")
        }

    }
}
