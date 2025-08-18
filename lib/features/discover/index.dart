import 'package:flutter/material.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';

class DiscoverIndexPage extends StatefulWidget {
  const DiscoverIndexPage({super.key});

  @override
  State<DiscoverIndexPage> createState() => _DiscoverIndexPageState();
}

class _DiscoverIndexPageState extends State<DiscoverIndexPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: '发现',
      currentIndex: 2,
      body: Container(
        color: Colors.white,
        child: Center(child: Text('Discover Page')),
      ),
    );
  }
}
