// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/models/toDo.dart';

class addTodo extends StatelessWidget {
  const addTodo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerDesc = TextEditingController();
    AppBar myAppBar = AppBar(
      title: Text("Add Todo"),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );

    // Mencari size hp user
    double heihtbody = MediaQuery.of(context).size.height -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double withbody = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logika
          if (controllerTitle.text.length != 0 ||
              controllerDesc.text.length != 0) {
            dataTodo.add(
              Todo(
                id: DateTime.now().toString(),
                title: controllerTitle.text.length == 0
                    ? "No Title"
                    : controllerTitle.text,
                desc: controllerDesc.text.length == 0
                    ? "No Description"
                    : controllerDesc.text,
              ),
            );
          }
          print(dataTodo);
          Navigator.pop(context);
        },
        child: Icon(Icons.add_task),
      ),
      appBar: myAppBar,
      body: Container(
        padding: EdgeInsets.all(20),
        width: withbody,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: TextField(
                controller: controllerTitle,
                maxLength: 20,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: heihtbody * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: TextField(
                controller: controllerDesc,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Decription",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
