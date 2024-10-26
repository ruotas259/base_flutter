import 'dart:io';

import 'package:base_flutter/constant/color_definition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 全画面プログレスインジケータ
class FullScreenProgressIndicator extends StatelessWidget {
  const FullScreenProgressIndicator({
    this.color = Colors.grey,
    this.backgroundColor = ColorDefinitions.indicatorBackgroundColor,
    super.key,
  });

  /// プログレスインジケータの色
  final Color color;

  /// 画面の背景色
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (() async {
          // indicator表示中はスワイプバック不可にする
          return false;
        }),
        child: Opacity(
          opacity: 0.5,
          child: Container(
            color: backgroundColor,
            child: Center(
              // OS標準のインジケータを表示する
              child: Platform.isIOS
                  ? CupertinoActivityIndicator(
                      radius: 18.0,
                      color: color,
                    )
                  : SizedBox(
                      width: 48.0,
                      height: 48.0,
                      child: CircularProgressIndicator(
                        color: color,
                      ),
                    ),
            ),
          ),
        ));
  }
}
