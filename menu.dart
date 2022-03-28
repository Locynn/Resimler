import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.yellow,
              ),
              onLongPress: () {
                print("Buntonlar kısmına uzun süre basıldı");
              },
              onPressed: () => Navigator.pushNamed(context, "/butonlar"),
              child: Text("Butonlar",style: TextStyle(fontSize: 30),),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, "/resimler"),
              child: Text("Resimler"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.cyanAccent,
              ),
              onPressed: () => Navigator.pushNamed(context, "/resimbuton"),
              child: Text("Resim buton"),
            ),
          ],
        ),
      ),
    );
  }
}
