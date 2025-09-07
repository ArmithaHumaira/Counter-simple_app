import 'package:flutter/material.dart';
import '../models/history.dart';
import 'package:intl/intl.dart';

class HistoryItem extends StatelessWidget {
  final History history;

  const HistoryItem({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        history.value >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
        color: history.value >= 0 ? Colors.green : Colors.red,
      ),
      title: Text('Value: ${history.value}'),
      subtitle: Text(DateFormat('HH:mm:ss').format(history.time)),
    );
  }
}
