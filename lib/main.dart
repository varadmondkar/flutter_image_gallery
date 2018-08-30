import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Gallery',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: new MyMainPage());
  }
}

class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  // Common Functions
  Image setImages(String imagePath) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
      width: 150.0,
      height: 150.0,
    );
  }

  BoxDecoration setBoxDecoration() {
    return BoxDecoration(
        color: Colors.black26,
        border: Border.all(color: Colors.black38, width: 5.0),
        borderRadius: const BorderRadius.all(const Radius.circular(8.0)));
  }

  /// Shows images in horizontal manner
  Container createHorizontalGalleryContainer() {
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: setImages('images/scene1.jpg')),
            Expanded(child: setImages('images/scene2.jpg')),
            Expanded(child: setImages('images/scene9.jpg')),
            Expanded(child: setImages('images/scene10.jpg')),
          ],
        ));
  }

  /// Container with 4 images
  Container createSquaredContainer() {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(color: Colors.black26),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                decoration: setBoxDecoration(),
                child: setImages('images/scene1.jpg'),
              )),
              Expanded(
                child: Container(
                  decoration: setBoxDecoration(),
                  child: setImages('images/scene6.jpg'),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                decoration: setBoxDecoration(),
                child: setImages('images/scene5.jpg'),
              )),
              Expanded(
                child: Container(
                  decoration: setBoxDecoration(),
                  child: setImages('images/scene4.jpg'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Scaffold createGalleryScaffold() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Gallery'),
        ),
        body: createSquaredContainer());
  }

  @override
  Widget build(BuildContext context) {
    return createGalleryScaffold();
  }
}
