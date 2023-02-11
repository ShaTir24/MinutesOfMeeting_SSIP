import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MultiSelect extends StatefulWidget {
  final List<String> members;
  const MultiSelect({Key? key, required this.members}) : super(key: key);

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  //this variable holds the selected members
  final List<String> _selectedMembers = [];

  //this function is triggered when a checkbox is checked or unchecked
  void _memberChange(String memberValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedMembers.add(memberValue);
      } else {
        _selectedMembers.remove(memberValue);
      }
    });
  }

  //this function is called when the cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

  //this function is called when the submit button is pressed
  void _submit() {
    Navigator.pop(context, _selectedMembers);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Members'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.members
              .map((item) => CheckboxListTile(
                    value: _selectedMembers.contains(item),
                    title: Text(item),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _memberChange(item, isChecked!),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

//code
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//code
class _MyHomePageState extends State<MyHomePage> {
  //*****dropdown code*****
  List<String> _selectedMembers = [];

  void _showMultiSelect() async {
    final List<String> members = [
      "Jenny Patel",
      "Kenny Chobasiya",
      "Suresh Rachi",
      "Mithilesh Kesh",
      "Vishal Thakkar",
      "Soni Radhika",
      "Shah Rushil",
      "Kathi Nilesh"
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          members: members,
        );
      },
    );

    //Update UI
    if (results != null) {
      setState(() {
        _selectedMembers = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 180, 209),
          title: Text('Organize Meeting'),
          leading: Icon(Icons.arrow_back_sharp),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Organizer Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14))),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Meeting Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14))),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Previous Meeting ATR',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.library_books_outlined,
                              size: 25,
                              color: Color.fromARGB(255, 51, 180, 209),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Description_Water.docx',
                                      style: TextStyle(fontSize: 15)),
                                  Text('437 KB',
                                      style: TextStyle(fontSize: 11)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.download_sharp,
                              color: Color.fromARGB(255, 51, 180, 209),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Select Members',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.grey // NEW
                        ),
                    onPressed: _showMultiSelect,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Members'),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color.fromARGB(255, 51, 180, 209),
                        )
                      ],
                    ),
                  ),
                  //display seected members
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      children: _selectedMembers
                          .map((e) => Chip(
                                label: Text(e),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 51, 180, 209)),
                onPressed: (() {}),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Organize'),
                ),
              ),
            ),
          ]),
        ));
  }
}
