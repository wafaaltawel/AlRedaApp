import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('القائمة', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الرئيسية'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الإعدادات'),
          ),
        ],
      ),
    );
  }
}
