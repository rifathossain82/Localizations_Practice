import 'package:flutter/material.dart';
import 'package:localization_practice/providers/LocaleProviders.dart';
import 'package:provider/provider.dart';

import '../l10n/l10n.dart';

class LanguagePickerWidget extends StatelessWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<LocalProvider>(context);
    final _locale=provider.locale?? Locale('en');
    return DropdownButtonHideUnderline(
      child: DropdownButton(
          items: L10n.all.map((locale){
            final flag=L10n.getFlag(locale.languageCode);
            return DropdownMenuItem(
              child: Center(
                child: Text(flag,style: TextStyle(fontSize: 32),),
              ),
              value: locale,
              onTap: (){
                final provider=Provider.of<LocalProvider>(context,listen: false);
                provider.setLocale(locale);
              },
            );
          }).toList(),
          icon: Container(width: 12,),
          value: _locale,
          onChanged: (value) {}),
    );
  }
}
