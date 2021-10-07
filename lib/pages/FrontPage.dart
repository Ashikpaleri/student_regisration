// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:classroom/pages/StudentDetails.dart';
import 'package:classroom/pages/classroom.dart';

import 'package:classroom/pages/RegistrationPage.dart';
import 'package:classroom/pages/SubjectDetails.dart';



class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}
class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context){
    return Container();
  }
}
Widget getListView(

    BuildContext context
    )
{

  var listView = ListView(

    children: <Widget>[
      ListTile(
        leading: Icon(Icons.add),
        title: Text("Regitration"),
        subtitle: Text("click here to register"),
        // trailing: Icon(Icons.label),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegistrationDetails()));

        },

      ),
      ListTile(
        leading: Icon(Icons.add_to_home_screen_rounded),
        title: Text("Class Room"),
        subtitle: Text("join"),
        // trailing: Icon(Icons.arrow_drop_down),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ClassDetails()));
        },

      ),

      ListTile(
        leading: Icon(Icons.select_all_outlined),
        title: Text("Subject"),
        subtitle: Text("types of subject"),
        // trailing: Icon(Icons.arrow_drop_down),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SubjectDetails()));
        },

      ),

      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text("Students"),
        subtitle: Text("about"),

        // trailing: Icon(Icons.arrow_drop_down),
        onTap: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => StudentDetails()));
        },

      ),




    ],
  );
  return listView;
}