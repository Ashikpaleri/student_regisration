import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'package:classroom/controlllers/viewregisterstudent.dart';
import 'package:classroom/pages/RegistrationPage.dart';
import 'package:classroom/pages/regitrationback.dart';



class RegisterStudents extends StatefulWidget {
  @override
  _RegisterStudentsState createState() => _RegisterStudentsState();
}
class _RegisterStudentsState extends State<RegisterStudents>{
  UserModel ? _user;

  final TextEditingController studentController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController idController = TextEditingController();


  final _readResisteredstudent = readResisteredstudent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Register Students"),
      ),
      body: FutureBuilder(
        future: _readResisteredstudent,
        builder: (context, snapshot){
          if (snapshot.hasData){
            List listregstud = [snapshot.data];
            var regstudent = listregstud[0]['registrations'];
            return ListView.builder(
              shrinkWrap: true,


              itemCount: regstudent.length,
              itemBuilder: (context, index)

              {
                return Card(


                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(

                      children: <Widget>[
                        Text("Id: "'${regstudent[index]['id']}', style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                        ),
                        ),
                        Text("Student id: "'${regstudent[index]['student']}', style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,),
                        ),
                        Text("Subject id: "'${regstudent[index]['subject']}', style: TextStyle(
                          fontSize: 16,
                          color: Colors.brown,),
                        ),
                        // SizedBox(height: 32,),
                        // _user == null ? Container():
                        // Text("the user ${_user!.registration} is deleted"),


                        IconButton(icon: Icon(Icons.delete),
                          onPressed: () async{
                            print('ashii');
                            final String student = studentController.text;
                            final String subject = subjectController.text;
                            final String id = subjectController.text;

                            // final UserModel user = await deleteUser(student, subject, id);

                            // setState(() {
                            //   this._user = user;
                            // });


                          },
                        ),

                      ],
                    ),
                  ),
                  //deleteboox

                //    delete box

                );
              }
            );
          }
          else{
            return CircularProgressIndicator();
          }
        }
      ),
    );
  }
}