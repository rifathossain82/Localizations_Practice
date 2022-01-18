import 'package:flutter/material.dart';
import 'package:localization_practice/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_practice/widget/languagePickerWidget.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale=Localizations.localeOf(context);
    final flag=L10n.getFlag(locale.languageCode);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appTitle,
          ),
        actions: [
          LanguagePickerWidget(),
          SizedBox(width: 12,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100,
              backgroundImage: NetworkImage('https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/4435545454e6145006c955e938f67733-1627580748022/07f96381-6791-46c4-a8ae-c302f71e59d5.JPG',),),
            SizedBox(height: 30,),
            Text(
              AppLocalizations.of(context)!.myName,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Text(
              AppLocalizations.of(context)!.myJob,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
