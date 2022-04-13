import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  // ignore: use_key_in_widget_constructors
  const BackGround({
    required this.child,
  });


  @override
  Widget build(BuildContext context) {
  final  size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              //'assets/images/login.png',
              color: Colors.blue,
              width: size.width,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              //'assets/images/header.jpg',
              color: Colors.blueAccent,
              width: size.width,
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Container(
              //'assets/images/halaman Polinema.jpg',
              width: 140,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              //'assets/images/logopolinema.png',
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              //'assets/images/bottom.png',
              width: size.width,
            ),
          ), 
          child
        ],
      ),
    );
  }
}
