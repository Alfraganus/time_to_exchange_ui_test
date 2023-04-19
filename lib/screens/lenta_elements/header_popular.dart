import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderPopular extends StatelessWidget {
  const HeaderPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
              child: Image.asset('media/sort-ascending 1.png',fit: BoxFit.fitHeight, height: 26,)
          ),
          Text('Популярные',style: TextStyle(
            fontSize: 20,
            color: HexColor('#7567CB')
          ))
        ],
      ),
    );
  }
}
