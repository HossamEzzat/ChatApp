import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: ()=>Navigator.of(context).pop(),
            child:  Text(
              "<  Back",style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.5),

            ),
            ),

            ),
            TextButton(onPressed: (){},
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            )

            ),
          ],
       ),
    );
  }
}
