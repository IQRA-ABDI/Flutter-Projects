import 'package:flutter/material.dart';

class constants extends StatelessWidget {
  const constants({
    super.key,
    required this.text,
    required this.press,
    this.color = Colors.transparent,
    this.textcolor = Colors.white10,
  });
  final String text;
  final Color color;
  final Color textcolor;
  final VoidCallback press;
  

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          child: Text(text,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: textcolor, 
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal)),
        ));
  }
}
