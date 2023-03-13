import 'package:flutter/material.dart';
import 'package:granapages/page_about.dart';
import 'package:granapages/page_loja.dart';
import 'package:granapages/page_start.dart';

import 'nivel_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor:  Color(0xffabf8e1)),
    home: NivelPage(),
  ));
}
