//import 'dart:async';

import 'package:add_me/screens/book_list/view/view.dart';
import 'package:add_me/widgets/button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  // void initState() {
  //   Timer(
  //       Duration(seconds: 4),
  //       () => Navigator.of(context).pushReplacement(MaterialPageRoute(
  //             builder: (context) => BookListView(),
  //           )));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Book.png',height: 150,),
          CustomButton(
              label: 'Let\'s Start',
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BookListView(),
                ));
              })
        ],
      ),
    );
  }
}
