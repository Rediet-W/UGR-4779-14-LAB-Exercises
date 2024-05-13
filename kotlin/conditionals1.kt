
fun main() {
    println("Enter the number:")
    val num = readLine()?.toDoubleOrNull() ?: 0.0 
    
    val result = if (num < 0 || num > 100) {
        "Invalid"
    } else if (num >= 90) {
        "A"
    } else if (num >= 80) {
        "B"
    } else if (num >= 70) {
        "C"
    } else if (num >= 60) {
        "D"
    } else {
        "F"
    }

    // Print the result
    println("Result: $result")
}
