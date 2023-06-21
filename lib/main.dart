import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Data.dart';
import 'Gallery.dart';

void main()
{
  runApp(MaterialApp(home: Homepage(),debugShowCheckedModeBanner: false,));
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.orange,title: Text("Images",style: TextStyle(fontSize: 36,color: Colors.black)),),
      body: ListView.builder(
        itemCount: Data.Title.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Gallery(index);
            },));
          },
            tileColor: Colors.orange,
            leading: CircleAvatar(backgroundImage: AssetImage("Assets/Images/${index+1}/1.png")),
            title: Text(Data.Title[index],style: TextStyle(fontSize: 24),),
            subtitle: Text("Total images = ${Data.all[index]}"),
          ),
        );
      },)
    );
  }
}
