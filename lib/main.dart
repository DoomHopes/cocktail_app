import 'package:cocktail_app/pages/home_page.dart';
import 'package:cocktail_app/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyProvider>(
          create: (_) => MyProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'CoctailApp',
        theme: ThemeData.dark(),
        initialRoute: '/first',
        debugShowCheckedModeBanner: true,
        routes: {
          '/first': (context) => HomePage(),
        },
      ),
    );
  }
}
