import 'package:flutter/material.dart';
import 'package:week3/row_page.dart';

import 'column_page.dart';
import 'home.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({this.title,this.subtitle,this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: 'MENU-1', subtitle: 'SUB-1', icon: Icons.person),
  const ListMenu(title: 'MENU-2', subtitle: 'SUB-2', icon: Icons.person_add),
  const ListMenu(title: 'MENU-3', subtitle: 'SUB-3', icon: Icons.wifi),
  const ListMenu(title: 'MENU-4', subtitle: 'SUB-4', icon: Icons.build),
];

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text("List view menu"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Mark Zuckerberg"),
              accountEmail: Text("Markzuckerberg@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.widgets),
              title: const Text("Row widget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.widgets),
              title: const Text("Column widget"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu),
              title: const Text("Menu"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Container(
        child: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            title: Text("${menus[index].title}"),
            subtitle: Text("${menus[index].subtitle}"),
            leading: CircleAvatar(child: Icon(menus[index].icon)),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              debugPrint("${menus[index].title}");
            },
          );
        }, separatorBuilder: (context, index) {
          return const Divider(color: Colors.purpleAccent,);
        }, itemCount: 4),
      ),
    );
  }
}