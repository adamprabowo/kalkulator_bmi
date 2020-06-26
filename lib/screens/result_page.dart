import 'package:flutter/material.dart';

import '../components/reusableCard.dart';
import '../components/bottom_button.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Normal BMI Result',
                    style: kBodyResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              label: 'RE-CALCULATE YOUR BMI',
            ),
          )
        ],
      ),
    );
  }
}
