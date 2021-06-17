import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget{
  _Nav createState()=>_Nav();
}

class _Nav extends State<Nav>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Fitur Navigasi'),),
        body: Center(
          child: Text('Selamat halaman sudah melakukan navigasi'),
        ),
        floatingActionButton: RaisedButton(
          child: Text('Kembali'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
    );
  }
}