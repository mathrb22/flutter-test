import 'package:flutter/material.dart';

import 'modules/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(primaryColor: Colors.purple),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}