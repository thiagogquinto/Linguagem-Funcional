// object if_else{
//     def main(args: Array[String]) = {
//         val age = 18
//         if (age >= 18) {
//             println("You are an adult")
//         } else {
//             println("You are a kid")
//         }
//     }
// }

def main(args: Array[String]) = {
    val age = 18
    val res = if (age >= 18) "You are an adult" else "You are a kid"
    println(res)
}
