
import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/models/numbersmodels.dart';
import 'package:learninglangaugesapp/shared/shared_components.dart';
class ColorPage extends StatelessWidget {
  ColorPage({Key? key}) : super(key: key);
  final  List <NumbersPage> numbers= [
    NumbersPage(

      jpName: '',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'dusty_yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty-yellow.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.mp3',
    ),
    NumbersPage(

      jpName: '',
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
      sound: 'assets/sounds/colors/yellow.mp3',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: Text("Colors"),

      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return item(
            numb: numbers[index],
            color:const Color(0xff79359F),

          );

        },
        itemCount: numbers.length,

      ),

    );
  }


}

