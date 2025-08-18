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
      theme:
          FlexThemeData.light(
            scheme: FlexScheme.shadGreen,
            surface: const Color(0xFFf5f5f5),
            onSurface: const Color(0xFF101010),
            scaffoldBackground: const Color(0xFFEDEDED),
            textTheme: const TextTheme(
              titleMedium: TextStyle(fontWeight: FontWeight.bold),
            ),
          ).copyWith(
            iconTheme: const IconThemeData(
              color: Color(0xFF101010),
              size: 24.0,
            ),
            // AppBar 中的图标主题
            appBarTheme: FlexThemeData.light(scheme: FlexScheme.shadGreen)
                .appBarTheme
                .copyWith(
                  iconTheme: const IconThemeData(
                    color: Color(0xFF101010), // AppBar 图标颜色
                  ),
                  actionsIconTheme: const IconThemeData(
                    color: Color(0xFF353535), // AppBar 操作图标颜色
                  ),
                ),
          ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.shadGreen),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.message,
    );
  }
}
