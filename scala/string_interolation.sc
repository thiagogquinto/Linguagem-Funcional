object Interpolation {
    def main(args: Array[String]) = {
        val name = "Thiago"
        val age = 18
        println("My name is " + name + "and I am " + age + " years old")
        println(s"My name is $name and I am $age years old")
        println(f"My name is $name%s and I am $age%d years old")
    }
}
