import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: (){},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.sort_rounded,size: 28,),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on,color: Colors.red.withOpacity(0.7),),
              Text("New York USA",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18
              ),)
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6
                  )
                ],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.search,size: 28,),
            ),
          )
        ],
      ),
    );
  }
}
