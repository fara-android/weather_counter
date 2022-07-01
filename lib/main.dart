import 'package:counter_test_app/app/presentation/screens/home/home_screen.dart';
import 'package:counter_test_app/core/theme/my_themes.dart';
import 'package:counter_test_app/core/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:counter_test_app/service_locator.dart' as di;

void main() async {
  await di.init();
  runApp(
    const CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      theme: CustomTheme.of(context),
      home: const HomeScreen(),
    );
  }
}
