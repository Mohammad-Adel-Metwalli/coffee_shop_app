import 'package:translator_plus/translator_plus.dart';

Future<String> translateToArabic(String arabicUsername) async
{
  String nameInArabic = '';
  final translator = GoogleTranslator();
  int startIndex = 0, stopIndex = 0;

  for(int i = 0; i < arabicUsername.length; i++)
  {
    if(arabicUsername[i] == ' ')
    {
      stopIndex = i;
      var translation = await translator.translate(arabicUsername.substring(startIndex, stopIndex), from: 'en', to: 'ar');
      nameInArabic += translation.text;
      nameInArabic += ' ';
      startIndex = i + 1;
    }
  }

  return nameInArabic;
}