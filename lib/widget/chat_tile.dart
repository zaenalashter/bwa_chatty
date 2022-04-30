import 'package:flutter/material.dart';
import 'package:bwa_chatty/pages/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(this.imageUrl, this.name, this.text, this.time, this.unread);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
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
                name,
                style: tittleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subTittleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subTittleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTittleTextStyle.copyWith(
              color: blackColor,
            ),
          )
        ],
      ),
    );
  }
}
