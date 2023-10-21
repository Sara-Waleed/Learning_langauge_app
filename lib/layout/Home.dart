import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/layout/FamilyNumbers.dart';
import 'package:learninglangaugesapp/layout/PhrasesPage.dart';
import 'package:learninglangaugesapp/layout/colors.dart';
import 'package:learninglangaugesapp/shared/shared_components.dart';

import 'Numbers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  Numbers();
                }));
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),
            SizedBox(height: 10,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  FamilyNumbers();
                }));
              },
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
            ),
            SizedBox(height: 10,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            SizedBox(height: 10,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
          ],
        ),
      ),
    );
  }
}
