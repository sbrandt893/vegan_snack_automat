import 'package:flutter/material.dart';

import 'gui_page/snackautomat_page.dart';

void main() {
  runApp(MyApp());
}

/// Start page
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Snackautomat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AutomatScreen(),
      );
}
