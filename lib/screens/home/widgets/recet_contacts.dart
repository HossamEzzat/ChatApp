import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/user.dart';
 class RecentContacts extends StatelessWidget {

   final contactlist=User.generteuser();

   @override
   Widget build(BuildContext context) {
     return Container(
       height: 50,
       margin: const EdgeInsets.symmetric(vertical: 25),
       padding: const EdgeInsets.only(left: 25),

       child: Row(
         children: [
           Container(
             padding: const EdgeInsets.all(10),
             margin: EdgeInsets.only(right: 15),
             decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
               shape: BoxShape.circle,

             ),
             child: const Icon(
                 Icons.search,size: 30,color: Colors.white,
             ),
           ),
           Expanded(
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
                 itemBuilder:  (_,index)=>
                     Container(
                   padding: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     color: contactlist[index].bgColor,
                     shape: BoxShape.circle,
                   ),
                   child: Image.asset(contactlist[index].iconUrl,width: 40,),
                 ),
                 separatorBuilder: (_,index)=>const SizedBox(width: 15,),
                 itemCount: contactlist.length),
           ),
           
         ],
       ),
     );
   }
 }
