import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

void main() {runApp( const ChatApp());}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );}}
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        //add second (back
        // Navigator.pop(context)
      },
        child:const Icon(Icons.add,color: Colors.white),
        backgroundColor: Colors.blue.shade900,
      ),
      body:  Container(
        child: Column(
          children: [
            SafeArea(child:
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Contact",
                  hintStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.search,color: Colors.white, size: 20,),
                  filled: true,
                  fillColor: Colors.blue.shade900,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.blue.shade900)
                  ),
                ),
              ),
            ),
            ),

            StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.all(50),
                    child: Center(
                      child: Card(child: ListTile(
                        title: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15),
                                  child: Container(
                                    child: Padding(padding:
                                    const EdgeInsets.only(left: 25,),
                                      child: SizedBox(
                                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(child: const Text('Z'),
                                              backgroundColor: Colors.blue.shade900,),
                                            const SizedBox(width: 15,),
                                            const Column(mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Zozo Ismail',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 5,),
                                                Text('01156229210'),
                                              ],
                                            ),

                                            const SizedBox(
                                              width: 70,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [SizedBox(height: 15,),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [SizedBox(height: 15,),
                                                        Icon(Icons.edit),

                                                        Icon
                                                          (Icons.delete,)],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )

                                          ],
                                        ),

                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),),
                    ),
                  ) ;
                }
            )],

        ),

      ),

    );


  }}