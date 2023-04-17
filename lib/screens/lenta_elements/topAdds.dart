import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TopAdds extends StatelessWidget {
  const TopAdds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          rowImage(),
          rowImage(),
          rowImage(),
          rowImage(),
        ],
      ),
    );
  }
}
class rowImage extends StatelessWidget {
  const rowImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(3),
      child: Container( // media/Ellipse 150.png
        width: 110,
        height: 110,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [HexColor('#7567CB'), HexColor('#C973B6'),HexColor('#FECF00')],
          ),
        ),
        child:Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Image.asset('media/Ellipse 150.png',fit: BoxFit.contain,),
        ),
      ),
    );
  }
}

