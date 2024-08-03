class BankAccount{
  String? _cardNumber;
  String? _name;
  double? _balance;

  set cardNumber(String cardNumber)=> this._cardNumber = cardNumber;
  String get cardNumber=>this._cardNumber!;

  set name(String name)=>this._name = name;
  String get name=>this._name!;

  set balance(double balance)=>this._balance = balance;
  double get balance=>this._balance!;
  void deposite(double amount){
    _balance = _balance! + amount;
  }
  void withdraw(double amount){
    if(_balance!>=amount){
      _balance = _balance!-amount;
    }else{
      print("Can't complete this Operation bec No sufficient money");
    }
  }
  void checkbalance(){
    print("Your card number is : ${this._cardNumber}");
    print("Name : ${this._name}");
    print("You Balance ${this._balance}");
  }
  void teransferMoney(BankAccount account , double amount){
    if(this._balance!>=amount){
      _balance = _balance! - amount;
      account._balance = account._balance! + amount;
      print("Money transfer Completed successfully");
    }else{
      print("No Sufficient Money in you account");
    }
  }
}