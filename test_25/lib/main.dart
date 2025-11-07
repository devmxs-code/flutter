import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Financeiro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Controle Financeiro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> transactions = [];
  double saldo = 0.0;

  final TextEditingController _valorController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  void _adicionarTransacao(double valor, String descricao) {
    setState(() {
      transactions.add({'valor': valor, 'descricao': descricao});
      saldo += valor;
    });
  }

  void _removerTransacao(int index) {
    setState(() {
      saldo -= transactions[index]['valor'];
      transactions.removeAt(index);
    });
  }

  @override
  void dispose() {
    _valorController.dispose();
    _descricaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Saldo: R\$ ${saldo.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: saldo >= 0 ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _valorController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Valor (use negativo para saída)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descricaoController,
              decoration: const InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                final double valor =
                    double.tryParse(_valorController.text) ?? 0.0;
                final String descricao = _descricaoController.text;
                if (valor != 0.0 && descricao.isNotEmpty) {
                  _adicionarTransacao(valor, descricao);
                  _valorController.clear();
                  _descricaoController.clear();
                }
              },
              icon: const Icon(Icons.add),
              label: const Text('Adicionar Transação'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child:
                  transactions.isEmpty
                      ? const Center(
                        child: Text('Nenhuma transação adicionada.'),
                      )
                      : ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (ctx, index) {
                          final transacao = transactions[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              title: Text(transacao['descricao']),
                              subtitle: Text(
                                'R\$ ${transacao['valor'].toStringAsFixed(2)}',
                                style: TextStyle(
                                  color:
                                      transacao['valor'] >= 0
                                          ? Colors.green
                                          : Colors.red,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                                onPressed: () => _removerTransacao(index),
                              ),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
