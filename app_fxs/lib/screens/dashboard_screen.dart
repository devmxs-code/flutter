import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _service = FirestoreService();
  double entradas = 0;
  double saidas = 0;

  void _loadData() async {
    final e = await _service.getTransactions('entrada');
    final s = await _service.getTransactions('saida');

    setState(() {
      entradas = e.fold(0, (sum, tx) => sum + tx.amount);
      saidas = s.fold(0, (sum, tx) => sum + tx.amount);
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final saldo = entradas - saidas;
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Entradas: R\$ ${entradas.toStringAsFixed(2)}'),
            Text('Saídas: R\$ ${saidas.toStringAsFixed(2)}'),
            Text('Saldo: R\$ ${saldo.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
