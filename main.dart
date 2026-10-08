import 'dart:io';

void main() {
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  bool order = true;
  int OrderTotal = 0;

  while (order) {
    String size = '';

    // Enter pizza size
    while (true) {
      print('Please enter your pizza size (small, medium, or large):');
      size = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if (size == 'small' || size == 'medium' || size == 'large') {
        break;
      }
      print("Invalid pizza size. Please enter the correct size.\n");
    }

    int quantity = 0;

    // Get valid quantity
    while (true) {
      print("How many pizzas do you want of $size?");
      quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (quantity > 0) {
        break;
      }
      print("Invalid quantity.\n");
    }

    // Calculate total price
    int price = 0;
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
    OrderTotal += total;

    print("Item Total: $total USD");
  }
}
