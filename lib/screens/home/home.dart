import 'package:chatapp/screens/home/widgets/messages.dart';
import 'package:chatapp/screens/home/widgets/recet_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/colors.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
         body:Container(
           padding: EdgeInsets.only(
             top: MediaQuery.of(context).padding.top,
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:  [
               Padding(
                 padding: EdgeInsets.only(left: 25),
                 child: Text(
                   "Chat with\nyour friends",style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 28,

                 ),
                 ),
               ),
               RecentContacts(),
               Messages(),


             ],
           ),
         ),
      ),
    );
  }
}
