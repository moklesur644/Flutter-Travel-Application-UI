import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/widgets/home_app_bar.dart';

import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var category = [
      'Best places',
      'Most Visited',
      'Favorites',
      'New Added',
      'Hotels',
      'Restaurants'
    ];

    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeAppBar(),
      ),
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context,int index){
                              return InkWell(
                                onTap: (){},
                                child: Container(
                                  width: 160,
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                      // city city.jpg
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/city${index + 1}.jpg"),
                                          fit: BoxFit.cover,
                                          opacity: 0.7
                                      )
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment : Alignment.topRight,
                                        child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 30,),
                                      ),
                                      Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text('City Name',style:
                                          TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                          ),),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                  )
                ],
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      for(int i=0;i<6;i++)
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 4
                            )
                          ]
                        ),
                        child: Text(category[i],style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => DetailsScreen()));
                              },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/city${index + 1}.jpg"),
                                      fit: BoxFit.cover,
                                      opacity: 0.8
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('City',style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20
                                ),),
                                Icon(Icons.more_vert,size: 30,),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 20,),
                              Text('4.5',style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      )
      ),
    );

  }
}
