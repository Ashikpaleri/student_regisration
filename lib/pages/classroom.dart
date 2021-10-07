import 'package:flutter/material.dart';
import 'package:classroom/pages/conference.dart';
import 'package:classroom/pages/classhome.dart';
import 'package:classroom/pages/conferencehome.dart';

class ClassDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width / 1.5,
              height: 200,
              onPressed:  () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClassHome()));
              },
              color: Colors.red,
                shape:  RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Text(
                  "class room",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,

                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width / 1.5,
                    height: 200,
                    onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ClassConference()));
                    },
                    color: Colors.blue,
                    shape:  RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Conference",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white
                      ),

                    ),)
                  ],
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}