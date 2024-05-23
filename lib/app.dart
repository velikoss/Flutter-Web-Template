import 'package:flutter/material.dart';
import 'package:flutter_web_template/utils/text_theme_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web_template/utils/theme_provider.dart';
import 'package:flutter_web_template/pages/home_page.dart';

class App extends StatelessWidget {
  static Map? styles;

  App(_styles, {super.key}) {
    styles = _styles;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,

            title: 'Flutter Web Template',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
              useMaterial3: true,
              brightness: Brightness.light,
              textTheme: TextThemeBuilder.buildTextTheme(context, double.parse((styles?["fontSize"] as String).replaceAll("px", ""))),
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.pinkAccent, // cool gray
                brightness: Brightness.dark,
              ),
              fontFamily: styles!["fontFamily"],
              useMaterial3: true,
              textTheme: TextThemeBuilder.buildTextTheme(context, double.parse((styles?["fontSize"] as String).replaceAll("px", ""))),
            ),
            themeMode: themeProvider.themeMode,
            routerConfig: _router,
          );
        },
      ),
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
