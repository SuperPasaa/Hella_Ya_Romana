// ignore_for_file: prefer_const_constructors

import 'package:abdo/home_page.dart';
import 'package:flutter/material.dart';

class ShowProperty extends StatefulWidget {
  const ShowProperty({super.key});

  @override
  State<ShowProperty> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Show Properity',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Showing Result',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Spacer(
            flex: 10,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {

                  Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomePage() ,),) ;
                },
                icon: Icon(
                  Icons.arrow_left_outlined,
                ),
                label: Text(
                  'Back',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
              )
            ],
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}