// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_project_resources/widgets/loading_dialog/content/base_loading_dialog.dart';
import 'package:flutter_project_resources/widgets/loading_dialog/content/loading_backdrop_filter.dart';
import 'package:flutter_project_resources/widgets/loading_dialog/content/status_dialog.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:flutter_project_resources/core/extension/string_extensions.dart';

class LoadingDialog {
  static LoadingDialog _instance = LoadingDialog._init();
  static bool _isDialogOn = false;

  factory LoadingDialog() {
    return _instance;
  }

  LoadingDialog._init();

  static set instance(LoadingDialog overrideInstance) {
    _instance = overrideInstance;
  }

  static Future<void> show({String? message}) async {
    if (_isDialogOn) return;
    _isDialogOn = true;
    await baseDialog(
        child: SpinKitRing(
          color: Colors.grey.shade500,
          size: 80,
          lineWidth: 5,
        ),
        message: message.ifPresentOrCustom('Loading...'));
  }

  Future<void> showProgress({
    String? prefixMessage,
    required RxInt received,
    required RxInt total,
  }) async {
    double progress = 0.0;
    await baseDialog(
      child: SpinKitRing(
        color: Colors.grey.shade500,
        size: 80,
        lineWidth: 5,
      ),
      dynamicMessage: Obx(() {
        if (received.value > 0 && total.value > 0) {
          progress = (received.value * 100) / total.value;
        }
        return TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: progress),
            duration: const Duration(milliseconds: 3500),
            builder: (_, double value, __) => Text(
                  '$prefixMessage\n(${value.toStringAsFixed(1)}/100%)',
                  textAlign: TextAlign.center,
                ));
      }),
    );
  }

  static Future<void> showStatus(bool success, {String? message}) async {
    if (_isDialogOn) Get.back();
    _isDialogOn = true;
    baseDialog(
        child: StatusDialog(success: success),
        message: message.ifPresentOrEmpty());
    await Future.delayed(Duration(seconds: success ? 1 : 3));
    closeDialog();
  }

  static void closeDialog() {
    if (_isDialogOn) Get.back();
    _isDialogOn = false;
  }

  static Future<void> baseDialog(
      {required Widget child, String? message, Widget? dynamicMessage}) async {
    if (Get.testMode == true) return Future.value();
    await Get.generalDialog(
        barrierColor: Colors.black.withOpacity(0.6),
        transitionBuilder: loadingBackdropFilter,
        transitionDuration: const Duration(milliseconds: 200),
        barrierDismissible: false,
        pageBuilder: (ctx, anim1, anim2) {
          return BaseLoadingDialog(
            child: child,
            message: message,
            dynamicMessage: dynamicMessage,
          );
        });
  }
}
