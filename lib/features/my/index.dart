import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';

class MyIndexPage extends StatefulWidget {
  const MyIndexPage({super.key});

  @override
  State<MyIndexPage> createState() => _MyIndexPageState();
}

class _MyIndexPageState extends State<MyIndexPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: '我',
      currentIndex: 3,
      body: Container(
        color: Colors.white,
        child: Center(child: Text('My Page')),
      ),
    );
  }
}
