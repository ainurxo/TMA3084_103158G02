import 'dart:io';

void main() {
  bool order = true;
  int orderTotal = 0;
  int quantity = 0;
  int price = 0;

  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  while (order) {
    String size = '';

    while (true) {
      print("Please enter your pizza size (small, medium, or large):");
      size = stdin.readLineSync()!.toLowerCase();

      if (size == 'small' || size == 'medium' || size == 'large') {
        break;
      }

      print("Invalid size\n");
    }

    while (true) {
      print("How many $size pizzas do you want?");
      quantity = int.parse(stdin.readLineSync()!);
      break;
    }

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
    }

    int total = price * quantity;
    orderTotal = orderTotal + total;

    print("Item Total: $total USD");

    print("Do you want to order another pizza? (Y/N)");
    String answer = stdin.readLineSync()!.toLowerCase();

    if (answer != 'Y') {
      order = false;
    }
  }

  print("Your final order total is $orderTotal USD. Thank you for your order!");
}
