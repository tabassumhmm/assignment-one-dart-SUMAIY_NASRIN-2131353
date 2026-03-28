// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
 * Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
 * Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
 * Insufficient funds for withdrawal of 1000.0 from account 67890
 */

// Create a BankAccount class with the following specifications:
class BankAccount {
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TODO: Implement the constructor
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  void deposit(double amount) {
    balance += amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  //    - getBalance(): Return current balance
  double getBalance() {
    return balance;
  }

  //    - displayAccountInfo(): Show account details
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  BankAccount acc1 = BankAccount("12345", "Alice", "Savings");
  BankAccount acc2 = BankAccount("67890", "Bob", "Checking");
  BankAccount acc3 = BankAccount("11111", "Charlie", "Savings");

  acc1.deposit(1000.0);
  acc2.deposit(500.0);
  acc3.deposit(2000.0);

  acc1.withdraw(200.0);
  acc2.withdraw(100.0);

  acc1.displayAccountInfo();
  acc2.displayAccountInfo();
  acc3.displayAccountInfo();

  acc2.withdraw(1000.0);
}
