import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:pubgmobilepedia/theme/colors/light_colors.dart';


class TransfersScreen extends StatefulWidget {
  static const routeName = '/TransfersScreen';
  @override
  _TransfersScreenState createState() => _TransfersScreenState();
}

class _TransfersScreenState extends State<TransfersScreen> {
  bool isOnline = false;
  bool isDoneChecking = false;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        setState(() {
          isOnline = true;
          isDoneChecking = true;
        });
        break;
      case ConnectivityResult.mobile:
        setState(() {
          isOnline = true;
          isDoneChecking = true;
        });
        break;
      case ConnectivityResult.none:
        setState(() {
          isDoneChecking = true;
        });
        break;
      default:
        setState(() {
          isDoneChecking = true;
        });
        break;
    }
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(isOnline) {
      return Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: LightColors.kLightYellow,
          elevation: 0.0,
        ),
        backgroundColor: Color.fromRGBO(35, 54, 110, 1),
        body: new SafeArea(
          child:
          ///a Webview from Community fix the dropdown click problem
          ///see "flutter_webview_plugin" package for more info
          WebviewScaffold(
            url: "https://liquipedia.net/pubg/Portal:Transfers",
            hidden: true,
            ignoreSSLErrors: true, ///Ignoring SSL Error see "flutter_webview_plugin" package for more info
          ),

        ),
      );
    }else if(isDoneChecking){
      return Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: LightColors.kLightYellow,
          elevation: 0.0,
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: new SafeArea(
          child: Align(
            alignment: Alignment.center,
            child:Container(
              child:Text('Cek Koneksi Internet Anda',
                overflow: TextOverflow.ellipsis,
                style: TextStyle (
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      );
    }else{
      return CircularProgressIndicator();
    }
  }
}
