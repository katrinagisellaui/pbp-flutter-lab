import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/show_item.dart';
import 'package:counter_7/page/watchlist_page.dart';
import 'package:counter_7/model/item.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/show_item.dart';
import 'package:counter_7/page/watchlist_page.dart';
import 'package:counter_7/page/watchlist_detail.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/util/getWatchList.dart';






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
                ListTile(
                title: const Text('WatchList'),
                onTap: () {
                    // Route menu ke halaman to do
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const WatchListPage()),
                    );
                },
                ),

            
            ],
            ),
    );
}