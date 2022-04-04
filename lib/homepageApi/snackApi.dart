import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:login_day1/detail_food.dart';

class SnackApi extends StatefulWidget {
  const SnackApi({Key? key}) : super(key: key);

  @override
  State<SnackApi> createState() => _SnackApiState();
}

class _SnackApiState extends State<SnackApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 237, 237),
        body: ListView(scrollDirection: Axis.horizontal, children: [
          MenuCard('Veggie tomato mix', '#1900', 'ccece'),
          MenuCard('Veggie tomato mix', '#1900', 'ccece')
        ]));
  }

  Widget MenuCard(String title, String price, String image) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Detail()));
          },
          child: Container(
              color: Color.fromARGB(255, 238, 237, 237),
              width: 200,
              height: 400,
              child: Row(
                children: [
                  Stack(children: [
                    Container(
                      width: 200,
                      height: 400,
                    ),
                    Positioned(
                      top: 40,
                      child: Container(
                        width: 190,
                        height: 300,
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
                                      color: Color(0xffFA4A0C),
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
                      start: 50,
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
                  ]),
                ],
              )),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
