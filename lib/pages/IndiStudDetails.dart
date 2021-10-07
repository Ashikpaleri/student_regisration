import 'package:flutter/material.dart';
import 'package:classroom/controlllers/student.dart';
import 'package:classroom/pages/StudentDetails.dart';


class IndividualStudentDetails extends StatelessWidget {




  final _readStudent = readStudent();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Individual Detailse'),
          ),
          body: FutureBuilder(
            future: _readStudent,
            builder: (context, snapshot) {
              if (snapshot.hasData){
                List list = [snapshot.data];
                var student = list[0]['students'];

                return ListView.builder(
                  itemCount: student.length,
                    itemBuilder: (context, index){
                  return Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: [
                      Text(student[index]['email']),
                    ],
                  ),

                );});
              }
              else return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),);


  }
}