import 'package:flutter/material.dart';

// widget class
class Button extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// state class
// We will replace this class in each of the examples below
class _MyWidgetState extends State<Button> {
  // state variable
  String _textString = 'Hello world';

  // The State class must include this method, which builds the widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textString,
          style: TextStyle(fontSize: 30),
        ),
        RaisedButton(
          //                         <--- Button
          child: Text('Button'),
          onPressed: () {
            _doSomething();
          },
        ),
      ],
    );
  }

  // this private method is run whenever the button is pressed
  void _doSomething() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString = 'Hello Flutter';
    });
  }
}
