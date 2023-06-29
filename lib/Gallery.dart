import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Data.dart';
import 'Photo.dart';

class Gallery extends StatefulWidget {
  int index;

  Gallery(this.index);

  @override
  State<Gallery> createState() => _GallaryState();
}

class _GallaryState extends State<Gallery> {
  List img=[];
  String cate="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    img=Data.all[widget.index];
    cate=Data.Title[widget.index];
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("$cate",
              style: TextStyle(fontSize: 36, color: Colors.black),
            )),
        body: GridView.builder(
          itemCount: img.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Photo(img, index,cate);
                  },
                ));
              },
              child: Image.asset(
                "Assets/Images/${widget.index + 1}/${index + 1}.png",
                fit: BoxFit.fill,
              ),
            );
          },
        ));
  }
}
