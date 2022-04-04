import 'package:flutter/material.dart';
import 'package:login_day1/mainPage.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

late TabController tab;

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    tab = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 226, 226),
        body: Container(
            color: Color.fromARGB(255, 226, 226, 226),
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: Image.asset(
                          'assets/images/R (1).png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TabBar(
                            unselectedLabelColor: Colors.black,
                            indicatorColor: Color(0XFFFA4A0C),
                            labelColor: Colors.black,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            controller: tab,
                            tabs: [
                              Tab(text: 'Login'),
                              Tab(text: 'Register'),
                            ]),
                      ),
                    ],
                  )),
              Container(
                height: MediaQuery.of(context).size.height * .5,
                child: TabBarView(
                  controller: tab,
                  children: [
                    logins(context),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}

Widget logins(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: TextStyle(color: Color(0xffFA4A0C)),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter your username',
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: TextStyle(color: Color(0xffFA4A0C)),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter your Password',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Forget Password',
              style: TextStyle(
                  color: Color(0xffFA4A0C), fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NoteList()));
            },
            child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xffFA4A0C),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child:
                        Text('login', style: TextStyle(color: Colors.white)))),
          ),
        )
      ]),
    ),
  );
}
