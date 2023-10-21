import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learninglangaugesapp/models/numbersmodels.dart';
//import 'package:audioplayers/audioplayers.dart';
class Category extends StatelessWidget {
  Category({Key? key, this.text, this.color, this.onTap}) : super(key: key);
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: 250,

        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}






//*********************************************************
class item extends StatelessWidget {
  item({Key? key, required this.numb,required this.color}) : super(key: key);
final NumbersPage numb;
final Color  color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          width: double.infinity,
          height: 80,
          child: Row(
            children: [
              Container(
                  color: Color(0xffFFF6DC),
                  child: Image.asset(numb.image)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(numb.jpName,style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text(numb.enName,style: TextStyle(color: Colors.white,fontSize: 18)),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                  onPressed: (){
                   // playing audio with hardware part:
                    final player = AudioPlayer();
                    player.play(AssetSource(numb.sound));
                  },
                  icon: Icon(Icons.play_arrow,
                      color: Colors.white,
                      size: 32,),
                ),
              ),
            ],
          ),


        ),
        SizedBox(height: 1,)
      ],
    );
  }
}
//to play anything in flutter based on your phone hardware you should write this part native code :
  //*************************************************


class itemPhrase extends StatelessWidget {
  itemPhrase({Key? key, required this.numb,required this.color}) : super(key: key);
  final NumbersPage numb;
  final Color  color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 80,
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(numb.jpName,style: TextStyle(color: Colors.white,fontSize: 18),),
                Text(numb.enName,style: TextStyle(color: Colors.white,fontSize: 18)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: ()async{
                //playing audio with hardware part:
                   final player = AudioPlayer();
                   await player.setSource(AssetSource('sounds/numbers/number_one_sound.mp3'));
              },
              icon: Icon(Icons.play_arrow,
                color: Colors.white,
                size: 32,),
            ),
          ),
        ],
      ),


    );
  }
}
