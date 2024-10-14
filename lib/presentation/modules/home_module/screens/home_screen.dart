import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';
import 'package:quran_app/core/strings_manager.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app/presentation/modules/home_module/tabs/tsbeh_tab/tsbeh_tab.dart';
class HomeScreen extends StatefulWidget {

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<Widget> tabs =[
  QuranTab(),

  HadethTab(),
  TsbehTab(),
  RadioTab(),
  SettingsTab(),
];

int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.mainBgLight),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Quran'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index;
          setState(() {

          });
          },
type: BottomNavigationBarType.shifting,
            items:  [
              BottomNavigationBarItem(backgroundColor:ColorsManger.goldColor,icon:ImageIcon(AssetImage(AssetsManager.quranIcon)),label: StringsManager.quranLabel),
              BottomNavigationBarItem(backgroundColor:ColorsManger.goldColor,icon: ImageIcon(AssetImage(AssetsManager.hadethIcon)),label: StringsManager.hadithLabel),
              BottomNavigationBarItem(backgroundColor:ColorsManger.goldColor,icon: ImageIcon(AssetImage(AssetsManager.tsebhIcon)),label: StringsManager.tasbehLabel),
              BottomNavigationBarItem(backgroundColor:ColorsManger.goldColor,icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),label: StringsManager.radioLabel),
             BottomNavigationBarItem(backgroundColor:ColorsManger.goldColor,icon: Icon(Icons.settings),label: StringsManager.settingsLabel),

            ]),
body: tabs[selectedIndex]
      ),
    );
  }
}
