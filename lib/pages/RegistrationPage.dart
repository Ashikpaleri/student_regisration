import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:classroom/pages/regitrationback.dart';
import 'package:classroom/pages/detailseofregstud.dart';


class RegistrationDetails extends StatefulWidget {
  @override
  _RegistrationDetailsState createState() => _RegistrationDetailsState();
}
Future<UserModel> createUser(String student, String subject) async{
  final String apiUrl = "https://hamon-interviewapi.herokuapp.com/registration/?api_key=Dd15A";
  final response = await http.post(Uri.parse(apiUrl),headers: <String, String>{
    'Conten-Type': 'appllication/json; charset=UTF-8',
  },
      body: {
    'student': student,
    'subject': subject,
  } );
  print(response.statusCode);
  if (response.statusCode < 200){
    print('ashikkpalri');
    final String responseString = response.body; {

      return userModelFromJson(responseString);

    }
  }
  else{
   throw UnimplementedError(

   );

  }
}

//delete Starting

// Future <UserModel> deleteUser(String student, String subject, String id) async{
//   final String apiUrl2 = "https://hamon-interviewapi.herokuapp.com/registration/$id/?api_key=Dd15A/";
//   final response = await http.delete(Uri.parse(apiUrl2),
//       body: {
//     'student': student,
//     'subject': subject,
//     'id': id,
//   }
//   );
//   print(response.statusCode);
//   if (response.statusCode <= 200){
//     print('ashikkpalri');
//     final String responseString = response.body; {
//
//       return userModelFromJson(responseString);
//
//     }
//   }
//   else{
//     print('aaaa');
//     throw UnimplementedError(
//
//
//     );
//
//   }
// }








//delete ending







class _RegistrationDetailsState extends State<RegistrationDetails> {
    UserModel ? _user;

final TextEditingController studentController = TextEditingController();
final TextEditingController subjectController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('registration'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: studentController,
              autofocus: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'student',
                ),
            ),
            TextField(
              controller: subjectController,
              autofocus: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'subject',

              ),
            ),
            SizedBox(height: 32,),
            _user == null ? Container():
          Text("the user ${_user!.registration} is created successfully"),


            TextButton(
              child: Text('Register',
                style:
                TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onPressed: () async {
                print('ashik');
                final String student = studentController.text;
                final String subject = subjectController.text;

                final UserModel user = await createUser(student, subject);

                setState(() {
                  this._user = user;
                });



              },
            ),

        TextButton(
          child: Text('view register student',
            style:
            TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterStudents()));
        }),





          ],


        ),



      ),





    );
  }
}