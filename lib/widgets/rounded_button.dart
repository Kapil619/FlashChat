import "package:flutter/material.dart";

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.color,
    required this.title,
    required this.onPressed,
    super.key,
  });

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () => onPressed(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
