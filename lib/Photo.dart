import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Data.dart';

class Photo extends StatefulWidget {
  List img;
  int index;
  String cate;

 Photo(this.img,this.index,this.cate);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.orange,title:Text("${widget.cate}",style: TextStyle(fontSize: 36,color: Colors.black),)),
      body: PageView.builder(
        controller: PageController(initialPage: widget.index),
        itemCount: widget.img.length,
        itemBuilder: (context, index) {
        return Container(height: double.infinity,width: double.infinity,child: Image.asset("${widget.img[index]}"),);
      },),
    );
  }
}
