import 'package:flutter/material.dart';
import 'package:learn_flutter/mock/post.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            DataTableDemo1(),
            Divider(
              color: Colors.red,
              height: 20,
            ),
            DataTableDemo2(),
            Divider(
              color: Colors.red,
              height: 20,
            ),
            DataTableDemo3()
          ],
        ),
      ),
    );
  }
}


class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;


  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  @override
  DataRow? getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(
        index: index,
        cells: [
          DataCell(
            Text(post.title),
          ),
          DataCell(
            Text(post.author),
          ),
          DataCell(
            Image.network(post.imageUrl),
          )
        ],
    );
  }

  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });

    notifyListeners();
  }
}

class DataTableDemo3 extends StatefulWidget {
  const DataTableDemo3({Key? key}) : super(key: key);

  @override
  State<DataTableDemo3> createState() => _DataTableDemo3State();
}

class _DataTableDemo3State extends State<DataTableDemo3> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  final PostDataSource  _postDataSource = PostDataSource();



  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      header: Text('分页table'),
      source: _postDataSource,
      sortColumnIndex: _sortColumnIndex,
      sortAscending: _sortAscending,
      rowsPerPage: 5,
      columns: [
        DataColumn(
            label: Text('标题'),
            onSort: (int index, bool ascending) {
              _postDataSource._sort((post) => post.title.length, ascending);
              setState(() {
                _sortColumnIndex = index;
                _sortAscending = ascending;


              });
            }
        ),
        DataColumn(
            label: Text('作者')
        ),
        DataColumn(
            label: Text('图片')
        ),
      ],

    );
  }
}




class DataTableDemo2 extends StatefulWidget {
  const DataTableDemo2({Key? key}) : super(key: key);

  @override
  State<DataTableDemo2> createState() => _DataTableDemo2State();
}

class _DataTableDemo2State extends State<DataTableDemo2> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;



  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: _sortColumnIndex,
      sortAscending: _sortAscending,
      // onSelectAll: (value) {
      //
      // },
      columns: [
        DataColumn(
          // label: Container(
          //   width: 200,
          //   child: Text('标题'),
          // )
            label: Text('标题'),
            onSort: (int index, bool ascending) {
              setState(() {
                _sortColumnIndex = index;
                 _sortAscending = ascending;

                 posts.sort((a, b) {
                   if (!ascending) {
                     final c = a;
                     a = b;
                     b = c;
                   }
                   return a.title.length.compareTo(b.title.length);
                 });
              });
            }
        ),
        DataColumn(
            label: Text('作者')
        ),
        DataColumn(
            label: Text('图片')
        ),
      ],
      rows: posts.map((post){
        return DataRow(
            selected: post.selected,
            onSelectChanged: (value) {
              setState(() {
                if (post.selected != value) {
                  post.selected = value!;
                }
              });
            },
            cells: [
              DataCell(
                Text(post.title),
              ),
              DataCell(
                Text(post.author),
              ),
              DataCell(
                Image.network(post.imageUrl),
              )
            ]
        );
      }).toList(),
    );
  }
}



class DataTableDemo1 extends StatelessWidget {
  const DataTableDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text('标题')
        ),
        DataColumn(
            label: Text('作者')
        ),
      ],
      rows: [
        DataRow(
            cells: [
              DataCell(
                Text('你好')
              ),
              DataCell(
                  Text('小铜钱儿')
              )
            ]
        ),
        DataRow(
            cells: [
              DataCell(
                  Text('世界你好')
              ),
              DataCell(
                  Text('江小鱼')
              )
            ]
        ),
        DataRow(
            cells: [
              DataCell(
                  Text('美好的一天')
              ),
              DataCell(
                  Text('江小鱼')
              )
            ]
        )
      ],
    );
  }
}
