
fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}


fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}


fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
   
    println("Enter a list of strings separated by spaces:")
    val stringInput = readLine()?.split("\\s".toRegex()) ?: emptyList()

   
    println("Enter a list of integers separated by spaces:")
    val numberInput = readLine()?.split("\\s".toRegex())?.mapNotNull { it.toIntOrNull() } ?: emptyList()

 
    val uppercaseStrings = transformToUppercase(stringInput)
    println("Uppercase Strings: $uppercaseStrings")

    
    println("Enter a threshold value:")
    val threshold = readLine()?.toIntOrNull() ?: 0

   
    val filteredNumbers = filterNumbersGreaterThan(numberInput, threshold)
    println("Numbers greater than $threshold: $filteredNumbers")

   
    val sum = calculateSum(numberInput)
    println("Sum of all numbers: $sum")
}
