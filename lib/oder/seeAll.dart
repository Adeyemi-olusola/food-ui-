import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SeeAllApi extends StatefulWidget {
  const SeeAllApi({Key? key}) : super(key: key);

  @override
  State<SeeAllApi> createState() => _SeeAllApiState();
}

class _SeeAllApiState extends State<SeeAllApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 237, 237),
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
        backgroundColor: Color.fromARGB(255, 238, 237, 237),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left:3),
                    child: Wrap(spacing: 10, children: [
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                      MenuCard('seeAll', '#1000', 'nvufnv'),
                    ]),
                  ),
                ],
              )),
            ),
          ),
        ));
  }

  Widget MenuCard(String title, String price, String image) {
    return Container(
      width: 157,
      child: Row(
        children: [
          Container(
              color: Color.fromARGB(255, 238, 237, 237),
              width: 157,
              height: 350,
              child: Stack(children: [
                Container(height: 400, width: 157),
                Positioned(
                  top: 40,
                  child: Container(
                    width: 156,
                    height: 252,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.07),
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          child: Column(children: [
                            SizedBox(height: 100),
                            Text(title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                )),
                            SizedBox(height: 5),
                            Text(price,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ))
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  start: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      'assets/images/R (1).png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}
