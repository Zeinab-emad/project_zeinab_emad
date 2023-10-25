import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_zeinab_emad/Screen/Second.dart';
void main() {runApp( const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Contact App',color: Colors.white,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:(Scaffold(
      appBar: AppBar(title: const Text('Contact App',),
        backgroundColor:const Color(0xFF0D47A1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ElevatedButton.icon(onPressed: (){},
               icon:
               const Icon(Icons.menu,size: 80,color: Colors.black ,), label: const Text(''))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
return  MyApp1();
        }),);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add,color: Colors.white,),backgroundColor: const Color(0xFF0D47A1),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
      )
    );
  }
}
