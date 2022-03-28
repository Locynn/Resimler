import 'package:flutter/material.dart';

class ResimButon extends StatefulWidget {
  const ResimButon({Key? key}) : super(key: key);

  @override
  _ResimButonState createState() => _ResimButonState();
}

class _ResimButonState extends State<ResimButon> {
  final ButtonStyle butonTasarim = ElevatedButton.styleFrom(

    primary: Colors.red,
    textStyle: TextStyle(fontSize: 25),
    onPrimary: Colors.yellow,
  );
  var resimDizisi = [
    "images.jpeg",
    "images1.jpeg",
    "images2.jpeg",
    "images3.jpeg",
    "images4.jpeg"
  ];
  var isimDizisi = [
    "resim1 görüntülendi",
    "resim2 görüntülendi",
    "resim3 görüntülendi",
    "resim4 görüntülendi",
    "resim5 görüntülendi"
  ];
  var sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resim Buton Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(isimDizisi[sayac]),
            Image.asset("assets/image/" + resimDizisi[sayac]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: butonTasarim,
                  onPressed: ilkMetot,
                  child: Text("İlk"),
                ),
                ElevatedButton(
                  style: butonTasarim,
                  onPressed: geriMetot,
                  child: Text("geri"),
                ),
                ElevatedButton(
                  style: butonTasarim,
                  onPressed: ileriMetot,
                  child: Text("ileri"),
                ),
                ElevatedButton(
                  style: butonTasarim,
                  onPressed: () {
                    setState(() {
                      sayac=resimDizisi.length-1;
                    });
                  },
                  child: Text("son"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void ilkMetot() {
    setState(() {
      sayac=0;
    });
  }

  void geriMetot() {
    setState(() {
      sayac--;
      if(sayac<0) sayac=resimDizisi.length-1;
    });
  }

  void ileriMetot() {
    setState(() {
      sayac++;
      if(sayac>=resimDizisi.length) sayac=0;
    });
  }
}
