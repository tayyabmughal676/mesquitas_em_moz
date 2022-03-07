import 'package:flutter/material.dart';

import 'res.dart';

extension ConsoleDebugPrint on String {
  consoleMessage() {
    return debugPrint(this);
  }
}

extension AlignExtension on Widget {
  Widget getAlign() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget get30HorizontalPadding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 30.0),
      child: this,
    );
  }

  Widget get25HorizontalPadding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 25.0),
      child: this,
    );
  }

  Widget get20HorizontalPadding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20.0),
      child: this,
    );
  }

  Widget getChildCenter() {
    return Center(
      child: this,
    );
  }
}

extension Paddings on Widget {
  SizedBox getPaddingHeight({required double height}) {
    return SizedBox(
      height: sizes!.heightRatio * height,
    );
  }

  SizedBox getPaddingWidth({required double width}) {
    return SizedBox(
      width: sizes!.widthRatio * width,
    );
  }
}

extension StringExtension on String {
  /// Truncate a string if it's longer than [maxLength] and add an [ellipsis].
  String getShortString(int maxLength, [String ellipsis = "…"]) =>
      length > maxLength
          ? '${substring(0, maxLength - ellipsis.length)}$ellipsis'
          : this;
}
