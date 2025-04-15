import 'package:App/widgets/HeaderApp.dart';
import 'package:App/widgets/NavigationBarApp.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.light(primary: Color(0x00000000)),
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: statusBarHeight,
        ),
        child: Column(
          children: [HeaderApp(), Expanded(child: NavigationBarApp())],
        ),
      ),
    );
  }
}
