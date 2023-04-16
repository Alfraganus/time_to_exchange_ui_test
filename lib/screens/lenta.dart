import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:time_to_exchange_by_alfraganus/common_widgets/block_header.dart';
import '../appBar.dart';
import '../settings/colors.dart';
import 'lenta_elements/searchBar.dart';

class Lenta extends StatelessWidget {
  const Lenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Мопеды и скутеры ',isActive: true,widget: Image(image: AssetImage('media/profilepic.png')),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7           ),
        child: Column (
          children: [
            SearchBar(),
            BlockHeader(title: 'Успейте обменяться')
          ],
        ),
      ),
    );
  }
}
