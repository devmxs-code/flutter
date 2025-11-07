import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/transaction.dart';
import '../services/firestore_service.dart';

class EntriesScreen extends StatefulWidget {
  const EntriesScreen({super.key});

  @override
  State<EntriesScreen> createState() => _EntriesScreenState();
}

class _EntriesScreenState extends State<EntriesScreen> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final FirestoreService _service = FirestoreService();

  List<FinancialTransaction> _transactions = [];

  void _addTransaction() async {
    final tx = FinancialTransaction(
      id: const Uuid().v4(),
      title: _titleController.text,
      amount: double.tryParse(_amountController.text) ?? 0,
      type: 'entrada',
      date: DateTime.now(),
    );
    await _service.addTransaction(tx);
    _loadTransactions();
  }

  void _loadTransactions() async {
    final txs = await _service.getTransactions('entrada');
    setState(() => _transactions = txs);
  }

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Título'),
                ),
                TextField(
                  controller: _amountController,
                  decoration: const InputDecoration(labelText: 'Valor'),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                  onPressed: _addTransaction,
                  child: const Text('Adicionar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder:
                  (_, i) => ListTile(
                    title: Text(_transactions[i].title),
                    subtitle: Text(_transactions[i].date.toIso8601String()),
                    trailing: Text(
                      'R\$ ${_transactions[i].amount.toStringAsFixed(2)}',
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
