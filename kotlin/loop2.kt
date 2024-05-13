import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val charPool = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', 
                                                                 '(', ')')
    return (1..length)
        .map { Random.nextInt(0, charPool.size) }
        .map(charPool::get)
        .joinToString("")
}

fun main() {
    println("Enter the length of the password:")
    val length = readLine()?.toIntOrNull() ?: 8 // Default length is 8 if invalid input or no input provided
    if (length <= 0) {
        println("Invalid length. Please enter a positive integer.")
        return
    }

    val password = generateRandomPassword(length)
    println("Generated Password: $password")
}
