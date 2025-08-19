import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color linkColor;

  const CustomColors({required this.linkColor});

  @override
  ThemeExtension<CustomColors> copyWith({Color? linkColor}) {
    return CustomColors(linkColor: linkColor ?? this.linkColor);
  }

  @override
  ThemeExtension<CustomColors> lerp(
    ThemeExtension<CustomColors>? other,
    double t,
  ) {
    if (other is! CustomColors) return this;
    return CustomColors(linkColor: Color.lerp(linkColor, other.linkColor, t)!);
  }
}
