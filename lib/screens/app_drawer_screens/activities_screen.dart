import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import 'package:table_calendar/table_calendar.dart';

class ActiviesScreen extends StatelessWidget {
  static const routeName = '/ActiviesScreen';

  const ActiviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Activities",
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: ('General'),
                ),
                Tab(text: "Department")
              ],
              labelColor: Colors.blue,
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: ListView(
                      padding: EdgeInsets.all(20),
                      children: ListTile.divideTiles(context: context, tiles: [
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),


                      ]).toList()),
                ),
                Container(
                  child: ListView(
                      padding: EdgeInsets.all(20),
                      children: ListTile.divideTiles(context: context, tiles: [
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          title: Text("Meeting Name"),
                          subtitle: Text("Task Name"),
                          leading: Icon(Icons.task),
                          trailing: Icon(Icons.arrow_forward),
                        ),

                      ]).toList()),
                ),
              ]),
            )
          ],
        ));
  }
}
