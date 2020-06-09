import 'package:flutter/material.dart';
import 'package:pubgmobilepedia/theme/colors/light_colors.dart';

class InfoScreen extends StatefulWidget {
  static const routeName = '/InfoScreen';
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "INFO : https://liquipedia.net/", style: TextStyle(fontSize: 22.0,
              color: LightColors.kDarkBlue,
              fontWeight: FontWeight.w800,
          ),
        )
      ),
      ),
    );
  }
}
