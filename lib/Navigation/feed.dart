import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 118, 47),
        title: Center(child: Text('Diet Reco')),
        automaticallyImplyLeading: false,
      ),
      body: Container(
          child: Center(
        child: Text('HomePAge'),
      )),
    );
  }
}
