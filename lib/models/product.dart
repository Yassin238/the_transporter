class Product {
  final String idProduct;
  final String name;
  final String description;
  final double price;
  final int stock;

  Product({
    required this.idProduct,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      idProduct: json['idProduct'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      stock: json['stock'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idProduct': idProduct,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
    };
  }
}
