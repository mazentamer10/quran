import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verse;
   VerseWidget({super.key,required this.verse });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(verse,  textDirection:TextDirection.rtl ,textAlign: TextAlign.center,style:Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
