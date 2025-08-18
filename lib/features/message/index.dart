import 'package:flutter/material.dart';
import 'package:flutter_wechat/routes.dart';
import 'package:flutter_wechat/shared/widgets/base_scaffold.dart';
import 'package:flutter_wechat/shared/widgets/top_appbar.dart';

class MessageIndexPage extends StatefulWidget {
  const MessageIndexPage({super.key});

  @override
  State<MessageIndexPage> createState() => _MessageIndexPageState();
}

class _MessageIndexPageState extends State<MessageIndexPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      topAppbar: TopAppbar(
        title: '微信(9693)',
        showBackButton: false,
        rightButtonIcon: Icon(Icons.add_circle_outline),
      ),
      currentIndex: 0,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.search);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 16.0,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withAlpha(150),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '搜索',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(150),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
