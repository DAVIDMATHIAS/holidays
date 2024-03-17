import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:holidays/widget/app_large_text.dart';
import 'package:holidays/widget/app_text.dart';
import 'package:holidays/widget/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  final int itemCount;
  final List<String> images;
  const WelcomePage({super.key, required this.itemCount, required this.images});

  @override
  State<WelcomePage> createState() => _WelcomePageState(itemCount, images);
}

class _WelcomePageState extends State<WelcomePage> {
  int itemCount;
  List<String> images;
  _WelcomePageState(this.itemCount, this.images);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (_, idx) {
          int index = idx % itemCount;
          String img = images[index];
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/$img"), fit: BoxFit.cover)),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextAndButton(),
                  Column(
                    children: List.generate(
                        3,
                        (dotIndex) => Container(
                              width: 8,
                              height: index == dotIndex ? 25 : 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                            )),
                  )
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

class TextAndButton extends StatelessWidget {
  const TextAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLargeText(
          text: "Trips",
          color: Colors.white,
        ),
        AppText(
          text: "Mountain",
          color: Color.fromARGB(195, 213, 205, 205),
          size: 30,
        ),
        SizedBox(
          width: 250,
          child: AppText(
            text:
                "Mountain hikes give you an incredible sense of freedom along with endurance test",
            color: Color.fromARGB(255, 189, 178, 178),
            size: 14,
          ),
        ),
        ResponsiveButton(width: 100),
      ],
    );
  }
}
