import 'package:flutter/material.dart';
import 'package:login_day1/cart/cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  void Show() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 202, 200, 200),
              ),
              height: 300,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Text('Please Note',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 261,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('DELIVERY TO MAINLAND'),
                                    Text('N1000-N2000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Divider(height: 3, color: Colors.grey),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('DELIVERY TO MAINLAND'),
                                    Text('N1000-N2000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Cancel',
                                          style: TextStyle(color: Colors.grey)),
                                      InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          ////     context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) =>
                                          //      Cart()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 90,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFA4A0C),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Text('proceed',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              )),
                                        ),
                                      )
                                    ])
                              ]),
                        ))
                  ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          title: Text('Checkout',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color.fromARGB(255, 230, 229, 229),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Payment',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: Text('Payment method',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [
                      Payment(
                          Colors.orange,
                          Icon(Icons.money, color: Colors.white),
                          'Card',
                          'yes'),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(height: 4, color: Colors.grey),
                      ),
                      Payment(
                          Colors.pink,
                          Icon(Icons.home, color: Colors.white),
                          'Bank Accounnt',
                          'yes'),
                    ]),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text('Delivery method',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [
                      Paymente(
                          Colors.white,
                          Icon(Icons.money, color: Colors.white),
                          'Card',
                          'yes'),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(height: 4, color: Colors.grey),
                      ),
                      Paymente(
                          Colors.white,
                          Icon(Icons.home, color: Colors.white),
                          'Bank Accounnt',
                          'yes'),
                    ]),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      Text('23,000',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    ]),
              ),
              InkWell(
                onTap: () => Show(),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFA4A0C),
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Center(
                      child: Text('Proceed to payment',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }

  Widget Payment(Color color, Icon icon, String text, String gender) {
    return ListTile(
      title: Row(children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon),
        SizedBox(width: 10),
        Text('${text}', style: TextStyle(fontSize: 14))
      ]),
      leading: Radio(
          value: "male",
          groupValue: 'gender',
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          }),
    );
  }

  Widget Paymente(Color color, Icon icon, String text, String gender) {
    return ListTile(
      title: Row(children: [Text('${text}', style: TextStyle(fontSize: 14))]),
      leading: Radio(
          value: "male",
          groupValue: 'gender',
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          }),
    );
  }
}
