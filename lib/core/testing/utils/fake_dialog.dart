// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:optional_extensions/optional_extensions.dart';

class FakeDialog implements LoadingDialog {
  @override
  void closeDialog() {
    return;
  }

  @override
  Future errorDialog({
    String? message,
    bool closePrevDialog = true,
    Duration? timeToCloseDialog,
  }) {
    return Future.value();
  }

  @override
  Future loadingDialog({String? message}) {
    return Future.value();
  }

  @override
  Future successfulDialog(
      {String? message, String? goTo, int? id, bool closePrevDialog = true}) {
    return Future.value();
  }

  @override
  Future showDialog(Widget content, {bool barrierDismissible = true}) {
    return Future.value();
  }

  @override
  Future<void> showProgress(
      {String? prefixMessage, required RxInt received, required RxInt total}) {
    throw UnimplementedError();
  }
}
