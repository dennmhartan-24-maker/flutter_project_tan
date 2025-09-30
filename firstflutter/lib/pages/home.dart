import 'package:firstflutter/pages/dashboard.dart';
import 'package:firstflutter/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Home Page"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [PrimaryButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Dashboard()));
                },
          )],
        ),
      ),
    );
  }
}