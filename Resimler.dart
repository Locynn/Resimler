assets:
   - assets/image/images.jpeg
   - assets/image/images1.jpeg
   - assets/image/images2.jpeg
   - assets/image/images3.jpeg
   - assets/image/images4.jpeg
   
   import 'package:flutter/material.dart';

class Resimler extends StatelessWidget {
  const Resimler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resimler"),
      ),
      body: Center(
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/image/images4.jpeg",
                          ),
                          Text("Resim Yazısı")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/image/images1.jpeg",
                            ),
                          ),
                          Text("Resim Yazısı")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Text(""),
                            backgroundImage:
                                AssetImage("assets/image/images2.jpeg"),
                          ),
                          Text("Circle avatar")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                FlutterLogo(
                    size: 100,
                    textColor: Colors.red,
                    style: FlutterLogoStyle.stacked),
                FadeInImage.assetNetwork(
                  image: 'https://picsum.photos/250?image=9',
                  placeholder: "assets/image/images2.jpeg",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
