import 'BankAccount.dart';

class SavingAccount extends BankAccount {
  double? interest;

  SavingAccount({required this.interest});

  @override
  void deposite(double amount) {
    balance = balance + amount;
    balance = balance + (amount * (interest! / 100));
  }

  @override
  void checkbalance(){
    print("Your card number is : ${cardNumber}");
    print("Name : ${name}");
    print("You Balance ${balance}");
    print("Your interest rate is ${interest}%");
  }
}
