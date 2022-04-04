import 'package:flutter/material.dart';

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 237, 237),
          elevation: 0,
          centerTitle: true,
          
          leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          title: Text('Orders', style: TextStyle(color: Colors.black)),
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
                    
                    SvgPicture.asset('assets/svg/cart_icon.svg' ,height:80, width:80 , color:Colors.grey),
                    Text('No Orders yet',
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
