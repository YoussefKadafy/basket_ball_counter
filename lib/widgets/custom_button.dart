import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, required this.pointNumber});
  final void Function() onPressed;
  final String pointNumber;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        'Add $pointNumber Point',
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
