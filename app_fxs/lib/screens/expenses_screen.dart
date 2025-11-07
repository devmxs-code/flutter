import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/transaction.dart';
import '../services/firestore_service.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final FirestoreService _service = FirestoreService();

  List<FinancialTransaction> _transactions = [];

  void _addTransaction() async {
    final tx = FinancialTransaction(
      id: const Uuid().v4(),
      title: _titleController.text,
      amount: double.tryParse(_amountController.text) ?? 0,
      type: 'saida', // <- Aqui é o tipo "saida"
      date: DateTime.now(),
    );
    await _service.addTransaction(tx);
    _loadTransactions();
    _titleController.clear();
    _amountController.clear();
  }

  void _loadTransactions() async {
    final txs = await _service.getTransactions('saida');
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
      appBar: AppBar(title: const Text('Saídas')),
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
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _addTransaction,
                  child: const Text('Adicionar'),
                ),
              ],
            ),
          ),
          const Divider(),
          const Text(
            'Lista de Saídas',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (_, i) {
                final tx = _transactions[i];
                return ListTile(
                  title: Text(tx.title),
                  subtitle: Text('R\$ ${tx.amount.toStringAsFixed(2)}'),
                  trailing: Text(
                    '${tx.date.day}/${tx.date.month}/${tx.date.year}',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
