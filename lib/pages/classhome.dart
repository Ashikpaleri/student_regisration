import 'package:flutter/material.dart';
import 'package:classroom/controlllers/student.dart';

class ClassHome extends StatefulWidget {
  @override
  _ClassHomeState createState() => _ClassHomeState();
}

class _ClassHomeState extends State<ClassHome> {
  final _readStudent = readStudent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("class room"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: Text("TEACHER", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 30,),

          ),

           FutureBuilder(
              future: _readStudent,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List list = [snapshot.data];
                  var student = list[0]['students'];

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 4),
                    itemCount: student.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        width: 50,
                        color: Colors.greenAccent,
                        child: Text(
                          student[index]['name'], style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal
                        ),
                        ),


                      );

                    },
                    //   ),

                    // ],
                  );
                } else {

                  return CircularProgressIndicator();
                }
              }),
        ],
      ),
    );
  }
}
