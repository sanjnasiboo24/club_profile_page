import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context,index){
          return Card(
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
        },
      ),
    );
  }
}
