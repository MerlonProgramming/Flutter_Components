import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class CustomCardList extends StatelessWidget {
  const CustomCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.account_box,
            color: AppTheme.primary,
          ),
          title: Text('Title Card 🂡'),
          subtitle: Text(
              'Proin vel luctus tortor. Nullam vitae tortor aliquet, pretium dui et, lobortis ante. Nunc porta vel lorem et interdum. Donec volutpat finibus risus.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

//TextButton(onPressed: () {}, child: const Text('Cancel'), style: TextButton.styleFrom(primary: AppTheme.cancel,),            
//TextButton(onPressed: () {}, child: const Text('Ok'), style: TextButton.styleFrom(primary: AppTheme.secundary,),