//import 'dart:js';

import 'package:com/ad_state.dart';
import 'package:flutter/material.dart';
import 'package:com/Jogo.dart';
import 'dart:math';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';


void main(){

  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);

  runApp(
    Provider.value(
        value: AdState,
        builder: (context, child) => Jogo(),
    )

  );


}