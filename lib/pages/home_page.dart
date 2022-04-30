import 'package:bwa_chatty/pages/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
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
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/friend1.png',
                          height: 55,
                          width: 55,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joshsuer',
                              style: tittleTextStyle,
                            ),
                            Text(
                              'Sorry, you’re not my ty...',
                              style: subTittleTextStyle,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          'Now',
                          style: subTittleTextStyle.copyWith(
                            color: blackColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
