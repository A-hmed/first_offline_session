import 'package:first_online_project/screens/calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}
//todo: asdkasaljssdkaskdkioe
class _CalculatorState extends State<Calculator> {
  String screenText = "";
  String lhs = "";
  String operator = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                  ),
                    child: Text(
                   screenText,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("7", onDigitClick),
                CalculatorButton("8", onDigitClick),
                CalculatorButton("9", onDigitClick),
                CalculatorButton("/", onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("4", onDigitClick),
                CalculatorButton("5", onDigitClick),
                CalculatorButton("6", onDigitClick),
                CalculatorButton("X", onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton("1", onDigitClick),
                CalculatorButton("2", onDigitClick),
                CalculatorButton("3", onDigitClick),
                CalculatorButton("+", onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(".", onDigitClick),
                CalculatorButton("0", onDigitClick),
                CalculatorButton("=", onEqualClick),
                CalculatorButton("-", onOperatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String digit){
    if(screenText.contains(".")){
      return;
    }
    screenText += digit;
    setState(() {});
  }

  void onOperatorClick(String newOperator){
    if(operator.isEmpty){
      lhs = screenText;
      operator = newOperator;
      screenText = "";
    }
    else {
      String result = "";
      if(operator == "+"){
        result = "${double.parse(lhs) + double.parse(screenText)}";
      }
      else if(operator == "-"){
        result = "${double.parse(lhs) - double.parse(screenText)}";
      }
      else if(operator == "/"){
        result = "${double.parse(lhs) / double.parse(screenText)}";
      }
      else {
        result = "${double.parse(lhs) * double.parse(screenText)}";
      }
      lhs = result;
      operator = newOperator;
      screenText = "";
    }

    setState(() {});
    print("Operator click, clicked operator = $newOperator, "
        " lhs = $lhs");
  }

  void onEqualClick(_){
    String result = "";
    if(operator == "+"){
      result = "${double.parse(lhs) + double.parse(screenText)}";
    }
    else if(operator == "-"){
      result = "${double.parse(lhs) - double.parse(screenText)}";
    }
    else if(operator == "/"){
      result = "${double.parse(lhs) / double.parse(screenText)}";
    }
    else {
      result = "${double.parse(lhs) * double.parse(screenText)}";
    }
    screenText = result;
    lhs = "";
    operator = "";
    setState(() {});
  }
}
