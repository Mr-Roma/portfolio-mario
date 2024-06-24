import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Image.asset('assets/images/container.png')),
          Expanded(
            child: Column(
              children: [
                Text(
                    'Hello I am Romario, from Timor-Leste. Currently, continuing my study in Indonesia'),
                Text(
                    'majoring Computer Science in Telkom University, Bandung Indonesia. '),
                Text(
                    'I am someone, who is passionate about technology and the social life.'),
                Text(
                    ' Thats why I am learning coding, because I love to learn'),
                Text('new things everyday.')
              ],
            ),
          )
        ],
      ),
    );
  }
}
