
fun main() {
    println("Enter the distance:")
    val num = readLine()?.toDoubleOrNull() ?: 0.0 

    println("Choose unit from (kilometer, miles)")
    val unit = readLine()
    
    val result = when (unit) {
        "kilometer" -> num*0.001
        "miles" -> num*1609.344 
        else -> {
            println("Invalid")
            return
        }
    }

    // Print the result
    println("Result: $result")
}

