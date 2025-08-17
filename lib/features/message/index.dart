import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';

class MessageIndexPage extends StatefulWidget {
  const MessageIndexPage({super.key});

  @override
  State<MessageIndexPage> createState() => _MessageIndexPageState();
}

class _MessageIndexPageState extends State<MessageIndexPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      currentIndex: 0,
      body: Container(
        color: Colors.white,
        child: Center(child: Text('Message Page')),
      ),
    );
  }
}
