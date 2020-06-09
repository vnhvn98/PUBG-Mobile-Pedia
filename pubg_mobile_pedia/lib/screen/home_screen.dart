import 'package:flutter/material.dart';
import 'package:pubgmobilepedia/screen/maps_screen.dart';
import 'package:pubgmobilepedia/screen/patches_screen.dart';
import 'package:pubgmobilepedia/screen/players_screen.dart';
import 'package:pubgmobilepedia/screen/teams_screen.dart';
import 'package:pubgmobilepedia/screen/tournaments_screen.dart';
import 'package:pubgmobilepedia/screen/transfers_screen.dart';
import 'package:pubgmobilepedia/theme/colors/light_colors.dart';
import 'package:pubgmobilepedia/widgets/top_container.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final maxHeight = mediaQuery.size.height - mediaQuery.padding.top * 0.5;
    final maxWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "PUBG Mobile Pedia",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: LightColors.kDarkBlue,
                              fontWeight: FontWeight.w800,),
                        ),
                      ],
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "by : LiquidPedia",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: LightColors.kDarkBlue,
                          fontWeight: FontWeight.w800,),
                      ),
                    ],
                  ),
          ],
        ),
            ),

            SizedBox(height : maxHeight * 0.02),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Players',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlayersScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height : maxHeight * 0.015),

                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Teams',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TeamsScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height : maxHeight * 0.015),

                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Transfers',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TransfersScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height : maxHeight * 0.015),

                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Tournaments',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TournamentsScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height : maxHeight * 0.015),

                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Maps',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapsScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height : maxHeight * 0.015),

                    Container(
                      height: maxHeight * 0.11,
                      width: maxWidth * 0.94,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffffb969),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Patches',
                              style: TextStyle(fontSize: 10.0,
                                color: LightColors.kDarkBlue,
                                fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PatchesScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
