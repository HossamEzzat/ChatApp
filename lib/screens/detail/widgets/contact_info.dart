import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/message.dart';


class ContactInfo extends StatelessWidget {
final Message message;
 const ContactInfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text("${message.user.firstName}\n${message.user.lastName}",
           style: const TextStyle(
             fontSize:26 ,
             height: 1.2,
             color:Colors.white ,
             fontWeight: FontWeight.bold

           ),),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               _BuildCallButton(Icons.phone),
               const SizedBox(width: 10,),
               _BuildCallButton(Icons.video_call),
             ],
           )


         ],
       ),
    );
  }

  _BuildCallButton(IconData icond) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.3),
      ),
      child: Icon(
        icond,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
