import 'bank_account.dart';

void main() {
  var account = BankAccount(initialBalance: 500);

  /// deposit
  account.deposit(amount: 1000);
  print(account);

  try {
    /// withdraw
    /// try changing the value to throw or unthrow the exception
    final withdrawAmount = 1345.56;
    account.withdraw(amount: withdrawAmount);
  } on InsufficientBalanceException {
    print("Insufficient Balance!");
  }

  /// getBalance method demonatration (without round)
  print("Balance: ${account.getBalance()}");

}