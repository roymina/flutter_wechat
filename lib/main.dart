import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wechat/app_router.dart';
import 'package:flutter_wechat/core/theme/custom_colors.dart';
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
      theme:
          FlexThemeData.light(
            scheme: FlexScheme.shadGreen,
            surface: const Color(0xFFF5F5F5),
            onSurface: const Color(0xFF101010),
            scaffoldBackground: const Color(0xFFEDEDED),
            textTheme: const TextTheme(
              titleMedium: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).copyWith(
            extensions: [const CustomColors(linkColor: Color(0xFF1E88E5))],
            iconTheme: const IconThemeData(
              color: Color(0xFF101010),
              size: 24.0,
            ),
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Color(0xFF101010), size: 24.0),
              actionsIconTheme: IconThemeData(
                color: Color(0xFF101010),
                size: 24.0,
              ),
              titleTextStyle: TextStyle(
                color: Color(0xFF101010),
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.shadGreen),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.chat,
    );
  }
}
