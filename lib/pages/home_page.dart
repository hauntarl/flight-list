import 'package:flutter/material.dart';

import '../home_page_widgets/top_widget.dart';
import '../home_page_widgets/bottom_widget.dart';
import '../home_page_widgets/custom_bottom_navigation_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              height: size.height / 2,
              width: size.width,
              child: HomePageTopWidget(),
            ),
            HomePageBottomWidget(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationWidget(),
    );
  }
}
