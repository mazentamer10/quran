
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageBottomsheet extends StatefulWidget {
  const LanguageBottomsheet({super.key});

  @override
  State<LanguageBottomsheet> createState() => LanguageBottomsheetState();
}

class LanguageBottomsheetState extends State<LanguageBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget('English'),
          SizedBox(
            height: 12,
          ),
          buildUnSelectedItemThemeWidget('العربية'),
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedLanguage) {
    return Row(
      children: [
        Text(selectedLanguage, style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(Icons.check,)
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unSelectedLanguage) {
    return Text(
        unSelectedLanguage,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.secondary
        )
        );
    }
}