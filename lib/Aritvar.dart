import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Aritvar extends StatefulWidget {
  _Aritvar createState() => _Aritvar();
}
class _Aritvar extends State<Aritvar> {
var tambah = 0;
var kurang = 0;
var kali = 0;
TextEditingController vara = TextEditingController(text: '0');
TextEditingController varb = TextEditingController(text: '0');
void prosesdata(){
  String varia = vara.text;
  String varib = varb.text;
  print(vara.text);
  vara.text='0';
  varb.text='0';
  setState(() {
   tambah = int.parse(varia) + int.parse(varib);
   kurang = int.parse(varia) - int.parse(varib);
   kali = int.parse(varia) * int.parse(varib);
 
  });
}
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(title: Text('Aritvar'),),
     body: ListView(
       children: [
         SizedBox(
           height: 20,
         ),
         Center(
           child: Text('Aritmatika dan Variabel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.deepOrange),),
         ),
         Container(
           padding: EdgeInsets.only(right: 12,left: 12),
           child: Column(
             children: [
               TextFormField(
                 controller: vara,
                 decoration: InputDecoration(
                   hintText: 'Masukkan Variabel a'
                 ),
                 keyboardType: TextInputType.number,
               ),
               TextFormField(
                 controller: varb,
                  decoration: InputDecoration(
                   hintText: 'Masukkan Variabel b',
                 ),
                 keyboardType: TextInputType.number,
               ),
               RaisedButton(
                 child: Text('proses',style: TextStyle(color: Colors.white),),
                 color: Colors.deepOrange,
                 onPressed: (){
                   prosesdata();
                 },
               ),
               
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Center(
             child: Text('Untuk melihat hasil harus di isi form di atas dan klik tombol proses',style: TextStyle(color: Colors.red),),
           ),
         ),
         SizedBox(
           height: 10,
         ),
         Center(
           child: Text('Hasil Pemroresan',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 22),),
         ),
         SizedBox(
           height: 10,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                 Text('Tambah',style: TextStyle(fontSize: 14),),
                 Text(tambah.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
               ],
             ),
             Column(
               children: [
                 Text('Kurang',style: TextStyle(fontSize: 14),),
                 Text(kurang.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
               ],
             ),
             Column(
               children: [
                 Text('Kali',style: TextStyle(fontSize: 14),),
                 Text(kali.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
               ],
             ),
             
           ],),
          
       ],),
   );
   }
}