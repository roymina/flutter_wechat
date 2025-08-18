import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
              Container(
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Stack(
                  children: [
                    // 居中的图标
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search, color: Colors.grey[600], size: 18),
                          SizedBox(width: 8),
                          Text(
                            '搜索',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 透明的TextField，覆盖整个容器
                    TextField(
                      textAlign: TextAlign.center, // 输入时居中对齐
                      decoration: InputDecoration(
                        hintText: '', // 隐藏提示文字，因为我们用上面的Text显示
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        isDense: true,
                      ),
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                      cursorColor: Theme.of(context).primaryColor,
                      onTap: () {
                        // 当点击时，可以隐藏居中的提示内容
                      },
                      onChanged: (value) {
                        // Handle search input change
                        setState(() {
                          // 当有输入时，可以隐藏背景的提示内容
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
