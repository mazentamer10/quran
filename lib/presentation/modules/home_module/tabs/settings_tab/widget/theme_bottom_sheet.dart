import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ThemeBottomsheet extends StatefulWidget {
  const ThemeBottomsheet({super.key});

  @override
  State<ThemeBottomsheet> createState() => ThemeBottomsheetState();
}

class ThemeBottomsheetState extends State<ThemeBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget(AppLocalizations.of(context)!.light),
          SizedBox(
            height: 12,
          ),
          buildUnSelectedItemThemeWidget(AppLocalizations.of(context)!.dark),
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedTheme) {
    return Row(
      children: [
        Text(selectedTheme, style: Theme.of(context).textTheme.displayMedium),
        Spacer(),
        Icon(
          Icons.check,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unselectedTheme) {
    return Text(
        unselectedTheme,
        style: Theme.of(context)
            .textTheme
            .displayMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondary
           )
        );
   }
}