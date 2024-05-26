import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'artwork_app.dart';
import 'locator.dart';

void main() async {
  // Initialize the app
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Global error handling
  FlutterError.onError = (FlutterErrorDetails details) {
    debugPrint("Error From INSIDE FRAME_WORK");
    debugPrint("----------------------");
    debugPrint("Error :  ${details.exception}");
    debugPrint("StackTrace :  ${details.stack}");
  };

  // Register the locator
  configureDependencies();

  // Run the app
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("tr"),
        Locale("en"),
      ],
      path: "assets/translations",
      fallbackLocale: const Locale("en"),
      child: const ArtworkApp(),
    ),
  );
}
