import 'BankAccount.dart';

class SavingAccount extends BankAccount {
  double? interest;

  SavingAccount({required this.interest});

  @override
  void deposite(double amount) {
    balance = balance + amount;
    balance = balance + (amount * (interest! / 100));
  }
}
