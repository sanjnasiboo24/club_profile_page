import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profilepageclub/achievements.dart';
import 'package:profilepageclub/events.dart';
import 'package:profilepageclub/announcements.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        )
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('Coding Club',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
//                Text('Coding Club',style: GoogleFonts.aclonica(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),),
                SizedBox(
                  height: 10,
                ),
                Text('One of the best clubs in our college',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                Text('One of the best clubs of our college',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
                SizedBox(
                  height: 20,
                ),
                Text('Why should u join us?',style:TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
                //Text('Why should u join us?',style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),),
                SizedBox(
                  height: 10,
                ),
                Text('Coding Club is a strongest network of coders connecting 750+ colleges in India',style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
//                Text('Coding Club is a strongest network of coders connecting 750+ colleges in India',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
                Text('We discuss good coding questions and also run coding contest time to time',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
//                Text('We discuss good coding questions and also run coding contest time to time',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
              ],
            ),
          ),
        );
      },
    );
  }
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
    //_controller=TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 15)         ,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/pic6.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left:20,top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Coding Club',style:  TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
                          Row(
//                                crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Text('One of the best clubs',style: TextStyle(fontSize: 17,))),
//                                   Text('One of the best clubs',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 17,)),),
                              Container(
                                child: IconButton(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    iconSize: 15,
                                    color: Colors.black,
                                    onPressed: (){
                                      _showModalBottomSheet(context);
                                    }),
                              )
                            ],
                          )
                        ],
                      )
                  )],
              ),

            ],
          ),


          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10,right: 8),
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                  ),
                  child: Center(
                    child: Text('Follow',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white)),
//                        child: Text('Follow',style: GoogleFonts.baiJamjuree(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white))),
                  ),
                ),
//                    SizedBox(
//                      width: 20,
//                    ),
                Container(
                  padding: EdgeInsets.only(left: 8,right: 8),
                  width: 90,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black),
                      color: Colors.green
                  ),
                  child: Center(
                    child: Text('Message',style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white)),
//                        child: Text('Message',style: GoogleFonts.baiJamjuree(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                    width: 50,
                    height: 40,
                    decoration:BoxDecoration(
                      // border: Border.all(color: Colors.black),
                      //borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage('images/facebook.jpg'),
                          fit: BoxFit.contain
                      ),
                    )
                ),

                Container(
                  height: 60,
                  width: 40,
//                      height: 60,
//                      width: 70,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage('images/insta3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding:EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: <Widget>[
              Tab(
                child: Container(
                  width: 110.0,
                  height: 140.0,
                  decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(15.0),
//                        color: Colors.greenAccent
                    // border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Events',style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 20.0,color: Colors.black)),),
                          Center(
                              child: Text('26',style:TextStyle(fontSize: 15,color: Colors.black) )
                          )
                        ],
                      )
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 200.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(15.0),
                    //color: Colors.greenAccent
                    // border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Announcements',style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 20.0,color: Colors.black)),),
                          Center(
                              child: Text('6',style:TextStyle(fontSize: 15,color: Colors.black) )
                          )
                        ],
                      )
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 200.0,
                  height: 140.0,
                  decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(15.0),
//                        color: Colors.greenAccent
                    //  border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Achievements',style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 20.0,color: Colors.black)),),
                          Center(
                              child: Text('10',style:TextStyle(fontSize: 15,color: Colors.black) )
                          )
                        ],
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
//             ListView(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-50,
            width:double.infinity ,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Events(),
//                    ListView(
//                      scrollDirection: Axis.vertical,
//                      shrinkWrap: true,
//                      children: <Widget>[
//                        Container(
//                          decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(15),
//                              color: Colors.white70
//                          ),
//                          child: ListView.builder(
//
//                                itemBuilder: (_,int index)=>EachList(),
//                                //itemCount: this.Names.length,
//                            itemCount: 5,
//                                shrinkWrap: true,
//                              ),
//
//                        ),
//                      ],
//                    ),
                Announcements(),
                Achievements()
              ],
            ),
          ),

        ],
      ),
    );

  }
}

class EachList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return
      Card(
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
//             ListView(
//               shrinkWrap: true,
//                   scrollDirection: Axis.vertical,
//                   children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.redAccent
                ),
                //child: Text(this.name,style: TextStyle(fontSize: 10),),
              ) ,
            ),
            //   ],
            //  )
          ],
        ),
      );


  }
}





