import 'package:flutter/material.dart';
import 'main.dart';
import 'form.dart';
import 'show_item.dart';

Drawer appDrawer(BuildContext context) {
    return Drawer(
            child: Column(
            children: [
                ListTile(
                title: const Text('counter_7'),
                onTap: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                },
                ),
                ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                },
                ),
                
                ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ShowItemPage()),
                    );
                },
                ),
            ],
            ),
    );
}