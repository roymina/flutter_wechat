import 'package:flutter/material.dart';

// 亮色主题
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF1AAD19), // 绿色，根据截图中主要颜色选择
  scaffoldBackgroundColor: const Color(0xFFF5F5F5), // 浅灰色背景
  appBarTheme: const AppBarTheme(
    color: Color(0xFFFFFFFF), // 顶部栏白色
    iconTheme: IconThemeData(color: Color(0xFF000000)), // 图标颜色
    titleTextStyle: TextStyle(color: Color(0xFF000000)), // 标题颜色
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFF000000)), // 正文颜色
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF1AAD19), // 按钮颜色
    disabledColor: Color(0xFFB2EBF2), // 按钮禁用颜色
    textTheme: ButtonTextTheme.primary, // 按钮文本主题
  ),
);

// 暗色主题
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF004D40), // 深绿色，暗色主题主色
  scaffoldBackgroundColor: const Color(0xFF303030), // 深灰色背景
  appBarTheme: const AppBarTheme(
    color: Color(0xFF1B5E20), // 顶部栏深绿色
    iconTheme: IconThemeData(color: Color(0xFFFFFFFF)), // 图标颜色
    titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)), // 标题颜色
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFFFFFFFF)), // 正文颜色
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF004D40), // 按钮颜色
    disabledColor: Color(0xFF4DB6AC), // 按钮禁用颜色
    textTheme: ButtonTextTheme.primary, // 按钮文本主题
  ),
);
