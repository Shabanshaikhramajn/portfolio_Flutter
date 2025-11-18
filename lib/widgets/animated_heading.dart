import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';

class AnimatedHeading extends StatelessWidget {
  final List<String> lines;
  
   AnimatedHeading({super.key, required this.lines});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        child: AnimatedTextKit(animatedTexts: lines.map((l)=> TypewriterAnimatedText(l, speed: const Duration(milliseconds: 60))).toList(),
          isRepeatingAnimation: false,
        ),
    );
  }
}
