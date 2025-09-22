class InsufficientBalanceException implements Exception {
  final String message;

  InsufficientBalanceException(this.message);

  @override
  String toString() => "InsufficientBalanceException ${this.message}";

}

double round(double number, {int precision=2}) => double.parse(
  number.toStringAsFixed(precision)
);

class BankAccount {
  double _balance;

  BankAccount({required double initialBalance})
    : _balance = initialBalance {
      if (initialBalance < 0)
        throw ArgumentError(
          "Initial balance Can not be negative!",
          "InitialBalance"
        );
    }

  void deposit({required double amount}) {
    print("Depositing $amount ...");
    this._balance += amount;
  }

  void withdraw({required double amount}) {
    print("Withdrawing $amount ...");

    if (this._balance - amount < 0)
      throw InsufficientBalanceException(
        "Current balance: ${round(this._balance)}, can not withdraw $amount"
      );

    this._balance -= amount;
  }

  double getBalance() => this._balance;

  @override
  String toString() => "Current balance: ${round(this._balance)}";
}