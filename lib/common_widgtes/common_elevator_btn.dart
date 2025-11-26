import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonElevationBtn extends StatelessWidget {
  final void Function()? onPressed;
  String btnText;
  CommonElevationBtn({
    super.key,
    required this.onPressed,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ElevatedButton(
        style: ButtonStyle(elevation: WidgetStatePropertyAll(2)),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(btnText, style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}
