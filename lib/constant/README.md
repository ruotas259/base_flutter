# constant

アプリで使用する定数の管理をします。<br>
AndroidでいうResourceのような役割を持っています。<br>
constantフォルダによく格納するファイルは以下の通りです。

* colors.dart
  * アプリで使用する色の定義をします。独自のマテリアルカラーも定義します。
* config.dart
  * アプリで使用する設定ファイルです。ロジックを変えずとも設定ファイルの値を書き換えれば動きが変わるような値を定義しています。
* dimens.dart
  * アプリで共通で使用するUIに関する定義をします。
    * margin
    * padding
    * size
    * duration
    * fontSize
    * etc...
* strings.dart
  * アプリで使用する文言を定義します。
  * 基本的には文字列のハードコードはしない思想です。
* urls.dart
  * アプリで使用するURLを定義します。
