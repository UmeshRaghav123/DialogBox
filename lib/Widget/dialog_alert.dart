// import 'package:flutter/material.dart';
//
// class AlertDialog extends StatefulWidget {
//   const AlertDialog({
//     super.key,
//     required List<TextButton> actions1,
//     required Text title,
//
//   });
//
//   @override
//   State<AlertDialog> createState() => _AlertDialogState();
// }
//
// class _AlertDialogState extends State<AlertDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return  ElevatedButton(
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (context) {
//                 return  AlertDialog(
//                   actions: [
//                     TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child:const  Text("Ok")),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child:const  Text("Cancel"))
//                   ],
//                   title: const Text("Are you sure to close App."),
//                 );
//               });
//         },
//         child: const Text("Dialog Box"));
//
//   }
// }
