import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puchitok/presentation/providers/discover_provider.dart';
import 'package:puchitok/presentation/screens/discover/discover_screen.dart';
import 'package:puchitok/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'PuchiTok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
