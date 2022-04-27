import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkBoxItemA = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('复选框'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            CheckboxListTile(
                value: _checkBoxItemA,
                onChanged: (value){
                  setState(() {
                    _checkBoxItemA = value!;
                  });
                },
              title: Text('checkBox item A'),
              subtitle: Text('文字描述'),
              secondary: Icon(Icons.bookmark),
              selected: _checkBoxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Checkbox(
                    value: _checkBoxItemA,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxItemA = value!;
                      });
                    },
                  ),
              ],
            ),
            RadioDemo(),
            SwitchDemo(),
            SliderDemo(),
            DateTimeDemo(),
          ],
        ),
      ),
    );
  }
}



class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int _radioGroupA = 0;
  _handleRadioValueChanged (value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Radio(
        //   value: 0,
        //   groupValue: _radioGroupA,
        //   // activeColor: Colors.black,
        //   onChanged: _handleRadioValueChanged,
        // ),
        // Radio(
        //   value: 1,
        //   groupValue: _radioGroupA,
        //   // activeColor: Colors.black,
        //   onChanged: _handleRadioValueChanged,
        // ),
        SizedBox(height: 32,),
        Text('选择的值-${_radioGroupA}'),
        RadioListTile(
            value: 0,
            groupValue: _radioGroupA,
            onChanged: _handleRadioValueChanged,
            title: Text('选择我'),
            subtitle: Text('描述'),
            secondary: Icon(Icons.filter_1),
            selected: _radioGroupA == 0,
        ),
        RadioListTile(
          value: 1,
          groupValue: _radioGroupA,
          onChanged: _handleRadioValueChanged,
          title: Text('别选我'),
          subtitle: Text('描述'),
          secondary: Icon(Icons.filter_2),
          selected: _radioGroupA == 1,
        )
      ],
    );
  }
}


class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
bool _switchItemA = false;
bool _switchListItemA = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _switchItemA ? '😸' : '😏',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        Switch(
            value: _switchItemA,
            onChanged: (value) {
              setState(() {
                _switchItemA = value;
              });
            }
        ),
        SwitchListTile(
            value: _switchListItemA,
            title: Text('开'),
            subtitle: Text('描述'),
            secondary: Icon(
              _switchListItemA ? Icons.visibility : Icons.visibility_off
            ),
            selected: _switchListItemA,
            onChanged: (value) {
              setState(() {
                _switchListItemA = value;
              });
            }
        )
      ],
    );
  }
}


class SliderDemo extends StatefulWidget {
  const SliderDemo({Key? key}) : super(key: key);

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _sliderItemA,
          inactiveColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          activeColor: Theme.of(context).colorScheme.secondary,
          onChanged: (value) {
            setState(() {
              _sliderItemA = value;
            });
          },
          min: 0.0,
          max: 10.0,
          divisions: 10,
          label: '${_sliderItemA.toInt()}',
        ),
        Text(
          '进度${_sliderItemA}',
        )
      ],
    );
  }
}


class DateTimeDemo extends StatefulWidget {
  const DateTimeDemo({Key? key}) : super(key: key);

  @override
  State<DateTimeDemo> createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 2);

  Future _selectDate() async {
    final date = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2023)
    );
    if (date == null) return;
    setState(() {
      selectedDate = date;
    });
  }
  Future _selectTime () async{
    final time = await showTimePicker(
        context: context,
        initialTime: selectedTime
    );
    if (time == null) return;
    setState(() {
      selectedTime = time;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _selectDate,
          child: Row(
            children: [
              Text(DateFormat.yMd().format(selectedDate)),
              Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
        InkWell(
          onTap: _selectTime,
          child: Row(
            children: [
              Text(selectedTime.format(context)),
              Icon(Icons.arrow_drop_down)
            ],
          ),
        )
      ],
    );
  }
}


