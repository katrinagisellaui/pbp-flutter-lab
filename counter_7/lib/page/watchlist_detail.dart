import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import "package:counter_7/model/watchlist.dart";
import "package:counter_7/page/drawer.dart";
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
import 'package:counter_7/util/getWatchList.dart';


class WatchListDetail extends StatelessWidget{
    final WatchList data;
    const WatchListDetail({super.key, required this.data});

    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Detail'),
            ),
            drawer: appDrawer(context),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(data.fields.title),
                        ),

                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.00, left: 10.00),
                            child: Row(
                                children: [
                                    const Text("Release Date : "),
                                    Text(data.fields.releaseDate.toString()),
                                ],
                            ),
                        ),

                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.00, left: 10.00),
                            child: Row(
                            children: [
                                const Text("Rating : "),
                                Text(data.fields.rating.toString()),
                            ],
                        ),
                        ),

                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.00, left:10.00),
                            child:Row(
                            children: [
                                const Text("Status : "),
                                Text(data.fields.watched ? 'Watched' : 'Unwatched')
                            ],
                        ),
                        ),

                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.00, left:10.00),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                         Text("Review : "),
                                            Text(data.fields.review),
                                    ],
                                ),
                        ),
                        ),
                

                         const SizedBox(
                            height: 250,
                        ),
                        
                        Row (
                            children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {
                                        Navigator.pop(context);
                                        },
                                    child: const Text('Kembali'),
                                ),
                                ),
                            ],
                        ),
                            
                        
                    
                    ]
                ),

                    
                ),
            
                 
        );
    }

}