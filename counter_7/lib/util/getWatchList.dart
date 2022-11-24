import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

// List<bool> watched_movie = [];
Future<List<WatchList>> fetchWatchList () async {
    var url = Uri.parse('https://tugas2pbpkatalog.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
        url,
        headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
        },
    );

    var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<WatchList> watch_list = [];

  for (var d in data) {
    if (d != null) {
      watch_list.add(WatchList.fromJson(d));
    //   watched_movie.add(WatchList.fromJson(d).fields.watched);
    }
  }
  return watch_list;

}