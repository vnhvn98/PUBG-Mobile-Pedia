import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pubgmobilepedia/screen/bottomnavbar.dart';
import 'package:pubgmobilepedia/screen/home_screen.dart';
import 'package:pubgmobilepedia/screen/info_screen.dart';
import 'package:pubgmobilepedia/screen/maps_screen.dart';
import 'package:pubgmobilepedia/screen/patches_screen.dart';
import 'package:pubgmobilepedia/screen/players_screen.dart';
import 'package:pubgmobilepedia/screen/splash_screen.dart';
import 'package:pubgmobilepedia/screen/teams_screen.dart';
import 'package:pubgmobilepedia/screen/tournaments_screen.dart';
import 'package:pubgmobilepedia/screen/transfers_screen.dart';
import 'package:pubgmobilepedia/theme/colors/light_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColors.kLightYellow, // navigation bar color
    statusBarColor: Color(0xffffb969), // status bar color
  ));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: LightColors.kDarkBlue,
            displayColor: LightColors.kDarkBlue,
            fontFamily: 'Poppins'
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,

      routes: {
        BottomNavBarScreen.routeName:(context) => BottomNavBarScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        InfoScreen.routeName:(context)=> InfoScreen(),
        PlayersScreen.routeName:(context)=> PlayersScreen(),
        TeamsScreen.routeName:(context)=> TeamsScreen(),
        TransfersScreen.routeName:(context)=> TransfersScreen(),
        TournamentsScreen.routeName:(context)=> TournamentsScreen(),
        MapsScreen.routeName:(context)=> MapsScreen(),
        PatchesScreen.routeName:(context)=> PatchesScreen(),
      },
    );
  }
}