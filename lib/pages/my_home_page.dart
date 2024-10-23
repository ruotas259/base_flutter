import 'package:base_flutter/app.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:flutter/material.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.enter(message: 'test');
    logger.exit();
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
        ),
      ),
    );
  }
}
