import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/hadeth_tab/widget/hadith_header_widget.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/hadeth_tab/widget/hadith_title_wdget.dart';

class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => HadethTabState();
}

class HadethTabState extends State<HadethTab> {
List<Hadith>hadithList =[];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readHadithFile();
    return Container(
     child: Column(
       children: [
         Expanded(flex:1,
     child: Image.asset(AssetsManager.hadethHeaderImage)),
       HadithHeaderWidget(),
         Expanded(flex: 3,
           child: ListView.separated(
             separatorBuilder:(context, index) => Divider(
               color: Theme.of(context).dividerColor,
               height: 3,

             ) ,
             itemBuilder:(context,index)=> hadithList.isEmpty? Center(child: CircularProgressIndicator()) :HadithTitleWdget(hadith: hadithList[index]),
             itemCount: hadithList.length),
         )

       ],
     ),
    );
  }

  String add (String n1,String n2){
    return n1+n2;
  }

  void readHadithFile() async{
   var fileContent= await rootBundle.loadString('assets/files/ahadeth.txt');
   List<String> hadithItemList =fileContent.trim().split('#');

for(int i=0;i<hadithItemList.length;i++){
  String hadithItem = hadithItemList[i];
  List<String>hadithLines = hadithItem.trim().split('\n');
  String title = hadithLines[0];
  hadithLines.removeAt(0);
  String contant = hadithLines.join('\n');
  Hadith hadith =Hadith(title: title, cotant: contant);
  hadithList.add(hadith);
}
setState(() {

});



  }
}
class Hadith{
  String title;
  String cotant;
  Hadith({required this.title,required this.cotant});
}