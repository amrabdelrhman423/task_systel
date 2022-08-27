import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:intl/intl.dart';

import 'app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DateTime dateTime=DateTime.now();
  var inputFormat = DateFormat('dd/MM');
  print(inputFormat.format(dateTime));
  // print(inputDate);
    runApp(MyApp());
}