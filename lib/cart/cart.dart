// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login_day1/checkout/chekcout.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 237, 237),
          elevation: 0,
          centerTitle: true,
          actions: [Icon(Icons.arrow_back_ios)],
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          title: Text('Cart', style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Color.fromARGB(255, 238, 237, 237),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('swipe on an item to delete', style: TextStyle()),
            ),
            CartCard(context),
            CartCard(context),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Checkout()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFA4A0C),
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Center(
                    child: Text('Complete order',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}

Widget CartCard(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset('assets/images/img1.jpg',
                          height: 100, width: 100, fit: BoxFit.cover)),
                ),
                SizedBox(width: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Veggie Tomate mix',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('#1900',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Color(0xffFA4A0C),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffFA4A0C),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text('-  1  +',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )),
                                )
                              ]),
                        ),
                      )
                    ])
              ]),
            )),
      ),
      SizedBox(height: 20),
    ],
  );
}
