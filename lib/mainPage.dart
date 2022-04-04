import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_day1/cart/cart.dart';
import 'package:login_day1/homepageApi/snackApi.dart';
import 'package:login_day1/oder/order.dart';
import 'package:login_day1/oder/seeAll.dart';
import 'package:login_day1/profile/profile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList>
    with SingleTickerProviderStateMixin {
  late TextEditingController search;
  late TabController tab;

  @override
  void initState() {
    search = TextEditingController();
    tab = TabController(length: 4, vsync: this);
  }

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Sidebar(),
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              SvgPicture.asset('assets/svg/cart_icon.svg'),
              SizedBox(width: 10)
            ],
            leading: Row(children: [
              SizedBox(width: 30),
              InkWell(
                  onTap: () => _scaffoldKey.currentState?.openDrawer(),
                  child: SvgPicture.asset('assets/svg/format_align.svg'))
            ])),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20),
              Text('Delicious',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  )),
              Text('Food for you ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30, right: 30),
                child: TextFormField(
                  // controller: loanAmount,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF2B343A),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFfEFEEEE),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF2B343A),
                  ),
                ),
              ),
              //  AnimSearchBar(
              //  width: 400, textController: search, onSuffixTap: () {}),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: TabBar(
                    controller: tab,
                    indicatorColor: Color(0xffFA4A0C),
                    unselectedLabelColor: Color.fromARGB(255, 90, 88, 88),
                    labelColor: Color(0xffFA4A0C),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    isScrollable: true,
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Tab(text: 'Foods'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Tab(text: 'Drinks'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Tab(text: 'Snacks'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Tab(text: 'Suace'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllApi()));
                        },
                        child: const Text('Sell All',
                            style: TextStyle(
                                color: Color(0xffFA4A0C),
                                fontWeight: FontWeight.w600,
                                fontSize: 13))),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: TabBarView(controller: tab, children: [
                  SnackApi(),
                  SnackApi(),
                  SnackApi(),
                  SnackApi(),
                ]),
              )
            ]),
          ),
        ));
  }

  Widget Sidebar() {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            color: Color(0xffFA4A0C),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                },
                                child: Row(children: [
                                  SvgPicture.asset('assets/svg/cart.svg',
                                      color: Colors.white),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 3, color: Colors.white),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Orders()));
                                },
                                child: Row(children: [
                                  SvgPicture.asset('assets/svg/cart_icon.svg',
                                      color: Colors.white),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Orders',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  )
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 3, color: Colors.white),
                              ),
                              Row(children: [
                                SvgPicture.asset('assets/svg/tag.svg',
                                    color: Colors.white),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('offers',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      )),
                                )
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 3, color: Colors.white),
                              ),
                              Row(children: [
                                SvgPicture.asset('assets/svg/note.svg',
                                    color: Colors.white),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Policy',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      )),
                                )
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 3, color: Colors.red),
                              ),
                              Row(children: [
                                SvgPicture.asset('assets/svg/security.svg',
                                    color: Colors.white),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Security',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      )),
                                )
                              ]),
                            ]),
                      ),
                    ),
                    Expanded(
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 600,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        PositionedDirectional(
                          top: 10,
                          start: 5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 228, 104, 104),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 1,
                          child: Container(
                              width: MediaQuery.of(context).size.width * .4,
                              height: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: NoteList())),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Text('Sign-out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  )
                ]),
              )
            ],
          )),
    );
  }
}
