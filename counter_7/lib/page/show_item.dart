import 'package:flutter/material.dart';
import 'package:counter_7/model/item.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/util/getWatchList.dart';

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

class ShowItemPage extends StatefulWidget{
    const ShowItemPage({super.key});

    State<ShowItemPage> createState() => _ShowItemPageState();
}

class _ShowItemPageState extends State<ShowItemPage> {
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Data Budget'),
        ),
        drawer: appDrawer(context),

        body: ListView.builder(
            itemBuilder: (context, index) {
                return Card(
                    child: Container(
                        padding: const EdgeInsets.all(9.0),
                        child: 

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                    Item.items[index].judul,
                                    style: const TextStyle(fontSize: 30),
                                ),
                                ),
                        
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text(
                                    Item.items[index].nominal.toString(),
                                    style: const TextStyle(fontSize: 15),
                                ),
                                Text(
                                    Item.items[index].jenis,
                                    style: const TextStyle(fontSize: 15),
                                    ),
                                Text(
                                    Item.items[index].date.toString(),
                                    style: const TextStyle(fontSize: 15),
                                    ),
                                ],
                            ),
                        ],

                    ),
                    
                ),
            );
        },

        itemCount: Item.items.length,
        
        ),
        );
    }

}