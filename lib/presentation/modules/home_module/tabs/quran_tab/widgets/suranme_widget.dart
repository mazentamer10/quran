import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/quran_tab/quran_tab.dart'; // Ensure SuraItem is imported here

class SuranmeWidget extends StatelessWidget {
  final SuraItem suraItem; // Ensure SuraItem is defined elsewhere

  SuranmeWidget({super.key, required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.quranDetailsRoute, arguments: suraItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(textDirection: TextDirection.rtl,
          children: [
            Expanded(child: Text(suraItem.suraName, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium,),),
            Container(width: 3, color: ColorsManger.goldColor),
            Expanded(child: Text(suraItem.versesNumber, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium,),),
          ],
        ),
      ),
    );
  }
}
