import 'package:base_flutter/flavors.dart';
import 'package:base_flutter/provider/app_startup_provider.dart';
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
      // ViewModelの取得
      final viewModel = ref.read(appStartupProvider.notifier);
      await viewModel.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 値の取得
    final isLoading =
        ref.watch(appStartupProvider.select((value) => value.isLoading));

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
