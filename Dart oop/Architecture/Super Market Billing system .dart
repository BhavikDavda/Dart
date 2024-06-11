import 'dart:io';

class Product 
{
  int id;
  String name;
  double price;

  Product(this.id, this.name, this.price);
}

class Customer 
{
  int id;
  String name;
  String contact;
  List<Map<String, dynamic>> cart = [];

  Customer(this.id, this.name, this.contact);

  void addProductToCart(Product product, int quantity) 
  {
    cart.add({
      'pro_id': product.id,
      'pro_name': product.name,
      'pro_qty': quantity,
      'pro_price': product.price * quantity
    });
  }

  double calculateTotal() 
  {
    return cart.fold(0, (sum, item) => sum + item['pro_price']);
  }

  double calculateDiscountedTotal() 
  {
    double total = calculateTotal();
    double discount = 0;

    if (total > 500 && total <= 1500) 
    {
      discount = total * 0.10;
    } else if (total > 1500 && total <= 3500) 
    {
      discount = total * 0.20;
    } else if (total > 3500 && total <= 6500) 
    {
      discount = total * 0.25;
    } else if (total > 6500) 
    {
      discount = total * 0.30;
    }

    return total - discount;
  }

  double calculateDiscount() 
  {
    double total = calculateTotal();
    if (total > 500 && total <= 1500) 
    {
      return total * 0.10;
    } else if (total > 1500 && total <= 3500) 
    {
      return total * 0.20;
    } else if (total > 3500 && total <= 6500) 
    {
      return total * 0.25;
    } else if (total > 6500) 
    {
      return total * 0.30;
    }
    return 0;
  }
}

void main() 
{
  List<Customer> customers = [];
  List<Product> products = [
    Product(1, 'chocolet', 150.0),
    Product(2, 'mix dry fruit', 300.0),
    Product(3, 'all stationary', 200.0),
    Product(4, 'Sport wear', 800.0),
    Product(5, 'Snaks', 50.0)
  ];

  while (true) {
    print('1. Add Customer Detail');
    print('2. Add Product to Cart');
    print('3. Generate Bill');
    print('4. Search Customer');
    print('5. Exit');

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Enter Customer ID:');
        int id = int.parse(stdin.readLineSync()!);

        print('Enter Customer Name:');
        String name = stdin.readLineSync()!;

        print('Enter Customer Contact:');
        String contact = stdin.readLineSync()!;

        customers.add(Customer(id, name, contact));
        break;

      case '2':
        print('Enter Customer ID:');
        int custId = int.parse(stdin.readLineSync()!);

        Customer? customer = findCustomerById(customers, custId);

        if (customer == null) 
        {
          print('Customer not found.');
        } else 
        {
          print('Available Products:');
          products.forEach((product) 
          {
            print('${product.id}. ${product.name} - \$${product.price}');
          });
          print('Enter Product ID:');
          int prodId = int.parse(stdin.readLineSync()!);

          print('Enter Quantity:');
          int qty = int.parse(stdin.readLineSync()!);

          Product? product = findProductById(products, prodId);
          if (product == null) 
          {
            print('Product not found.');
          } else 
          {
            customer.addProductToCart(product, qty);
          }
        }
        break;

      case '3':
        print('Enter Customer ID:');
        int custId = int.parse(stdin.readLineSync()!);

        Customer? customer = findCustomerById(customers, custId);

        if (customer == null) 
        {
          print('Customer not found.');
        } else {
          print('Customer: ${customer.name}');
          print('Contact: ${customer.contact}');
          print('Cart:');
          customer.cart.forEach((item) 
          {
            print('${item['pro_name']} - ${item['pro_qty']} x ${item['pro_price'] / item['pro_qty']} = ${item['pro_price']}');
          });
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.calculateDiscountedTotal();
          print('Total: ${total}');
          print('Discount: ${discount}');
          print('Amount to Pay: ${discountedTotal}');
        }
        break;

      case '4':
        print('Enter Customer ID:');
        int custId = int.parse(stdin.readLineSync()!);


        Customer? customer = findCustomerById(customers, custId);
        if (customer == null) 
        {
          print('Customer not found.');
        } else {
          print('Customer ID: ${customer.id}');
          print('Customer Name: ${customer.name}');
          print('Customer Contact: ${customer.contact}');
          print('Cart:');
          customer.cart.forEach((item) 
          {
            print('${item['pro_name']} - ${item['pro_qty']} x  ${item['pro_price'] / item['pro_qty']} = ${item['pro_price']}');
          });
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.calculateDiscountedTotal();

          print('Total: ${total}');
          print('Discount: ${discount}');
          print('Amount to Pay: ${discountedTotal}');

        }
        break;

      case '5':
        exit(0);

      default:
        print('Invalid... Please try again...');
    }
  }
}

Customer? findCustomerById(List<Customer> customers, int id) 
{
  Customer? foundCustomer;
  customers.forEach((customer) 
  {
    if (customer.id == id) 
    {
      foundCustomer = customer;
    }
  });
  return foundCustomer;
}

Product? findProductById(List<Product> products, int id) 
{
  Product? foundProduct;
  products.forEach((product) 
  {
    if (product.id == id) 
    {
      foundProduct = product;
    }
  });
  return foundProduct;
}
