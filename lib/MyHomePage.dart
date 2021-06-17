import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.title),
       elevation: 0,
       actions: [
         IconButton(
           icon: Icon(Icons.add_alert),
           onPressed: (){
             print('hai nama saya depanri purba, ini adalah project uas');
           },
         )
       ],
     ),
     body: ListView(
       children: [
         SizedBox(
           height: 20,
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('Identitas',style: TextStyle(color: Colors.deepOrange, fontSize: 22, fontWeight: FontWeight.bold),),
         ),
         DataTable(
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
         SizedBox(
           height: 20,
         ),
         
         Center(
           child: Text('Uas Section',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 23)),
         ),
         SizedBox(
           height: 20,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             RaisedButton(
               color: Colors.deepOrange,
               child: Text('Arit & Var',style: TextStyle(color: Colors.white),),
               onPressed: (){
                 Navigator.pushNamed(context, '/aritvar');
               },
             ),
             RaisedButton(
               color: Colors.deepOrange,
               child: Text("Datatable",style: TextStyle(color: Colors.white)),
               onPressed: (){
                 Navigator.pushNamed(context, '/datatabel');
               },
             ),
          
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
              RaisedButton(
              color: Colors.deepOrange,
               child: Text('Nav',style: TextStyle(color: Colors.white)),
               onPressed: (){
                  Navigator.pushNamed(context, '/nav');
               },
             ),
             RaisedButton(
               color: Colors.deepOrange,
               child: Text('If',style: TextStyle(color: Colors.white)),
               onPressed: (){
                  Navigator.pushNamed(context, '/if');
               },
             )
           ],
         )
       ],
     ),
   );
 }
 
 }
