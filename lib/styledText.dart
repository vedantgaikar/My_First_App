import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Text(
      'Hello World',
      style: TextStyle(color: Colors.white, fontSize: 30,),
    );
  }
}