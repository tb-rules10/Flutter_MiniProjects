import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/58645688?s=400&u=2d3c9d6bfddf4919d3ef73e3756aacf24580e7d5&v=4"),
              ),
              Text(
                "Ragnarok",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico"
                ),
              ),
              Text(
                "Duelist & Initiator",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "SourceSansPro",
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 1,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                    color: Colors.teal,),
                    title: Text(
                      "+1 80060912",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 20,
                        color: Colors.teal[900],
                      ),
                    ),
                  )
                ),),
              Card(
                color: Colors.white,
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.email,
                      color: Colors.teal,),
                    title: Text(
                      "tanishq.bhatt10@gmail.com",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 20,
                        color: Colors.teal[900],
                      ),
                    ),
                  )
                ),)

            ],
          ),
        ),
      ),
    );
  }
}

// Row(children: <Widget>[
// // MatreialPalette.com
// Icon(Icons.phone,
// color: Colors.teal,),
// SizedBox(
// width: 15,
// ),
// Text(
// "+1 80060912",
// style: TextStyle(
// fontFamily: "SourceSansPro",
// fontSize: 20,
// color: Colors.teal[900],
// ),
// )
// ],),

// Container(
//   height: 100,
//   width: 100,
//   color: Colors.red,
//   margin: EdgeInsets.all(15),
//   padding: EdgeInsets.only(left: 30, top:40),
//   child: Text("Cunt 1"),
// ),
// Container(
//   height: 100,
//   width: 100,
//   color: Colors.white,
//   margin: EdgeInsets.all(15),
//   padding: EdgeInsets.only(left: 30, top:40),
//   child: Text("Cunt 2"),
// ),
// Container(
//   height: 100,
//   width: 100,
//   color: Colors.pinkAccent,
//   margin: EdgeInsets.all(15),
//   padding: EdgeInsets.only(left: 30, top:40),
//   child: Text("Cunt 2"),
// ),