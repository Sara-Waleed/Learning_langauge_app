import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/models/numbersmodels.dart';
import 'package:learninglangaugesapp/shared/shared_components.dart';

class Numbers extends StatelessWidget {
  Numbers({Key? key}) : super(key: key);
  final  List <NumbersPage> numbers= [
    NumbersPage(
      jpName: "ichi",
      enName:"one " ,
      image: "assets/images/Numbers/number_one.png",
      sound:"sounds/numbers/number_one_sound.mp3",),
    NumbersPage(
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/Numbers/number_two.png',
      sound:"sounds/numbers/number_two_sound.mp3"
    ),
    NumbersPage(
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/Numbers/number_three.png',
      sound:"sounds/numbers/number_three_sound.mp3",

    ),
    NumbersPage(
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/Numbers/number_four.png',
      sound:"sounds/numbers/number_four_sound.mp3",
    ),
    NumbersPage(
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/Numbers/number_five.png',
      sound:"sounds/numbers/number_five_sound.mp3",
    ),
    NumbersPage(
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/Numbers/number_six.png',
      sound:"sounds/numbers/number_six_sound.mp3"
    ),
    NumbersPage(
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/Numbers/number_seven.png',
      sound:"sounds/numbers/number_seven_sound.mp3",
    ),
    NumbersPage(
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/Numbers/number_eight.png',
      sound:"sounds/numbers/number_eight_sound.mp3",
    ),
    NumbersPage(
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/Numbers/number_nine.png',
      sound:"sounds/numbers/number_nine_sound.mp3"
    ),
    NumbersPage(
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/Numbers/number_ten.png',
      sound:"sounds/numbers/number_ten_sound.mp3",
    ),

];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: Text("Numbers"),

      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return item(
            color: Color(0xffEF9235),
              numb: numbers[index]);

        },
        itemCount: numbers.length,

      ),

    );
  }



//   List<Widget> getList(List <NumbersPage> numbers){
//     List<item> itemsList =[];
//     for(int i=0;i<numbers.length;i++){
//       itemsList.add(item(numb: numbers[i]));
//
//     }
//
// return itemsList;
//   }


}

