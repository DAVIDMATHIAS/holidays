import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({super.key, this.isResponsive = false, this.width});
  final bool isResponsive;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive ? Text("Book this trip") : SizedBox(),
            ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color?>(
                    Color.fromARGB(198, 9, 214, 187)),
              ),
              child: const Text(
                ">>>>",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
