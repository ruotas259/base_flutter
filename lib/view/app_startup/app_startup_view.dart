import 'package:base_flutter/app.dart';
import 'package:base_flutter/constant/enum/result.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:base_flutter/flavors.dart';
import 'package:base_flutter/provider/app_startup_provider.dart';
import 'package:base_flutter/provider/loadingProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartupView extends ConsumerStatefulWidget {
  const AppStartupView({super.key});

  @override
  AppStartupViewState createState() => AppStartupViewState();
}

class AppStartupViewState extends ConsumerState<AppStartupView> {
  @override
  void initState() {
    super.initState();

    Future(() async {
      ref.read(loadingProvider.notifier).show();
      // ViewModelの取得
      final viewModel = ref.read(appStartupProvider.notifier);
      await viewModel.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 値の取得
    // final isLoading =
    //     ref.watch(appStartupProvider.select((value) => value.isLoading));

    ref.listen(appStartupProvider.select((value) => value.result), (_, next) {
      // 処理結果ハンドリング
      _handleResult(next);
    });

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
        ),
      ),
    ));
  }

  Future<void> _handleResult(Result result) async {
    logger.enter(message: 'result:$result');

    ref.read(loadingProvider.notifier).hide();
    final viewModel = ref.read(appStartupProvider.notifier);

    switch (result) {
      case Result.success:
        // 成功時の処理
        break;
      default:
        break;
    }
  }
}
