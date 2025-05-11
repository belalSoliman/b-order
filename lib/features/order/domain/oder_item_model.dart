class OrderItemModel {
  final int? id;
  final int orderId;
  final String name;
  final double price;
  final int quantity;
  final String imagePath;

  OrderItemModel({
    this.id,
    required this.orderId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orderId': orderId,
      'name': name,
      'price': price,
      'quantity': quantity,
      'imagePath': imagePath,
    };
  }

  factory OrderItemModel.fromMap(Map<String, dynamic> map) {
    return OrderItemModel(
      id: map['id'],
      orderId: map['orderId'],
      name: map['name'],
      price: map['price'],
      quantity: map['quantity'],
      imagePath: map['imagePath'],
    );
  }
}