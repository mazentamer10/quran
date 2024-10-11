
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/modules/home_module/screens/quran_detalis_screen/widget/verse_widget.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/quran_tab/quran_tab.dart';
class QuranDetailsScreen extends StatefulWidget {
   QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses =[];

  @override
  Widget build(BuildContext context) {
   SuraItem  suraItem =ModalRoute.of(context)?.settings.arguments as SuraItem;

   readQuranFile(suraItem.index+1);
    return Stack(
      children: [
        Image.asset(AssetsManager.mainBgLight,width:double.infinity,height: double.infinity,fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(title: Text(suraItem.suraName),),
body: verses.isEmpty? Center(child: CircularProgressIndicator(),):
          ListView.builder(itemBuilder: (context,index)=>VerseWidget(verse: verses[index],),itemCount: verses.length,),
        ),
      ],
    );
  }

  int add(int n1,int n2){
    return n1+n2;
  }

  void readQuranFile(int index) async{
  String fileContent = await rootBundle.loadString('assets/files/$index.txt');
 verses = fileContent.trim().split('\n');
 verses.forEach((element){
   print(element);
 },);
  setState((){

  });
  }
}
