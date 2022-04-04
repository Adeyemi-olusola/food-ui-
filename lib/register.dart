import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_day1/login.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:20),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ClipRRect(
                              borderRadius:BorderRadius.circular(500),
                              child: Image.asset('assets/images/R (1).png',
                              height:70,
                              width:70,
                              fit:BoxFit.cover,
                  
                              ),
                            ),
                    ),
                    Container(
                      height:112,
                      width:275,
                      child: Padding(
                        padding: const EdgeInsets.only(left:30),
                        child: Text('Food for everyone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.red
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              
                            ),
                          ),
                          child: Stack(children: [
                            PositionedDirectional(
                              child: Image.asset(
                                  'assets/images/ToyFaces_Tansparent_BG_49.png'),
                            ),
                            PositionedDirectional(
                              end: 0,
                              child: Image.asset(
                                  'assets/images/ToyFaces_Tansparent_BG_29.png'),
                            ),
                           
                          ])),
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                        height: 70,
                        minWidth: 314,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        color: Colors.white,
                        child:
                            Text('Get startedd', style: TextStyle(color: Colors.red))),
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
