import 'package:flutter/material.dart';
import 'package:classroom/pages/FrontPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Text("class room"),
          ),
        ),
        drawer: Card(
          child:ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text('User'),
                  accountEmail: Text('user@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),)
            ],

          ),
        ),
        body: getListView(context),
      ),
    );


  }
}
