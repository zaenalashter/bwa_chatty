import 'package:bwa_chatty/pages/theme.dart';
import 'package:bwa_chatty/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
          color: whiteColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  '/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: tittleTextStyle,
                      ),
                      ChatTile(
                        '/images/friend1.png',
                        'Joshuer',
                        'Sorry, you’re not my ty...',
                        'Now',
                        true,
                      ),
                      ChatTile(
                        '/images/friend2.png',
                        'Gabriella',
                        'I saw it clearly and mig...',
                        '2:30',
                        false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: tittleTextStyle,
                      ),
                      ChatTile(
                        '/images/group1.png',
                        'Jakarta Fair',
                        'Why does everyone ca...',
                        '11:11',
                        false,
                      ),
                      ChatTile(
                        '/images/group2.png',
                        'Angga',
                        'Why does everyone ca...',
                        '7:11',
                        true,
                      ),
                      ChatTile(
                        '/images/group3.png',
                        'Bentley',
                        'Why does everyone ca...',
                        '6:11',
                        true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
