import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manager.dart';

class TsbehTab extends StatefulWidget {
  const TsbehTab({super.key});

  @override
  State<TsbehTab> createState() => TsbehTabState();
}

class TsbehTabState extends State<TsbehTab> {
  int counter=0;
  double turns=0;
  int index=0;
  List<String> tasabehList = [    'سبحان اللهِ',    'الحمدلله',    'الله اكبر',    'لا اله الا الله',  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Image.asset(AssetsManager.tasbehhead),
            AnimatedRotation(
                turns: turns,
                duration: Duration(microseconds: 500),
                child: Image.asset(AssetsManager.tasbehbody)),
            SizedBox(height: 10),
            Text('عدد التسبيحات', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              decoration: BoxDecoration(
                color: ColorsManger.goldColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text('$counter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10), // Added spacing for better layout
            ElevatedButton(
              onPressed: () {setState(() {
                counter++;
                turns += 1 / 33;
                if(counter>33){
                  counter=0;
                  index =(index+1)% tasabehList.length;
                  turns=0;
                }
              });},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManger.goldColor, // Set the background color directly
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // Set the button shape to rounded
              ),
              child: Text(tasabehList[index], style:Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
