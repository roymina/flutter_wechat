import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({super.key});

  @override
  State<NotFoundPage> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text('404 - Not Found')),
      ),
    );
  }
}
