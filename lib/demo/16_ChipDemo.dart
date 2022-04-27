import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  const ChipDemo({Key? key}) : super(key: key);

  @override
  State<ChipDemo> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = [
    '苹果',
    '香蕉',
    '西瓜'
  ];

  String _action = '';

  List<String> _selected = [];
  String _choice = '苹果';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                  Chip(
                      label: Text('Life')
                  ),
                Chip(
                    label: Text('Life'),
                  backgroundColor: Colors.green,
                ),
                Chip(
                  label: Text('Life'),
                  backgroundColor: Colors.green,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text('鱼儿'),
                  ),
                ),
                Chip(
                  label: Text('Life'),
                  backgroundColor: Colors.green,
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('https://club2.autoimg.cn/album/g30/M06/EC/84/userphotos/2021/01/31/02/820_ChsEf2AVoUuARHRJABtXSjWe84o553.jpg'),
                  ),
                ),
                Chip(
                  label: Text('删除'),
                  onDeleted: () {

                  },
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: '确定要删除吗',
                ),
                Divider(
                  color: Colors.red,
                  height: 2,
                  indent: 10,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: Text('ActionChip-${_action}'),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _tags.map((tag){
                return ActionChip(
                  label: Text(tag),
                  onPressed: (){
                    setState(() {
                      _action = tag;
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.red,
              height: 2,
              indent: 10,
            ),
            Container(
              width: double.infinity,
              child: Text('FilterChip-${_selected.toString()}'),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _tags.map((tag){
                return FilterChip(
                    label: Text(tag),
                    selected: _selected.contains(tag),
                    onSelected: (value){
                       setState(() {
                         if (_selected.contains(tag)) {
                           _selected.remove(tag);
                         } else {
                           _selected.add(tag);
                         }
                       });
                    }
                );
              }).toList(),
            ),
            Divider(
              color: Colors.red,
              height: 2,
              indent: 10,
            ),
            Container(
              width: double.infinity,
              child: Text('ChoiceChip-${_choice}'),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _tags.map((tag){
                return ChoiceChip(
                    label: Text(tag),
                    selectedColor: Colors.red,
                    selected: _choice == tag,
                    onSelected: (value){
                      setState(() {
                        _choice = tag;
                      });
                    }
                );
              }).toList(),
            ),
            Divider(
              color: Colors.red,
              height: 2,
              indent: 10,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _tags.map((tag){
                return Chip(
                  label: Text(tag),
                  onDeleted: (){
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              '苹果',
              '香蕉',
              '西瓜'
            ];
            _selected = [];
          });
        },
      ),
    );
  }
}
