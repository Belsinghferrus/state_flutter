import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

TextEditingController myController = TextEditingController();

  //greet Message
 String greetingMessage = "";

  //greet user
  void greetUser(){
    String userName = myController.text;
   setState(() {
     greetingMessage = "Hello " + userName;
   });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              //textfield
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your message"
                ),
                controller: myController,
              ),

              //button
              ElevatedButton(onPressed: greetUser,
                  child: Text("Click Here!"))
            ],
          ),
        ),
      ),
    );
  }
}
