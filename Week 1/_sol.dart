// import 'package:flutter/material.dart';

// void main() async {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         backgroundColor: const Color(0xFF15202D),
//         body: Container(
//           padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
//           child: DefaultTextStyle(
//             style: const TextStyle(fontSize: 19, color: Colors.white70),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text("Settings", style: TextStyle(fontSize: 32)),
//                 const SizedBox(height: 13),
//                 Container(
//                     margin: const EdgeInsets.only(bottom: 10),
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey.shade700,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
// //                     height: 50,
//                     width: 300,
//                     child: Row(
//                       children: const [
//                         Expanded(
//                           child: Text("Account"),
//                         ),
//                         Icon(Icons.arrow_forward),
//                       ],
//                     )),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 8),
//                   decoration: BoxDecoration(
//                     color: Colors.blueGrey.shade700,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   height: 50,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 8),
//                   decoration: BoxDecoration(
//                     color: Colors.blueGrey.shade700,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   height: 50,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 8),
//                   decoration: BoxDecoration(
//                     color: Colors.blueGrey.shade700,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   height: 50,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class TodaysTasks extends StatelessWidget {
//   const TodaysTasks({Key? key}, this.tasks) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ...tasks.map((task) =>ListTile(
//           title: task.title
//         ))
//       ]
//     );
//   }
// }