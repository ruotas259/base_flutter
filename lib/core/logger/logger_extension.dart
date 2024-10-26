import 'package:base_flutter/flavors.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

/// シンプルな出力を行うための拡張ログプリンター
///
/// `SimplePrinter` を拡張し、ログイベントをフォーマットして出力する
/// ログメッセージには、タイムスタンプ、ログレベル、メッセージを含む
class ExtensionLogPrinter extends SimplePrinter {
  /// ログイベントをフォーマットして出力する
  ///
  /// [event] ログイベント
  ///
  /// フォーマットされたログメッセージのリストを返す
  @override
  List<String> log(LogEvent event) {
    final message = event.message;
    final formattedMessage =
        message is Function() ? message().toString() : message.toString();

    final prefix = SimplePrinter.levelPrefixes[event.level]!;
    final color = SimplePrinter.levelColors[event.level]!;

    final logMessage =
        '${DateFormat('HH:mm:ss.SSS').format(DateTime.now())}: $formattedMessage';

    return [colors ? color('$prefix $logMessage') : '$prefix $logMessage'];
  }
}

/// コンソール出力に加えて、エラーレベル以上のログが出力された場合にAssertionErrorをスローする拡張クラス
///
/// 致命的なエラーが発生した場合にスタックトレースを表示し、デバッグを容易にするために使用する
class ExtensionLogOutput extends ConsoleOutput {
  /// ログイベントを出力
  ///
  /// [event]: 出力するログイベント
  ///
  /// エラーレベル以上のログイベントの場合、スタックトレースを表示するためにAssertionErrorをスローする
  @override
  void output(OutputEvent event) {
    super.output(event);
    if (event.level.index >= Level.error.index) {
      // 致命的なエラーが発生したので、AssertionErrorをthrowしてStackTraceを表示する
      throw AssertionError('View stack trace by logger');
    }
  }
}

/// ロガー拡張
extension LogExtension on Logger {
  bool isDebugOutput() {
    // リリースビルドかつ本番環境向けの場合はログ出力しない
    return !(kReleaseMode && F.appFlavor == Flavor.prod);
  }

  /// メソッド開始ログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void enter({dynamic message}) {
    _log('<<< enter', message, Level.debug);
  }

  /// メソッド終了ログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void exit({dynamic message}) {
    _log('>>> exit', message, Level.debug);
  }

  /// Debugログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void debug({dynamic message}) {
    _log('', message, Level.debug);
  }

  /// Infoログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void info({dynamic message}) {
    _log('', message, Level.info);
  }

  /// Warningログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void warning({dynamic message}) {
    _log('', message, Level.warning);
  }

  /// Errorログを出力する
  ///
  /// [message] ログメッセージ。省略可。
  void error({dynamic message}) {
    _log('', message, Level.error);
  }

  /// ログを出力する
  ///
  /// [prefix] ログメッセージのプレフィックス
  /// [message] ログメッセージ。省略可
  /// [level] ログレベル
  void _log(String prefix, dynamic message, Level level) {
    final stackTrace = StackTrace.current.toString();
    final topStack = stackTrace.split('#2')[1].split('#3')[0];
    final methodName = topStack.substring(0, topStack.indexOf(')')).trim();

    // prefix を修正
    var formattedPrefix = prefix;
    if (prefix == '<<< enter') {
      formattedPrefix = message == null ? '<<< enter <<<' : '<<< enter';
    } else if (prefix == '>>> exit') {
      formattedPrefix = message == null ? '>>> exit >>>' : '>>> exit';
    }

    final logMessage = message == null
        ? '$methodName) $formattedPrefix'
        : '$methodName) $formattedPrefix : $message';

    if (isDebugOutput() && kReleaseMode) {
      debugPrint(logMessage);
    } else {
      log(level, logMessage);
    }
  }
}
