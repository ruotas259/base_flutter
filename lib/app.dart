import 'package:base_flutter/component/full_screen_progress_indicator.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:base_flutter/provider/loadingProvider.dart';
import 'package:base_flutter/view/app_startup/app_startup_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import 'flavors.dart';

/// アプリで使用するロガー
final logger = Logger(
  // ログ出力内容をシンプルにカスタマイズ
  printer: ExtensionLogPrinter(),

  // ログ出力したあとに処理を挿入する
  output: ExtensionLogOutput(),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            // 文字サイズを固定にしたい場合
            MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1)),
                child: child!),
            Consumer(builder: (context, ref, _) {
              final isLoading = ref.watch(loadingProvider);
              return isLoading
                  ? const FullScreenProgressIndicator()
                  : const SizedBox.shrink();
            })
          ],
        );
      },
      theme: _buildTheme(),
      home: _flavorBanner(
        child: const AppStartupView(),
        show: kDebugMode,
      ),
    );
  }

  /// テーマ設定
  ThemeData _buildTheme() {
    var baseTheme = ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
      // マテリアル3を使うかどうか
      // useMaterial3: false,
    );

    return baseTheme.copyWith(
      // アプリ全体で使用するフォント
      textTheme: GoogleFonts.ibmPlexSansJpTextTheme(baseTheme.textTheme),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              location: BannerLocation.topStart,
              message: F.name,
              color: Colors.green.withOpacity(0.6),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
              child: child,
            )
          : Container(
              child: child,
            );
}
