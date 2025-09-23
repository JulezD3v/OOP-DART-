/*1. Create a Car class with the following:
A named constructor that takes brand and year and model that sets year to 1990 by default.
Add a method which calculates the age of the car and prints it
Instantiate both and print their details.

2.You are designing a BankAccount class.
Add deposit(double amount) and withdraw(double amount) methods.
Ensure withdrawal cannot exceed the balance.
Test by creating an account and performing transactions.

3.Write a function int divide(int a, int b) that:
Throws an exception when b == 0.
Otherwise returns the result of a ~/ b.
Call it inside try-catch-finally and print messages for success, error, and cleanup.
4.Design a User class with:
A constructor requiring username and password.
Throw an exception if the password is shorter than 6 characters.
In main(), attempt to create multiple User objects and handle exceptions gracefully.
5. (The room is expected to discuss and share a response for this question) Imagine you are designing a Car class for a ride-hailing app.
What fields and methods would you include?
How would you use constructors to handle a  brand-new car being registered?
*/

void main() {
  
  var car1 = Car(brand: "Toyota", model: "Corolla", year: 2005);

  var car2 = Car(brand: "Honda", model: "Civic");

 
  car1.printDetails();
  car1.printAge();

  print(""); 

  car2.printDetails();
  car2.printAge();
  var account = BankAccount(owner: "Julie", balance: 1000.0);

  account.printDetails();

  // Deposit money
  account.deposit(500.0);

  // Withdraw within balance
  account.withdraw(300.0);

  // Attempt to overdraw
  account.withdraw(1500.0);

  account.printDetails();

  var users = [
    {"username": "alice", "password": "12345"},   // too short
    {"username": "bob", "password": "abcdef"},    // valid
    {"username": "charlie", "password": "xyz"},   

  ];

  for (var u in users) {
    try {
      var user = User(username: u["username"]!, password: u["password"]!);
      print("✅ User created: ${user.username}");
    } catch (e) {
      print("❌ Failed to create user '${u["username"]}': $e");
    }
  }

// No3
  try {
    print("Trying division...");

    int result = divide(10, 0); 
    print("Success! Result = $result");

  } catch (e) {

    print("Error occurred: $e");

  } finally {
    print("Cleanup: This block always runs.");
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw Exception("Cannot divide by zero.");
  }
  return a ~/ b; 


  
}
/*1. Create a Car class with the following:
A named constructor that takes brand and year and model that sets year to 1990 by default.
Add a method which calculates the age of the car and prints it
Instantiate both and print their details. */
class Car {
  String brand;
  String model;
  int year;

  
  Car({required this.brand, required this.model, this.year = 1990});

  // calculate age
  void printAge() {
    var currentYear = 2025;
    var age = currentYear - year;
    print("This $brand $model is $age years old.");
  }

   
  void printDetails() {
    print("Brand: $brand, Model: $model, Year: $year");
  }
}


/*2.You are designing a BankAccount class.
Add deposit(double amount) and withdraw(double amount) methods.
Ensure withdrawal cannot exceed the balance.
Test by creating an account and performing transactions. */

class BankAccount{
  String owner;
  double balance;

  BankAccount({required this.owner, this.balance = 0.0});

  // Deposit money
  void deposit(double amount) {
    balance += amount;
    print("Deposited $amount. New balance: $balance");
  }


  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrew $amount. New balance: $balance");
    } else {
      print("Withdrawal of $amount failed. Insufficient funds. Current balance: $balance");
    }
  }

  // Print account details
  void printDetails() {
    print("Owner: $owner, Balance: $balance");
  }
}


/*4.Design a User class with:
A constructor requiring username and password.
Throw an exception if the password is shorter than 6 characters.
In main(), attempt to create multiple User objects and handle exceptions gracefully. */

class User {
  String username;
  String password;

  User({required this.username, required this.password}) {
    if (password.length < 6) {
      throw Exception("Password must be at least 6 characters long.");
    }
  }
}

