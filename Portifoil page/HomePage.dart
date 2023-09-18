import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark =Theme.of(context).brightness == Brightness.dark;
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Hi there,welcome to my space",style: TextStyle(fontSize:15),),
                        Icon(Icons.hail,size: 15,)
                      ],
                    ),
                    Text("Im sajad mohamed ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: isDark?Colors.white: Colors.black ),),
                        SizedBox(width: 5,),
                        AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText("flutter developer",textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          TyperAnimatedText("freelancer",textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          TyperAnimatedText("IOT",textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                        ],
                          totalRepeatCount: 20,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,

                        )
                      ],
                    )

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset("img1.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ),
                  ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 300,
                child: Text("Freelancer provideing services for programming and design content needs. to join me \s down below and lets get started " ,style: TextStyle(fontSize: 12,color: isDark?Colors.white: Colors.black),)),
            SizedBox(height: 10,),
            Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isDark?Colors.grey[600]:Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1
                  )
                ]

              ),
              child: Center(
                child: Text("Download Cv",style: TextStyle(fontSize: 13,color:  isDark?Colors.white:Colors.black),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
