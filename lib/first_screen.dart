import 'package:di_mixing_app/all_animal.dart';
import 'package:di_mixing_app/animal.dart';
import 'package:di_mixing_app/employee.dart';
import 'package:di_mixing_app/secnd_screen.dart';
import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AllAnimal allAnimal = AllAnimal();
    return Scaffold(
      appBar: AppBar(
        title:   Text(S.of(context).title),

        // title: Text("FIrst Sreen"),
        backgroundColor: Colors.blue,
        
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecndScreen()));


          }, child:

          Text("next screen")),
          Text(allAnimal.animalrun()),
          Text(allAnimal.handelControl()),
          Text(Employee().name),
          Text(Employee().id)
        ],
      ),
      
    );
  }
}
