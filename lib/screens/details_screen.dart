import 'package:flutter/material.dart';

import '../widgets/details_app_bar.dart';
import '../widgets/details_bottom_navigation_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/city6.jpg'),
              fit: BoxFit.cover,
              opacity: 0.7
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(preferredSize: Size.fromHeight(90),
            child: DetailsAppBar()),
        bottomNavigationBar: DetailsBottomNavigationBar(),
      ),
    );
  }
}
