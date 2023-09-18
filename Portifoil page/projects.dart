import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark =Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Center(
            child: Text("Projects",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: isDark?Colors.white: Colors.black),),
          ),
        SizedBox(height: 10,),
        Container(
          width: 400,
          height: 50,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: Text("Since the beging of my journy as a designer and developer , i have created digital products for business and consumer use. this is a littile bit . ",style: TextStyle(fontSize: 12,color: isDark?Colors.white: Colors.black),),
          )
          ,

        ),
        SizedBox(
          height: 420,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color:  isDark?Colors.white:Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Image.asset("img3.jpg",
                fit: BoxFit.cover,),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color:  isDark?Colors.white:Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Image.asset("img4.jpg",fit: BoxFit.cover,),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: isDark?Colors.white:Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Image.asset("img10.jpg",fit: BoxFit.cover,),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: isDark?Colors.white:Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Image.asset("img6.jpg",fit: BoxFit.cover,),
              ),

            ],
          ),
        ),
        Center(
          child: Text("Lets try my service now !",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: isDark?Colors.white: Colors.black),),
        ),
        SizedBox(height: 15,),
        Container(
          width: 450,
          height: 30,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: Text(" Lets work togather and make everything super cute and  useful . ",style: TextStyle(fontSize: 14,color: isDark?Colors.white: Colors.black),),
          )
          ,

        ),
        SizedBox(height: 15,),
        Center(
          child: Container(
            width: 110,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isDark?Colors.grey[600]:Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  spreadRadius: 1
                )

              ]

            ),
            child: Center(
              child: Text("Get started",style: TextStyle(fontSize: 13,color:isDark?Colors.white:Colors.black),),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



          ],
        )

        

      ],
    );
  }
}
