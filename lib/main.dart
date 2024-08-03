import 'BankAccount.dart';
import 'NormalAccount.dart';
import 'SavingAccount.dart';
import 'dart:io';

void main() {
<<<<<<< HEAD
  
}
=======
  List<NormalAccount> normal = [];

  NormalAccount account1 = NormalAccount();
  account1.cardNumber = "1234 5678 9101 1213";
  account1.name = "Sayed";
  account1.balance = 1000.0;

  NormalAccount account2 = NormalAccount();
  account2.cardNumber = "5678 1234 9101 1213";
  account2.name = "Mohamed";
  account2.balance = 2000.0;

  NormalAccount account3 = NormalAccount();
  account3.cardNumber = "5678 9101 1234 1213";
  account3.name = "Zakaria";
  account3.balance = 3000.0;

  NormalAccount account4 = NormalAccount();
  account4.cardNumber = "5678 9101 1213 1234";
  account4.name = "Seddik";
  account4.balance = 4000.0;

  normal.add(account1);
  normal.add(account2);
  normal.add(account3);
  normal.add(account4);

  List<SavingAccount> saving = [];
  SavingAccount savingAccount1 = SavingAccount(interest: 5);
  savingAccount1.cardNumber = "8547 6958 1254 3562";
  savingAccount1.name = "Muller";
  savingAccount1.balance = 5000.0;

  SavingAccount savingAccount2 = SavingAccount(interest: 10);
  savingAccount2.cardNumber = "6958 1254 3562 8547";
  savingAccount2.name = "Goretzeka";
  savingAccount2.balance = 6000.0;

  SavingAccount savingAccount3 = SavingAccount(interest: 15);
  savingAccount3.cardNumber = "8547 1254 3562 6958";
  savingAccount3.name = "Kimmich";
  savingAccount3.balance = 7000.0;

  SavingAccount savingAccount4 = SavingAccount(interest: 20);
  savingAccount4.cardNumber = "8547 6958 3562 1254";
  savingAccount4.name = "Zeko";
  savingAccount4.balance = 80000.0;

  saving.add(savingAccount1);
  saving.add(savingAccount2);
  saving.add(savingAccount3);
  saving.add(savingAccount4);

  myFun(normal, saving);
  while (true) {
    print("type YES if you want to login with another account");
    String string = stdin.readLineSync()!;
    string = string.toUpperCase();
    if (string == "YES") {
      myFun(normal, saving);
    } else {
      break;
    }
  }
}

void myFun(List<NormalAccount> normal, List<SavingAccount> saving) {
  print("Enter your card number");
  String cardnumber = stdin.readLineSync()!;
  bool check = false;
  while (true) {
    for (int i = 0; i < normal.length; i++) {
      if (normal[i].cardNumber == cardnumber) {
        check = true;
        print("Hello ${normal[i].name}");
        print("Your Balance is ${normal[i].balance}");
        print("choose operation");
        print("1-)Deposit");
        print("2-)Withdraw");
        print("3-)Check Balance");
        print("4-)Transfer");
        print("5-)Press any other number to log out");
        int oper = int.parse(stdin.readLineSync()!);
        switch (oper) {
          case 1:
            {
              check = true;
              print("Enter the amount you want to deposit");
              double deposit = double.parse(stdin.readLineSync()!);
              normal[i].deposite(deposit);
              break;
            }
          case 2:
            {
              check = true;
              print("Enter the amount you want to withdraw");
              double withdraw = double.parse(stdin.readLineSync()!);
              normal[i].withdraw(withdraw);
              break;
            }
          case 3:
            {
              check = true;
              normal[i].checkbalance();
              break;
            }
          case 4:
            {
              bool foundAccount = false;
              check = true;
              print("Enter the amount you want to transfer");
              double trans = double.parse(stdin.readLineSync()!);
              normal[i].withdraw(trans);
              print("Enter the card number which tou want to send money");
              String string = stdin.readLineSync()!;
              for (int j = 0; j < normal.length; j++) {
                if (normal[j].cardNumber == string) {
                  foundAccount = true;
                  normal[j].deposite(trans);
                }
              }
              for (int j = 0; j < saving.length; j++) {
                if (saving[j].cardNumber == string) {
                  foundAccount = true;
                  saving[j].deposite(trans);
                }
              }
              if (foundAccount) {
                print("Transfer done successfully");
              }else{
                print("No card found with this data");
              }
              break;
            }
          default:
            {
              check = false;
              print("Logged out successfully");
              break;
            }
        }
      }
    }
    for (int i = 0; i < saving.length; i++) {
      if (saving[i].cardNumber == cardnumber) {
        check = true;
        print("Hello ${saving[i].name}");
        print("Your Balance is ${saving[i].balance}");
        print("choose operation");
        print("1-)Deposit");
        print("2-)Withdraw");
        print("3-)Check Balance");
        print("4-)Transfer");
        print("5-)Press any other number to log out");
        int oper = int.parse(stdin.readLineSync()!);
        switch (oper) {
          case 1:
            {
              check = true;
              print("Enter the amount you want to deposit");
              double deposit = double.parse(stdin.readLineSync()!);
              saving[i].deposite(deposit);
              break;
            }
          case 2:
            {
              check = true;
              print("Enter the amount you want to withdraw");
              double withdraw = double.parse(stdin.readLineSync()!);
              saving[i].withdraw(withdraw);
              break;
            }
          case 3:
            {
              check = true;
              saving[i].checkbalance();
              break;
            }
          case 4:
            {
              bool foundAccount = false;
              check = true;
              print("Enter the amount you want to transfer");
              double trans = double.parse(stdin.readLineSync()!);
              saving[i].withdraw(trans);
              print("Enter the card number which tou want to send money");
              String string = stdin.readLineSync()!;
              for (int j = 0; j < saving.length; j++) {
                if (saving[j].cardNumber == string) {
                  foundAccount = true;
                  saving[j].deposite(trans);
                }
              }
              for (int j = 0; j < normal.length; j++) {
                foundAccount = true;
                if (normal[j].cardNumber == string) {
                  normal[j].deposite(trans);
                }
              }
              if (foundAccount) {
                print("Transfer done successfully");
              }else{
                print("No card found with this data");
              }
              break;
            }
          default:
            {
              check = false;
              print("Logged out successfully");
              break;
            }
        }
      }
    }
    if (!check) {
      break;
    }
  }
}

>>>>>>> zeka
