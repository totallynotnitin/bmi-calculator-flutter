import 'package:bmi_calculator/Components/BottomButton.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import '../Components/ReusableCardDesign.dart';
import 'package:bmi_calculator/Calculation.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.interpolation,
      @required this.bmiResult,
      @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpolation;
  //final Function yourBMI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                'Result',
                style: kLargeTextStyle.copyWith(fontSize: 35.0),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult.toLowerCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      resultText,
                      style: kNumberStyle.copyWith(fontSize: 60.0),
                    ),
                    Text(
                      interpolation,
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          BottomButton(
              buttonText: 'RE-CALCULATE', onTap: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
