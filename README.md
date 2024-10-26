# base_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# はじめに

- Flutter開発における、ベースプロジェクトとして作成する

## 開発環境

- Flutter: 3.24.3(2024/10/13時点の最新)
- Android Studio
- VSCode
- Xcode(iOSシミュレータ起動等に必要)
- fvm: 用途に合わせて

## Flutter バージョン管理(推奨)

Flutter SDK のバージョン管理ツールの `fvm` を使用
<br>
[インストール手順](https://fvm.app/documentation/getting%EF%BC%8Dstarted/installation)

※ `fvm` を使う場合は `flutter` コマンドの前に `fvm` を付ける必要があります。
<br>
例) fvm flutter --version

### Flutter SDKのインストール
`fvm install`

バージョンが正しく表示されていれば成功
`fvm flutter --version`

## Flutter開発環境構築

`fvm flutter doctor` コマンドを実行し、 `No issues found!` が出力されていれば良いです。
<br>
エラーが出力された場合、指示に従って解消してください。

## 各開発環境向けの構築
### Flavor
[flutter_flavor ](https://pub.dev/packages/flutter_flavor)、[flutter_flavorizr ](https://pub.dev/packages/flutter_flavorizr) を使用します。

アプリ起動時の引数において、Flavorタイプ(local、dev、stg、prod)を切り替えることができます。
<br>
ルートのmain_xxx.dartをFlavorタイプごとに切り替える必要があることに注意してください。

例)FlavorタイプがstgでDebugモードで起動する場合
<br>
`$ fvm flutter run --debug --flavor stg -t lib/main_stg.dart`

## 単体テスト方法
テストカバレッジを生成$実行
<br>
`fvm flutter test --coverage`

テストレポートをhtmlに変換
<br>
`genhtml coverage/lcov.info -o coverage/html`

テストレポートを開く
<br>
`open ./coverage/html/index.html`

## Modelの追加
モデルファイルを格納するディレクトリを作成してください。
<br>
`freezed` で定義して自動生成を行います。
<br>
以下の記述が含まれると xxx.freezed.dart、xxx.g.dart が生成され、toJson()、fromJson() メソッドを生やすことができます。

```
part 'xxx.freezed.dart'
part 'xxx.g.dart';
```

以下の自動生成のコマンドを実行すると、 xxx.freezed.dart と xxx.g.dart ファイルが生成されます。

`fvm flutter pub run build_runner build --delete-confliction-outputs`

## パッケージの追加
OSSのライセンス利用ページは、[flutter_oss_license](https://pub.dev/packages/flutter_oss_licenses) パッケージを使用して、ライセンスファイルを作成します。
<br>
パッケージを追加する際は、下記のコマンドを実行し、ライセンスファイルを更新するようにしてください。

`fvm flutter pub run flutter_oss_licenses:generate.dart -o /lib/gen/oss_licenses.dart`

## DeployGateへのアップロード
以下コマンドを実行する。
<br>
`curl --url "https://deploygate.com/api/users/${OWNER_NAME}/apps" -H "Authorization: Bearer ${API_TOKEN}" -X POST -F "file=@build/app/outputs/flutter-apk/app-dev-debug.apk"`