import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class BaseManager<T> {
  @protected
  late T api;

  BaseManager({mockedApi}) {
    api = mockedApi ?? Get.find();
  }
}
