import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

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
import 'package:counter_7/util/getWatchList.dart';
import 'package:counter_7/main.dart';

class WatchListPage extends StatefulWidget {
    const WatchListPage({Key? key}): super(key:key);

        _WatchListPageState createState() => _WatchListPageState();
    }

    class _WatchListPageState extends State<WatchListPage> {

        //     Future<List<WatchList>> fetchWatchList() async {
        //     var url = Uri.parse('https://tugas2pbpkatalog.herokuapp.com/mywatchlist/json/');
        //     var response = await http.get(
        //         url,
        //         headers: {
        //             "Access-Control-Allow-Origin": "*",
        //             "Content-Type": "application/json",
        //         },
        //     );

        //     var data = jsonDecode(utf8.decode(response.bodyBytes));
        //     List<WatchList> listWatchList = [];
        //     for (var d in data) {
        //         if (d!=null) {
        //             listWatchList.add(WatchList.fromJson(d));
        //         }
        //     }
        //     return listWatchList;
        // }

    Widget build(BuildContext context) {
        return Scaffold (
            appBar: AppBar(
                title: const Text("My Watch List"),
            ),
            drawer: appDrawer(context),

            body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
                } else {
                if (!snapshot.hasData) {
                    return Column(
                    children: const [
                        Text(
                        "Tidak ada watchlist sekarang :(",
                        style: TextStyle(
                            color: Color(0xff59A5D8),
                            fontSize: 20),
                        ),
                        SizedBox(height: 8),
                    ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index)=> ListTile(
                            title: GestureDetector(
                                onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => WatchListDetail (
                                                data: snapshot.data![index])));
                                },
                                        
                                    
                                

                                child: Container(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text (
                                                "${snapshot.data![index].fields.title}",
                                            )
                                        ]
                                    )
                                )
                            )
                        // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        // padding: const EdgeInsets.all(20.0),
                        // decoration: BoxDecoration(
                        //     color:Colors.white,
                        //     borderRadius: BorderRadius.circular(15.0),
                        //     boxShadow: const [
                        //     BoxShadow(
                        //         color: Colors.black,
                        //         blurRadius: 2.0
                        //     )
                        //     ]
                        // ),
                        // child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //     Text(
                        //         "${snapshot.data![index].title}",
                        //         style: const TextStyle(
                        //         fontSize: 18.0,
                        //         fontWeight: FontWeight.bold,
                        //         ),
                        //     ),
                        //     const SizedBox(height: 10),
                        //     Text("${snapshot.data![index].completed}"),
                        //     ],
                        // ),
                        )
                    );
                }
                }
            }
            


            )
        );
    }
    // Future<List<WatchList>> fetchWatchList() async {
    //     var url = Uri.parse('https://tugas2pbpkatalog.herokuapp.com/mywatchlist/json/');
    //     var response = await http.get(
    //         url,
    //         headers: {
    //             "Access-Control-Allow-Origin": "*",
    //             "Content-Type": "application/json",
    //         },
    //     );

    //     var data = jsonDecode(utf8.decode(response.bodyBytes));
    //     List<WatchList> listWatchList = [];
    //     for (var d in data) {
    //         if (d!=null) {
    //             listWatchList.add(WatchList.fromJson(d));
    //         }
    //     }

    //     return listWatchList;


    // }
}