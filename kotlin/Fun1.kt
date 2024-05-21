fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

    val vowels = setOf('a', 'e', 'i', 'o', 'u')

    for (char in input) {
        if (char.isWhitespace()) {
            wordCount++
        }
        
        if (char.isUpperCase()) {
            uppercaseCount++
        }
        if (char.toLowerCase() in vowels) {
            vowelCount++
        }
    }

    wordCount++

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    println("Enter a string:")
    val inputString = readLine() ?: ""

    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelCount")
}