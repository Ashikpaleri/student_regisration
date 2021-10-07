import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'package:classroom/controlllers/subject.dart';

class SubjectDetails extends StatefulWidget {
  @override
  _SubjectDetailsState createState() => _SubjectDetailsState();
}
class _SubjectDetailsState extends State<SubjectDetails>{
  final _readSubject = readSubject();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject details"),
      ),
      body: FutureBuilder(
        future: _readSubject,
        builder: (contex, snapshot) {
          if (snapshot.hasData) {
            List listsub = [snapshot.data];
            var subject = listsub[0]['subjects'];
            return ListView.builder(
                itemCount: subject.length,
              itemBuilder: (context, index)
                {
                  return Card(
                    shadowColor: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Credits: " '${subject[index]['credits']}', style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),),
                          Text("Id: " '${subject[index]['id']}', style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),),
                          Text(subject[index]['name'], style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),),
                          Text(subject[index]['teacher'], style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            color: Colors.brown


                          ),),

                        ],
                      ),
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