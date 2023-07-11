import 'package:flutter/material.dart';
import 'package:optional_extensions/src/extension/string_extensions.dart';

class BaseLoadingDialog extends StatelessWidget {
  final Widget child;
  final String? message;
  final Widget? dynamicMessage;

  const BaseLoadingDialog(
      {Key? key, required this.child, this.message, this.dynamicMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFF5F7FA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      content: SizedBox(
          width: 180.0,
          height: 200.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              child,
              const SizedBox(
                height: 24,
              ),
              dynamicMessage ??
                  Text(
                    message.ifPresentOrEmpty(),
                    style: TextStyle(color: Colors.grey.shade500),
                    textAlign: TextAlign.center,
                  )
            ],
          )),
    );
  }
}
