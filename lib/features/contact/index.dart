import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';

class ContactIndexPage extends StatefulWidget {
  const ContactIndexPage({super.key});

  @override
  State<ContactIndexPage> createState() => _ContactIndexPageState();
}

class _ContactIndexPageState extends State<ContactIndexPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: '通讯录',
      currentIndex: 1,
      body: Container(
        color: Colors.white,
        child: Center(child: Text('Contact Index Page')),
      ),
    );
  }
}
