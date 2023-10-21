
import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/models/numbersmodels.dart';
import 'package:learninglangaugesapp/shared/shared_components.dart';

class PhrasesPage  extends StatelessWidget {
  PhrasesPage ({Key? key}) : super(key: key);
  final  List <NumbersPage> numbers= [
    NumbersPage(
      jpName: '',
      enName: 'Are you coming?',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/are_you_coming.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: "Don't forget to subscribe ",
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/dont_forget_to_subscribe.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'How are you feeling?',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/how_are_you_feeling.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'I love Anime',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/i_love_anime.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'I love programming',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/i_love_programming.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'programming is easy',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/programming_is_easy.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'What is your name?',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'where are you going?',
      image: '',
      sound: 'sounds/phrases/where_are_you_going.mp3',
    ),
    NumbersPage(
      jpName: '',
      enName: 'Yes, I am coming',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/phrases/i_love_anime.mp3',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: Text("Phrases"),

      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              itemPhrase(
                numb: numbers[index],
                color: Color(0xff50ADC7),

              ),
              SizedBox(height:1 ,)
            ],
          );

        },
        itemCount: numbers.length,

      ),

    );
  }


}

