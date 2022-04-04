import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:login_day1/cart/cart.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios, color: Colors.black)),
            actions: [Icon(Icons.arrow_back_ios_new, color: Colors.black)]),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(200)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.asset('assets/images/R (1).png',
                        width: 200, height: 200, fit: BoxFit.cover),
                  ),
                ),
                Text('Veggie tomato mix',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 30)),
                Text('1900',
                    style: TextStyle(
                        color: Color(0xffFA4A0C),
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DeliveryInfo',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                            'Delivery infodcdcdcdcbciwcb d8ucvd bducv dbc uycvudyv cdcvd76dcv  cydscvdsycvdsyc dsvcdckcu ydvcd7cidfcdc6ds',
                            style: TextStyle(color: Colors.grey))
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Return Policy',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                            'Deliveryi nfodcd cdc dcbciw cbd8ucvdbdu cvdbcuyc vudyvcdcvd 76dcvd yds   cdsvcd ckcuy dvcd7ci dfcdc6ds',
                            style: TextStyle(color: Colors.grey))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFA4A0C),
                              borderRadius: BorderRadius.circular(70)),
                          width: MediaQuery.of(context).size.width * .7,
                          height: 50,
                          child: Center(
                              child: Text('Add to Cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)))),
                    ),
                  ),
                )
              ]),
        ));
  }
}
