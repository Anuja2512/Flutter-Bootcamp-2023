import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
BoxShadow(color: Colors.grey,spreadRadius: 5,blurRadius: 5,offset: Offset(5, 5))
              ]
            ),
               child: Image.asset('assets/thank_you.png')),
        )),
      ),
    );
  }
}
