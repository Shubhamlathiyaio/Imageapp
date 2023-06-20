import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageapp/Data.dart';

class Photo extends StatefulWidget {
  int ind, index;

 Photo(this.ind,this.index);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,title:Text(Data.Title[widget.ind],style: TextStyle(fontSize: 36,color: Colors.black),)),
      body: PageView.builder(
        controller: PageController(initialPage: widget.index),
        itemCount: Data.min[widget.ind],
        itemBuilder: (context, index) {
        return Container(height: double.infinity,width: double.infinity,child: Image.asset("Assets/Images/${widget.ind+1}/${index+1}.png"),);
      },),
    );
  }
}
