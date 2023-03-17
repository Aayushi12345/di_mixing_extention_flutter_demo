import 'package:di_mixing_app/di/locator.dart';
import 'package:di_mixing_app/dummy_data.dart';
import 'package:flutter/material.dart';

class SecndScreen extends StatefulWidget {
  const SecndScreen({Key? key}) : super(key: key);

  @override
  State<SecndScreen> createState() => _SecndScreenState();
}

class _SecndScreenState extends State<SecndScreen> {
  String myText ="";

  @override
  Widget build(BuildContext context) {
void getText( String text)
{

  setState(() {
    myText =text;
  });
}

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text(myText),
          TextButton(onPressed: () {
            String text = locator.get<DummyData>().showDummyData();
            print(text);
            getText(text);


          }, child: Text("Show Di")),
          Text('Male'.Male()),
          Text('Female'.Female()),
          Text('Other'.Other())
        ],
      ),
    );
  }
}
extension changeMale  on String{

  String Male(){
    return 'M';
  }
  String Female(){
    return 'F';
  }
  String Other(){
    return 'O';
  }
}