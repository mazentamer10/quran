import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manager.dart';

class MyTheme{
  static ThemeData lightTheme =  ThemeData(
  appBarTheme:const AppBarTheme(
    color: Colors.transparent,
  centerTitle: true,
  titleTextStyle: TextStyle(fontSize: 30,fontWeight:FontWeight.w700,color: Colors.black, ),
  iconTheme: IconThemeData(
  color: Colors.black
  )
  ),
  scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: ColorsManger.goldColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      elevation:20,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 40
      ),
      unselectedIconTheme: IconThemeData(
        size: 26
      )
    ),
    dividerColor: ColorsManger.goldColor,
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      color: Colors.white,
      elevation: 18,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),) ,
    indicatorColor: Colors.white,
    textTheme:  const TextTheme(
      headlineMedium: TextStyle(fontSize: 21,fontWeight:FontWeight.w500,color: Colors.black),
      titleMedium: TextStyle(fontSize: 19,color: Color(0xFF242424),fontWeight:FontWeight.w400),
     bodyMedium:  TextStyle(fontSize:20,fontWeight: FontWeight.w400,color: Colors.black ),

    ),

  );
}