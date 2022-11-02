import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class CustomCardList2 extends StatelessWidget {
  const CustomCardList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://wallpapersmug.com/download/3840x2400/60ad05/winter-sunset-illustration.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: AlignmentDirectional.centerEnd,
            child: const Text('The Best Wallpaper of Landscape'),
          )
        ],
      ),
    );
  }
}
