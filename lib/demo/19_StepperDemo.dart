import 'package:flutter/material.dart';



class StepDemo extends StatefulWidget {
  const StepDemo({Key? key}) : super(key: key);

  @override
  State<StepDemo> createState() => _StepDemoState();
}

class _StepDemoState extends State<StepDemo> {

  int _currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.black,
                ),
                child: Stepper(
                    currentStep: _currentStep,
                    onStepTapped: (value) {
                      setState(() {
                        _currentStep = value;
                      });
                    },
                    onStepContinue: () {
                        setState(() {
                          _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                        });
                    },
                    onStepCancel: () {
                      setState(() {
                        _currentStep > 0? _currentStep -= 1 : _currentStep = 0;
                      });
                    },
                    steps: [
                      Step(
                        title: Text('你好'),
                        subtitle: Text('都好'),
                        content: Text('大家好才是真的好呀才是真的好呀才是真的好呀才是真的好呀！！！！'),
                        isActive: _currentStep == 0,
                      ),
                      Step(
                        title: Text('你好'),
                        subtitle: Text('都好'),
                        content: Text('大家好才是真的好呀才是真的好呀才是真的好呀才是真的好呀！！！！'),
                        isActive: _currentStep == 1,
                      ),
                      Step(
                        title: Text('你好'),
                        subtitle: Text('都好'),
                        content: Text('大家好才是真的好呀才是真的好呀才是真的好呀才是真的好呀！！！！'),
                        isActive: _currentStep == 2,
                      )
                    ],
                )
            )
          ],
        ),
      ),
    );
  }
}
