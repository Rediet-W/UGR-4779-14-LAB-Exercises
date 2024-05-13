class BankAccount(val accountNumber: String, var balance: Double) {
    // Member function to deposit funds into the account
    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposit of $amount successful.")
        } else {
            println("Invalid amount for deposit.")
        }
    }

    // Member function to withdraw funds from the account
    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawal of $amount successful.")
            } else {
                println("Insufficient funds. Withdrawal failed.")
            }
        } else {
            println("Invalid amount for withdrawal.")
        }
    }

    // Member function to print the current balance
    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    // Create a BankAccount object
    val account = BankAccount("123456789", 1000.0)

    // Deposit funds
    account.deposit(500.0)

    // Withdraw funds
    account.withdraw(200.0)

    // Print current balance
    account.printBalance()
}
