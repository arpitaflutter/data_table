import 'package:flutter/material.dart';

class tableScreen extends StatefulWidget {
  const tableScreen({Key? key}) : super(key: key);

  @override
  State<tableScreen> createState() => _tableScreenState();
}

class _tableScreenState extends State<tableScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text("DataTable"),
          backgroundColor: Colors.green.shade900,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DataTable(
                border: TableBorder.all(color: Colors.blueGrey,width: 2),
                checkboxHorizontalMargin: 2,
                columnSpacing: 25,
                dataRowColor: MaterialStateProperty.all(Colors.green.shade50),
                dataTextStyle: TextStyle(color: Colors.green.shade900),
                headingRowColor: MaterialStateProperty.all(Colors.green.shade300),
                columns: [
                  DataColumn(label: Text("No.")),
                  DataColumn(label: Text("Emp. Name")),
                  DataColumn(label: Text("Salary")),
                  DataColumn(label: Text("Phone No.")),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("1")),
                      DataCell(Text("Arpita")),
                      DataCell(Text("20000")),
                      DataCell(Text("9988776655")),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("2")),
                      DataCell(Text("Mayur")),
                      DataCell(Text("30000")),
                      DataCell(Text("9988776655")),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("3")),
                      DataCell(Text("Janvi")),
                      DataCell(Text("40000")),
                      DataCell(Text("9988776655")),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("1")),
                      DataCell(Text("Arpita")),
                      DataCell(Text("20000")),
                      DataCell(Text("9988776655")),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
