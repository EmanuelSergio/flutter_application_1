import 'package:App/widgets/home_page.dart';
import 'package:App/widgets/messages_page.dart';
import 'package:App/widgets/notifications_page.dart';
import 'package:flutter/material.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExemple(),
    );
  }
}

class NavigationExemple extends StatefulWidget {
  const NavigationExemple({super.key});
  @override
  State<NavigationExemple> createState() => _NavigationExempleState();
}

class _NavigationExempleState extends State<NavigationExemple> {
  int currentPageIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    NotificationsPage(),
    MessagesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications_sharp)),
              label: 'Notifications'),
          NavigationDestination(
            icon: Badge(label: (Text('2')), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          )
        ],
      ),
      body: _pages[currentPageIndex],
      );
    
  }
}
