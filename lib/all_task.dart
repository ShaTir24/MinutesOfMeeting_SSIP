import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255,51,180,209),
        leading:Icon(Icons.arrow_back),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body:ListView.builder(
                
                itemCount: 20,
                //  margin:EdgeInsets.all(10),
                
                itemBuilder: (context,index){
                return ListTile(
                   leading: Icon(Icons.task),
                  title: Text("Task ${index+1}"),
                  trailing: Icon(Icons.arrow_forward),
                );
                  
               },
    

     ), 
     floatingActionButton: FloatingActionButton(onPressed: () =>{} ,backgroundColor: Colors.blue,child: const Icon(Icons.add),),
      );
      
        // This trailing comma makes auto-formatting nicer for build methods.
    
  }
  List<Widget>getchildren(int header)
  {
    List<Widget> ar=[];
    for(int i in [1,2,3,4,5,6])
    {
      
      ar.add(Container(
        margin: EdgeInsets.all(10),
        child: ListTile(
          
             shape: BeveledRectangleBorder(
             side: BorderSide(color: Color.fromARGB(255, 122, 126, 130),width:1),
             borderRadius: BorderRadius.circular(20)
           ),
          title: Text('Task $i'),
           
           leading: Icon(Icons.task),
           trailing: Icon(Icons.arrow_forward_rounded),
          // contentPadding: EdgeInsets.all(20),
          onTap: (() {
            tappedOn(i,header);
          }),
        ),
      ));
    }
    return ar;
  }
    tappedOn(int value,int header)
  {
    print('value is $value and header is $header');
  }
}