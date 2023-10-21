
import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/models/numbersmodels.dart';
import 'package:learninglangaugesapp/shared/shared_components.dart';

class FamilyNumbers extends StatelessWidget {
  FamilyNumbers({Key? key}) : super(key: key);
  final  List <NumbersPage> numbers= [
    NumbersPage(
      jpName: 'chich',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/familt_members/father.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/familt_members/mother.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/familt_members/daughter.mp3',
    ),
    NumbersPage(
      sound: 'sounds/family_members/father.mp3',
      jpName: 'chich',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/familt_members/grand father.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/familt_members/grand mother.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'older_brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/familt_members/older bother.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'older_sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/familt_members/younger brohter.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'younger_brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/familt_members/younger brohter.mp3',
    ),
    NumbersPage(
      jpName: 'chich',
      enName: 'younger_sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'familt_members/younger brohter.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: Text("FamilyMembers"),

      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return item(
              numb: numbers[index],
            color: Color(0xff558B37),

          );

        },
        itemCount: numbers.length,

      ),

    );
  }


}

