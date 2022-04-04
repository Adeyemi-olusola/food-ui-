// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}



class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 237, 237),
          elevation: 0,
          centerTitle: true,
          actions: [Icon(Icons.arrow_back_ios)],
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text('History', style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Color.fromARGB(255, 238, 237, 237),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(children: [
                    Icon(Icons.shop, size: 80, color: Colors.grey),
                    Text('No History yet',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    Text('Hit the orange button down below to Create an Order',
                        style: TextStyle(color: Colors.grey))
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: FlatButton(
                    color: Color(0xffFA4A0C),
                    onPressed: () {},
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width * .8,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Text('Start ordering')),
              ),
            ]));
  }
}
