import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        // Adicionado SafeArea aqui
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                            "https://img2.lovecell.com.br/8e19bd91f085fec00e54e7613ce3bccae6765ddc390da7efbb24af99c8a65910.webp"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Seu Nome',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'seu@email.com',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              onTap: () {
                // Ação ao clicar em Início
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                // Ação ao clicar em Configurações
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
