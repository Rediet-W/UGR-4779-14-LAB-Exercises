
fun main() {
    
    println("Enter the original price:")
    val originalPrice = readLine()?.toDoubleOrNull() ?: 0.0

    println("Enter the discount percentage (as a decimal between 0 and 1):")
    val discountPercentage = readLine()?.toDoubleOrNull() ?: 0.0

    println("Enter the threshold for the discount percentage (as a decimal between 0 and 1):")
    val threshold = readLine()?.toDoubleOrNull() ?: 0.0

    val finalDiscountPercentage = if (discountPercentage > threshold) {
        println("The discount percentage is too high.")
        threshold
    } else {
        discountPercentage
    }


    val finalPrice = originalPrice * (1 - finalDiscountPercentage)

    println("Original Price: \$${originalPrice}")
    println("Discount Percentage: ${(finalDiscountPercentage * 100)}%")
    println("Final Price: \$${finalPrice}")
}
