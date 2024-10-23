import 'package:base_flutter/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flavors.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // AppBarがない画面の際にステータスバーを黒色に変更
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
  ));

  // flutter_native_splashを使用した場合に起こるステータスバーが表示されないバグの対策
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // フレーバーで変わる値の定義を追加する
  FlavorConfig(variables: {
    "AUTH_BASE_URL": "xxx.xxx.dev",
  });

  F.appFlavor = Flavor.dev;
  runApp(
    const ProviderScope(child: App()),
  );
}
