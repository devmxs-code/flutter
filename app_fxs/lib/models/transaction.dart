class FinancialTransaction {
  String id;
  String title;
  double amount;
  String type;
  DateTime date;

  FinancialTransaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.type,
    required this.date,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'amount': amount,
    'type': type,
    'date': date.toIso8601String(),
  };

  factory FinancialTransaction.fromMap(Map<String, dynamic> map) {
    return FinancialTransaction(
      id: map['id'],
      title: map['title'],
      amount: map['amount'],
      type: map['type'],
      date: DateTime.parse(map['date']),
    );
  }
}
