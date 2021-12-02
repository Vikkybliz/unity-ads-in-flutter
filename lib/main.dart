import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UnityAds.init(gameId: '4485261');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Unity Ads in Flutter'),
              centerTitle: true,
            ),
            body: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      UnityAds.showVideoAd(placementId: 'Interstitial_Android');
                    },
                    child: Text('Show interstitial ad')),
                ElevatedButton(
                    onPressed: () {
                      UnityAds.showVideoAd(placementId: 'Rewarded_Android');
                    },
                    child: Text('Show Rewarded Ads')),
                    UnityBannerAd(placementId: 'Banner_Android')
              ],
            )));
  }
}
