import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  final String idOrder;
  final String userId;
  final String productId;
  final int quantity;
  final String status;
  final DateTime orderDate;

  Order({
    required this.idOrder,
    required this.userId,
    required this.productId,
    required this.quantity,
    required this.status,
    required this.orderDate,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      idOrder: json['idOrder'],
      userId: json['userId'],
      productId: json['productId'],
      quantity: json['quantity'],
      status: json['status'],
      orderDate: (json['orderDate'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idOrder': idOrder,
      'userId': userId,
      'productId': productId,
      'quantity': quantity,
      'status': status,
      'orderDate': Timestamp.fromDate(orderDate),
    };
  }
}
