import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/hadeth_tab/hadeth_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs=ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.mainBgLight),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
appBar: AppBar(
  title:Text('Islami') ,
  
),
body: Card(
  child: 
  Column(
    children: [
      Text(hadithArgs.title,style: Theme.of(context).textTheme.titleMedium,
      )

    ],
  ),
),
      ),
    );
  }
}
