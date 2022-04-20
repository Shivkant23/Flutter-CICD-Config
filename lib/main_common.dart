import 'package:ci_cd_conf/config_reader.dart';
import 'package:ci_cd_conf/envirnment.dart';
import 'package:ci_cd_conf/myapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async{
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch(env){
    case Enviornment.dev:
      primaryColor = Colors.blue;
      break;
    case Enviornment.prod:
      primaryColor = Colors.orange;
      break;
  }

  runApp(Provider.value(
    value: primaryColor,
    child: MyApp(),
  ));
}