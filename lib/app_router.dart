import 'package:flutter/material.dart';
import 'package:flutter_wechat/features/contact/index.dart';
import 'package:flutter_wechat/features/discover/index.dart';
import 'package:flutter_wechat/features/exceptions/not_found.dart';
import 'package:flutter_wechat/features/message/index.dart';
import 'package:flutter_wechat/features/my/index.dart';
import 'package:flutter_wechat/routes.dart';
import 'package:flutter_wechat/shared/pages/search_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.message:
        return MaterialPageRoute(builder: (_) => const MessageIndexPage());
      case AppRoutes.contact:
        return MaterialPageRoute(builder: (_) => const ContactIndexPage());
      case AppRoutes.discover:
        return MaterialPageRoute(builder: (_) => const DiscoverIndexPage());
      case AppRoutes.my:
        return MaterialPageRoute(builder: (_) => const MyIndexPage());
      case AppRoutes.search:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
