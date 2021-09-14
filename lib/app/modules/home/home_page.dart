import 'package:fluter_test/app/widgets/margin_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(color: Colors.white),
      appBar: AppBar(title: Text('Flutter Test')),
      body: Margin(
        child: Text('Hello World'),
        top: 50,
      ),
    );
  }
}
