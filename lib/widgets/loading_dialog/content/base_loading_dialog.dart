import 'package:flutter/material.dart';
import 'package:flutter_project_resources/core/theme/colors/mono.dart';
import 'package:flutter_project_resources/core/theme/spacing/container_size.dart';
import 'package:flutter_project_resources/core/extension/string_extensions.dart';
import 'package:flutter_project_resources/core/theme/style/border_radius.dart';

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
      backgroundColor: MonoColors.monoF5f7fa,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          BorderRadiusValues.borderRadiusSm,
        ),
      ),
      content: SizedBox(
          width: ContainerSize.dialogSmWidth,
          height: ContainerSize.dialogSmHeight,
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
