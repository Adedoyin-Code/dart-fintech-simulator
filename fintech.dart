// The Problem
// You are building a mini banking app for a Nigerian fintech startup. The app manages users and their transactions.
// Your app must do the following —
// 1. Create a list of 3 users, each user should have:

// name
// accountNumber
// balance
// isVerified
// a nested map called "bank" with: bankName and accountType (savings/current)

// 2. Loop through the users and for each user —

// If the user is not verified print "⚠️ {name} - Account not verified" and skip them
// If the user is verified, process a deposit of 100,000 and add it to their balance
// After the deposit check if their balance is above 500,000 using a switch on account type:

// "savings" → print "{name} - Savings account credited. New balance: {balance}"
// "current" → print "{name} - Current account credited. New balance: {balance}"
// default → print "{name} - Unknown account type"

// 3. After the loop —

// Count and print the total number of verified users
// Count and print the total amount deposited across all verified users

void main() {
  int deposit = 100000;
  int verifiedCount = 0;
  int totalDeposited = 0;
  List<Map<String, dynamic>> users = [
    {
      "name": "Ade",
      "accountNumber": "9023238232",
      "balance": 300000,
      "isVerified": true,
      "bank": {"bankName": "UBA Bank", "accountType": "savings"},
    },

    {
      "name": "Dinma",
      "accountNumber": "002390932",
      "balance": 426000,
      "isVerified": true,
      "bank": {"bankName": "Access Bank", "accountType": "current"},
    },
    {
      "name": "Little",
      "accountNumber": "2382320097",
      "balance": 120000,
      "isVerified": false,
      "bank": {"bankName": "Zenith Bank", "accountType": "savings"},
    },
  ];

  for (var user in users) {
    if (user["isVerified"] == false) {
      print('${user["name"]} - Account Not Verified');
    } else {
      user["balance"] = deposit + user["balance"];
      if (user["balance"] > 500000) {
        switch (user["bank"]["accountType"]) {
          case "savings":
            print(
              '${user["name"]} - ${user["bank"]["accountType"]} account credited. New Balance ${user["balance"]}',
            );
            break;

          case "current":
            print(
              '${user["name"]} - ${user["bank"]["accountType"]} account credited. New Balance ${user["balance"]}',
            );
            break;
          default:
            print('${user["name"]} - Unknown account type');
        }
      }
      verifiedCount = verifiedCount + 1;
      totalDeposited = totalDeposited + deposit;
    }
  }
  print('Total verified users: $verifiedCount');
  print('Total deposited: $totalDeposited');
}
