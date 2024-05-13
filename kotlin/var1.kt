
fun main() {
    println("Enter first number:")
    val num1 = readLine()?.toDoubleOrNull() ?: 0.0 

    println("Enter second number:")
    val num2 = readLine()?.toDoubleOrNull() ?: 0.0 

    println("Choose operation (+, -, *, /):")
    val operation = readLine()

    val result = when (operation) {
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" -> num1 / num2
        else -> {
            println("Invalid operation")
            return
        }
    }

    // Print the result
    println("Result: $result")
}

