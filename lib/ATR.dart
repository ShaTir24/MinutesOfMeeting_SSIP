import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Action Taken Report';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 180, 209),
          leading: Icon(Icons.arrow_back_sharp),
          title: Text(
            "ATR",
          ),
        ),
        backgroundColor: Colors.white,
        body: const MyStatefullWidget(),
      ),
    );
  }
}

class MyStatefullWidget extends StatefulWidget {
  const MyStatefullWidget({super.key});

  @override
  State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.grey.shade200,
              // clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Container(
                // color: Colors.grey.shade200,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Summary',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(height: 12),
                    Text(
                      'According to the latest Economic Survey 2023, the growth of the Indian economy is expected to expand 7% in real terms in 2022-2023.But there was 8.7% growth in 2021- 2022. This economic survey notes that the economic condition had staged a full and broad-based recovery after Covid pandemic.',
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton.icon(
                icon: Icon(Icons.download_sharp),
                label: Text(
                  'Download',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print('Hello');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    fixedSize: Size(170, 70),
                    backgroundColor: Color.fromARGB(255, 51, 180, 209),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
        ],
      ),
    ]);
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
