import 'package:flutter/cupertino.dart';

class BlockHeader extends StatelessWidget {
  String title;
  BlockHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
              fontSize: screenWidth * 0.06, fontWeight: FontWeight.w500),
        ));
  }
}
