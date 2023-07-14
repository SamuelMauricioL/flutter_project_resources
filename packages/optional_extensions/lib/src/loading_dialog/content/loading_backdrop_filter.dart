import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

Widget loadingBackdropFilter(BuildContext ctx, Animation<double> a1,
    Animation<double> a2, Widget widget) {
  return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaX: max(0.001, 4.0 * a1.value),
          sigmaY: max(0.001, 4.0 * a1.value)),
      child: Transform.scale(
        scale: a1.value,
        child: Opacity(
          opacity: a1.value,
          child: widget,
        ),
      ));
}
