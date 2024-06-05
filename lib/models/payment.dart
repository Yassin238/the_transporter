import 'package:cloud_firestore/cloud_firestore.dart';

class Payment {
  final String idPayment;
  final String orderId;
  final double amount;
  final String method;
  final DateTime date;

  Payment({
    required this.idPayment,
    required this.orderId,
    required this.amount,
    required this.method,
    required this.date,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      idPayment: json['idPayment'],
      orderId: json['orderId'],
      amount: json['amount'],
      method: json['method'],
      date: (json['date'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idPayment': idPayment,
      'orderId': orderId,
      'amount': amount,
      'method': method,
      'date': date,
    };
  }
}
