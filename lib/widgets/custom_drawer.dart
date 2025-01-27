import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ///// Drawer Header
          const UserAccountsDrawerHeader(
            accountName: Text('Abdul Samad'),
            accountEmail: Text('abdulsamadsoftcodix@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/aslogo.png'),
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 29, 29, 29)),
          ),
          ///// Drawer Items
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {}),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => Get.snackbar('Logout', 'You have logged out!'),
          ),
        ],
      ),
    );
  }
}
