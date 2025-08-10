import 'package:flutter/material.dart';

import 'calcButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({super.key});

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {

  // Variables for calculator state
  String _output = "0";
  String _input = "0";
  String _operator = "";
  double _num1 = 0;
  double _num2 = 0;

// Function to handle button presses
  void buttonPress(String buttonText) {
    print(buttonText);

    setState(() {
      if(buttonText == "C"){
        _output = "0";
        _input = "0";
        _operator = "";
        _num1 = 0;
        _num2 = 0;
      }else if(buttonText == "="){
        _num2 = double.parse(_input);
        if(_operator == "+"){
          _output = (_num1 + _num2).toString();
        }else if(_operator == "-"){
          _output = (_num1 - _num2).toString();
        }else if(_operator == "*"){
          _output = (_num1 * _num2).toString();
        }else if(_operator == "÷"){
          _output = _num2 != 0 ? (_num1 / _num2).toString() : "Error";
        }
      }else if(["+", "-", "*", "÷"].contains(buttonText)){
        _num1 = double.parse(_input);
        _operator = buttonText;
        _input = "";
      }else{
        if(_input == "0"){
           _input = buttonText;
        }else{
          _input += buttonText;
        }
        _output = _input;
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(25),
              child: Text(
                _output,
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Row(
            children: [
              calculatorButton(
                onClick: () => buttonPress("7"),
                text: '7',
              ),
              calculatorButton(
                onClick: () => buttonPress("8"),
                text: '8',
              ),
              calculatorButton(
                onClick: () => buttonPress("9"),
                text: '9',
              ),
              calculatorButton(
                onClick: () => buttonPress("÷"),
                text: '÷',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              calculatorButton(
                onClick: () => buttonPress("4"),
                text: '4',
              ),
              calculatorButton(
                onClick: () => buttonPress("5"),
                text: '5',
              ),
              calculatorButton(
                onClick: () => buttonPress("6"),
                text: '6',
              ),
              calculatorButton(
                onClick: () => buttonPress("*"),
                text: '*',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              calculatorButton(
                onClick: () => buttonPress("1"),
                text: '1',
              ),
              calculatorButton(
                onClick: () => buttonPress("2"),
                text: '2',
              ),
              calculatorButton(
                onClick: () => buttonPress("3"),
                text: '3',
              ),
              calculatorButton(
                onClick: () => buttonPress("-"),
                text: '-',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              calculatorButton(
                onClick: () => buttonPress("C"),
                text: 'C',
              ),
              calculatorButton(
                onClick: () => buttonPress("0"),
                text: '0',
              ),
              calculatorButton(
                onClick: () => buttonPress("="),
                text: '=',
              ),
              calculatorButton(
                onClick: () => buttonPress("+"),
                text: '+',
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
