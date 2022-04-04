import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    String gender = 'ddcd';
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
          title: Text('My Profile', style: TextStyle(color: Colors.black, fontWeight:FontWeight.w600)),
          centerTitle: true,
        ),
        backgroundColor:Color.fromARGB(255, 232, 232, 232),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                
                children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('information',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Marvis ighedo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                child: Text(
                                    ' o,dpodpodvrvrvrvpvr',
                                    softWrap: false,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Payment Method',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Payment(
                            Colors.orange,
                            Icon(Icons.money, color: Colors.white),
                            'CARD',
                            'yes'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(color: Colors.grey, height: 2),
                        ),
                        Payment(
                            Color.fromARGB(255, 196, 9, 99),
                            Icon(Icons.home, color: Colors.white),
                            'Bank Account',
                            'yes'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(color: Colors.grey, height: 2),
                        ),
                        Payment(
                            Color.fromARGB(255, 47, 33, 243),
                            Icon(Icons.money, color: Colors.white),
                            'Paypal',
                            'yes'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:60),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .7,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(70)),
                          child: Center(
                              child: Text('update',
                                  style: TextStyle(color: Colors.white)))),
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
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: icon),
        SizedBox(width: 10),
        Text('${text}', style:TextStyle(fontSize:16))
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
}
