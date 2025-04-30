import 'package:App/widgets/Pages/profile.dart';
import 'package:App/widgets/contacts_list.dart';
import 'package:App/widgets/home_page.dart';
import 'package:flutter/material.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationExemple();
  }
}

class NavigationExemple extends StatefulWidget {
  const NavigationExemple({super.key});
  @override
  State<NavigationExemple> createState() => _NavigationExempleState();
}

class _NavigationExempleState extends State<NavigationExemple> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Profile(),
    ContactsList(),
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
        indicatorColor: Color(0xFFFF0000).withOpacity(0.1),
        backgroundColor: Colors.white,
        elevation: 2,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Color(0xFFD61355),
            ),
            label: 'Home',
          ),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0xFFD61355),
              ),
              label: 'Perfil'),
          NavigationDestination(
            icon: Badge(
                label: (Text('2')),
                child: Icon(Icons.messenger_sharp, color: Color(0xFFD61355))),
            label: 'Messages',
          )
        ],
      ),
      body: _pages[currentPageIndex],
    );
  }
}
