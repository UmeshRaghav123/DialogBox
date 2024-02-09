import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Simple"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return  AlertDialog(
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green
                                ),
                                child:const  Text("No", style: TextStyle( color: Colors.white),)),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red
                            ),

                                child:const  Text("Yes",style: TextStyle(backgroundColor: Colors.red, color: Colors.white),))
                          ],
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Delete?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                              const Text("Are you sure to close App.",style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        );
                      });
                },
                child: const Text("Dialog Box")),

            //Simple Box
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (context)=>
                      SimpleDialog(
                        title:const Text('Hello Goolge'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { },
                            child:const Text('No.1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () { },
                            child: const Text('No.2'),
                          ),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Close"))
                        ],

                      )
              );
            }, child: Text("Simple Dialog Button")),

            const SizedBox(
              height: 20,
            ),
            //Snack
            Builder(builder: (context) {
              return TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white
                 ),
                  onPressed: () {
                    final message = SnackBar(

                      content: Text("This is a SnackBar with TextButton.!"),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.all(5),
                      duration: Duration(seconds: 4),
                      action: SnackBarAction(label: "Done", onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(message);
                  },
                  child: Text("SnackBar"));
            }),

            const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      elevation: 0,
                      // isDismissible: false,
                      enableDrag: true,
                      // shape: BeveledRectangleBorder(
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(0),
                      //     topRight: Radius.circular(20),

                      //     )
                      // ),

                      context: context,
                      builder: (context) {
                        return  Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Icon(Icons.train),
                              title: Text("Orange"),
                              subtitle: Text("Karan"),
                            ),
                            ListTile(
                              leading: Icon(Icons.person),
                              title: Text("Mango"),
                              subtitle: Text("Manav"),
                            ),
                            ListTile(
                              leading: Icon(Icons.person_2),
                              title: Text("Bottom"),
                              subtitle: Text("Hari"),
                            ),
                            ListTile(
                              leading: Icon(Icons.tag),
                              title: Text("Apple"),
                              subtitle: Text("Madhav"),

                            ),

                            ListTile(
                              leading: Icon(Icons.train),
                              title: Text("Grapes"),
                              subtitle: Text("Vishnu"),
                            ),

                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Done"))
                          ],
                        );
                      });
                },
                child: const Text("Bottom Sheat")),

          ],
        ),
      ),
    );
  }
}
