import 'dart:ui';

import 'package:flutter/material.dart';

extension ContextExtension<T> on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  NavigatorState get navigator => Navigator.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  FlutterView get view => View.of(this);

  ModalRoute<T>? get modalRoute => ModalRoute.of(this);
}
