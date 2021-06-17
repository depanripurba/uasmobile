import 'package:flutter/material.dart';

class If extends StatefulWidget{
  _If createState()=>_If();
}
class _If extends State<If>{
  var statusangka = 'Hasil';
  var hasil = 'belum ada data';
  TextEditingController angka = TextEditingController();
  void proses(){
    String tes = angka.text;
    int hasem = int.parse(tes);
    print(hasem);
    if(hasem%2==0){
      setState(() {
        hasil='genap';
        statusangka = tes;
      });
    }else{
      setState(() {
       hasil='ganjil'; 
       statusangka = tes;
      });
    }
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Kondisi IF'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12,left: 12),
            child: TextFormField(
              controller: angka,
              decoration: InputDecoration(hintText: 'masukkan angka'),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14, left: 14),
            child: Center(
              child: Text('silahkan tekan tombol dibawah ini untuk mencek apakah angka genap atau ganjil'),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Cek'),
              onPressed: (){
                proses();
              },
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: Text(statusangka,style: TextStyle(color: Colors.red,fontSize: 19,fontWeight: FontWeight.bold,)),
          ),
          Center(
            child: Text(hasil,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,)),
          )
        ],
      ),
    );
  }
}