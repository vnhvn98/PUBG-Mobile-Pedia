import 'package:url_launcher/url_launcher.dart';

class Helper {

  ///launch URL Function for going to Whatsapp / Youtube App
  ///see "url_launcher" package inn google for more info
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}