import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'features/artworks/artworks_page.dart';
import 'routes.dart';

class ArtworkApp extends StatelessWidget {
  const ArtworkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Artwork App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        primaryColor: Colors.green,
      ),
      routes: Routes.routes(context),
      home: const ArtworksPage(),
    );
  }
}
