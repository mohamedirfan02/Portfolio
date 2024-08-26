import 'package:flutter/material.dart';
import 'package:mohamedirfan/providers/currect_state.dart';
import 'package:mohamedirfan/providers/theme_provider.dart';
import 'package:mohamedirfan/screen/homescreen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CurrentState()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}