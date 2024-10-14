import 'package:flutter/material.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/hadeth_tab/hadeth_tab.dart';

class HadithTitleWdget extends StatelessWidget {
  Hadith hadith;
   HadithTitleWdget({super.key,required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, RoutesManager.hadithDetailsRout,
        arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding:EdgeInsets.symmetric(vertical: 4,horizontal:12 ) ,
        child: Text(hadith.title,style: Theme.of(context).textTheme.titleMedium,),
      ),
    );
  }
}
