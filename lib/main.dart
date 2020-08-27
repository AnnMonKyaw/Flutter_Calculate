import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Operator"),
        ),
        body: Operation(),
      ),
    );
  }
}

class Operation extends StatefulWidget {
  @override
  _OperationState createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  var result = 0;
  var resultDiv = 0.0;
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextField(
            controller: num1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Enter Num1", border: OutlineInputBorder()),
          ),
          TextField(
            controller: num2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Enter Num2", border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(num1.text) + int.parse(num2.text);
                  });
                },
                color: Colors.amberAccent,
                child: Text(
                  "Sum",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(num1.text) - int.parse(num2.text);
                  });
                },
                color: Colors.amberAccent,
                child: Text(
                  "Sub",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = int.parse(num1.text) * int.parse(num2.text);
                  });
                },
                color: Colors.amberAccent,
                child: Text(
                  "Mul",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    resultDiv = int.parse(num1.text) / int.parse(num2.text);
                    result = int.parse(resultDiv.round().toString());
                  });
                },
                color: Colors.amberAccent,
                child: Text(
                  "Div",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
          Text(" Result $result")
        ],
      ),
    );
  }
}
