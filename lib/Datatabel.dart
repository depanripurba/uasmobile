import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Datatabel extends StatefulWidget{
  _Datatabel createState()=>_Datatabel();
}

class _Datatabel extends State<Datatabel>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Datatabel'),
      ),
      body: DataTable(
           columns: [
             DataColumn(
               label: Text('Nama')
             ),
             DataColumn(
               label: Text("Nirm")
             ),
             DataColumn(
               label: Text("Kelas")
             )
           ],
           rows: [
             DataRow(
               cells: [
                 DataCell(Text('Depanri Purba')),
                 DataCell(Text('2018020777')),
                 DataCell(Text('6SIA5'))
               ]
             )
           ],
         ),
    );
  }
}
  