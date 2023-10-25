import 'package:flutter/material.dart';
import 'package:project_zeinab_emad/Screen/contacts_list_page.dart';


void main() {runApp( const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Contact(),
    );
  }
}
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}
class _ContactState extends State<Contact> {

  List<Contact>contacts=List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
          Center( child: SingleChildScrollView(child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [CircleAvatar(radius: 30,
                backgroundColor: Colors.blue.shade900, child: IconButton(
                  icon: const Icon(Icons.photo_camera, color: Colors.white,),
                  onPressed: () {},)
                ,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "Name ",
                        ),
                      ),
                      const SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.house),
                            hintText: "Address ",
                          ),
                        ),
                      ),
                      const TextField(decoration: InputDecoration(
                        icon: Icon(Icons.shopping_bag),
                        hintText: "Jop ",),),
                      const TextField(decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Tel ",),),
                      const TextField(decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Email ",),),
                      const TextField(decoration: InputDecoration(icon: Icon(Icons.web),hintText: "WebSite ",),
                      ),
                      const Center(
                        child: SizedBox(
                          height: 10,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ColoredBox(color: Colors.blue.shade900),
                            Center(child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const ChatApp();
                              }),);
                            },
                                child: const Text('Save')))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          ),
        ));
  }
}

