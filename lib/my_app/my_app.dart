import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/modules/home_module/screens/hadith_detalis/hadith_details_screen.dart';
import 'package:quran_app/presentation/modules/home_module/screens/home_screen.dart';
import 'package:quran_app/presentation/modules/home_module/screens/quran_detalis_screen/quran_details_screen.dart';
import 'package:quran_app/presentation/modules/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
theme: MyTheme.lightTheme,

routes: {
  RoutesManager.homeRoute:(_)=>HomeScreen(),
  RoutesManager.splashRoute:(_)=>SplashScreen(),
  RoutesManager.quranDetailsRoute:(_)=>QuranDetailsScreen(),
  RoutesManager.hadithDetailsRout:(_)=>HadithDetailsScreen(),
},
      initialRoute: RoutesManager.splashRoute,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale('ar'),
        Locale('en'),
      ],
locale: Locale('ar'),
    );
  }
}