
import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/string.dart';

class FooterContainer extends StatelessWidget {
  final double width;
  const FooterContainer(this. width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(AppString.stringFooter,style: TextStyle(fontSize: width<700?10:14),),
        ],
      ),
    );
  }
}