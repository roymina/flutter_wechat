import 'package:flutter/material.dart';
import 'package:flutter_wechat/core/theme/custom_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 36.0),
                        contentPadding: EdgeInsets.all(0),
                        hintText: '搜索',
                        hintStyle: TextStyle(
                          color: Theme.of(context).hintColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search_rounded, size: 20.0),
                        filled: true,
                        fillColor: Theme.of(context).cardColor,
                        suffixIcon: Icon(Icons.mic_none_outlined),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  TextButton(
                    child: Text(
                      "取消",
                      style: TextStyle(
                        fontSize: 16.0,
                        color:
                            Theme.of(
                              context,
                            ).extension<CustomColors>()?.linkColor ??
                            Colors.blue,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
