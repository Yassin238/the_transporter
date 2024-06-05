import 'package:cloud_firestore/cloud_firestore.dart';

class Delivery {
  final String idDelivery;
  final String orderId;
  final String deliveryPersonId;
  final DateTime deliveryDate;
  final String status;

  Delivery({
    required this.idDelivery,
    required this.orderId,
    required this.deliveryPersonId,
    required this.deliveryDate,
    required this.status,
  });

  factory Delivery.fromJson(Map<String, dynamic> json) {
    return Delivery(
      idDelivery: json['idDelivery'],
      orderId: json['orderId'],
      deliveryPersonId: json['deliveryPersonId'],
      deliveryDate: (json['deliveryDate'] as Timestamp).toDate(),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDelivery': idDelivery,
      'orderId': orderId,
      'deliveryPersonId': deliveryPersonId,
      'deliveryDate': Timestamp.fromDate(deliveryDate),
      'status': status,
    };
  }
}
