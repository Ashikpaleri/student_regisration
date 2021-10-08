import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'package:classroom/controlllers/student.dart';


class StudentDetails extends StatefulWidget {
  @override
  _StudentDetailsState createState() => _StudentDetailsState();


}

class _StudentDetailsState extends State<StudentDetails> {

  final _readStudent = readStudent();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Student Details")
     ),
      body: FutureBuilder(
        future: _readStudent,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List list = [snapshot.data];
            var student = list[0]['students'];
          return ListView.builder(
            itemCount: student.length,
              itemBuilder: (context, index)

          {

            return Card(
              shadowColor: Colors.red,

              child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(student[index]['name'], style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("age: " '${student[index]['age']}', style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),),
                  Text("id:  " '${student[index]['id']}', style: TextStyle(
                    fontSize: 16,
                    color: Colors.red
                  ),),
                  Text(student[index]['email'], style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurpleAccent
                  ),),

                ],
              ),
              ),
                onTap: ()
                {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => IndividualStudentDetails(
                  //
                  //     )));
                },
              ),

            );
          }
          );

          }

          else {
    return CircularProgressIndicator();
          }

      }

      ),
    );
  }
}











