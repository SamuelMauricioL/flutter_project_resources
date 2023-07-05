import 'package:flutter_project_resources/models/transaction_model.dart';

List<TransactionModel> getMockedTransactions() {
  return [
    TransactionModel(
      id: '1',
      amount: 10,
      fee: 1.0,
      productId: '1',
      comment: 'Comentario 1',
      quantity: 1,
    ),
    TransactionModel(
      id: '2',
      amount: 20,
      fee: 1.0,
      productId: '2',
      comment: 'Comentario 2',
      quantity: 2,
    ),
    TransactionModel(
      id: '3',
      amount: 30,
      fee: 1.0,
      productId: '3',
      comment: 'Comentario 3',
      quantity: 3,
    ),
    TransactionModel(
      id: '4',
      amount: 40,
      fee: 1.0,
      productId: '4',
      comment: 'Comentario 4',
      quantity: 4,
    ),
    TransactionModel(
      id: '5',
      amount: 50,
      fee: 1.0,
      productId: '5',
      comment: 'Comentario 5',
      quantity: 5,
    ),
  ];
}
