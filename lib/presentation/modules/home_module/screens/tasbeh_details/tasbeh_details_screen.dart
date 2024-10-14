import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
class TasbehDetailsScreen extends StatelessWidget {
  const TasbehDetailsScreen({super.key});

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
          title:Text('tasbeh') ,

        ),
        body: Card(
          child:
          Column(
            children: [


            ],
          ),
        ),
      ),
    );
  }
}


