import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web_template/utils/theme_provider.dart';
import 'package:flutter_web_template/pages/home_page.dart';

class App extends StatelessWidget {
  App({super.key});

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
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.pinkAccent, // cool gray
                brightness: Brightness.dark,
              ),
              useMaterial3: true,
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
