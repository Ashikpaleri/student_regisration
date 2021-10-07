// import 'package:flutter/material.dart';
// import 'package:classroom/pages/conferencehome.dart';
//
// class ConferenceDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           alignment: Alignment.center,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               MaterialButton(
//                 minWidth:  MediaQuery.of(context).size.width / 1.5,
//                 height: 200,
//                 onPressed: () {
//                   Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ClassConference()));
//                 },
//                 color: Colors.blue,
//                 shape:  RoundedRectangleBorder(
//                     side: BorderSide(color: Colors.black),
//                     borderRadius: BorderRadius.circular(50)
//                 ),
//                 child: Text(
//                   "conference",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18,
//                       color: Colors.white
//                   ),
//                 ),
//
//               ),
//             ],
//           ),
//         ),
//       ),
//       );
//   }
// }