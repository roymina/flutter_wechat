import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wechat/app_router.dart';
import 'package:flutter_wechat/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信',
      theme: FlexThemeData.light(scheme: FlexScheme.shadGreen),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.shadGreen),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.message,
    );
  }
}
