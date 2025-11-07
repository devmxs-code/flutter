import '../models/transaction.dart';

class FirestoreService {
  // Usando uma lista para simular os dados locais
  final List<FinancialTransaction> _transactions = [];

  // Adiciona uma transação
  Future<void> addTransaction(FinancialTransaction tx) async {
    // Simulando a adição da transação à lista local
    _transactions.add(tx);
  }

  // Recupera transações filtradas por tipo
  Future<List<FinancialTransaction>> getTransactions(String type) async {
    // Simulando a recuperação das transações do tipo específico
    return _transactions.where((tx) => tx.type == type).toList();
  }
}
