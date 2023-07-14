import 'package:flutter/material.dart';

class StatusDialog extends StatelessWidget {
  final bool success;
  const StatusDialog({Key? key, required this.success}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          border: Border.all(
            width: 4.0,
            color: Colors.grey.shade500,
          ),
        ),
        child: Icon(
          success ? Icons.check : Icons.clear,
          color: Colors.grey.shade500,
          size: 50,
        ));
  }
}
