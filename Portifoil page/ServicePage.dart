import 'package:flutter/material.dart';
class servicepage extends StatefulWidget {
  const servicepage({Key? key}) : super(key: key);

  @override
  State<servicepage> createState() => _servicepageState();
}

class _servicepageState extends State<servicepage> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark =Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 15,),
        Center(
            child: Text("What I can do ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: isDark?Colors.white: Colors.black),
            )
        ),
        SizedBox(height: 5,),
        Container(
          width: 400,
          height: 50,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: Text("ive worked in startups and collaborated with talented people to creat digital  products for both business and consumer use . ",style: TextStyle(fontSize: 12,color: isDark?Colors.white: Colors.black),),
          )
          ,

        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          color: isDark?Colors.grey[600]:Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 18,),
                          Icon(Icons.developer_mode,size: 30,color:isDark?Colors.white:Colors.black,),
                          SizedBox(height: 18,),
                          Text("ios and android Dev",style: TextStyle(color: isDark?Colors.white: Colors.black),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                            child:Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("Flutter",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("python",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                              ],
                            ),


                          ),


                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          color: isDark?Colors.grey[600]:Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 18,),
                          Icon(Icons.design_services_outlined,size: 30,color:isDark?Colors.white:Colors.black,),
                          SizedBox(height: 18,),
                          Text("UI/UX",style: TextStyle(color: isDark?Colors.white: Colors.black),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                            child:Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("Figma",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("Lightroom",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                              ],
                            ),


                          ),


                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          color: isDark?Colors.grey[600]:Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 18,),
                          Icon(Icons.miscellaneous_services,size: 30,color:isDark?Colors.white:Colors.black,),
                          SizedBox(height: 18,),
                          Text("IOT machine",style: TextStyle(color: isDark?Colors.white: Colors.black),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                            child:Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("python",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.build,size: 15,),
                                    Text("Arduino",style: TextStyle(fontSize: 15,color: isDark?Colors.white: Colors.black),)

                                  ],
                                ),
                              ],
                            ),


                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),




      ],
    );
  }
}
