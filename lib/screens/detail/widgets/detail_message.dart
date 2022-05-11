

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/message.dart';

class DetailMessages extends StatelessWidget {
  final myid=5;
  final list=Message.generateMessageFromUser();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
             padding: const EdgeInsets.fromLTRB(25,50,25,80),
            decoration:  const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(30) ,
                topLeft: Radius.circular(30) ,
              )
            ),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder:(context,index)=> list[index].user.id==myid?_buildReciev( list[index]):_buildSend( list[index]),
                separatorBuilder: (_,index)=>const SizedBox(height: 20,),
                itemCount: list.length),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              child:Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: kGreyLight.withOpacity(0.2),
                      filled: true,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                      hintText: "Type here....",
                      helperStyle: TextStyle(
                        color: kPrimary.withOpacity(0.3),fontSize: 14,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: kPrimary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.send_outlined,color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ) ,
            ),
          )

        ],
      ),
    );
  }

  _buildReciev(Message message) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(
         message.lastTime,style: const TextStyle(
         fontSize: 12,color:kGreyLight ,
       ),
       ),
       Container(
         padding: EdgeInsets.all(12),
         decoration: const BoxDecoration(
           color: kPrimaryLight,
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(15),
             topRight: Radius.circular(15),
             bottomLeft: Radius.circular(15),
           )
         ),
         child: ConstrainedBox(
           constraints: const BoxConstraints(
             maxHeight: 180,
           ),
           child: Text(message.lastMessage,style:
           const TextStyle(
             height: 1.5,
           ),),
         ),
       )
     ],
   );
  }
  _buildSend(Message message) {
  return Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(

        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: message.user.bgColor,shape: BoxShape.circle,
            ),
            child: Image.asset(message.user.iconUrl,width: 30,),
          ),
          const SizedBox(width: 8,),
          Container(
            padding: EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: kPrimaryDark.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 180,
              ),
              child: Text(message.lastMessage,
                style:
              const TextStyle(
                height: 1.5,
              ),),
            ),
          ),

          Text(
            message.lastTime,style: const TextStyle(
            fontSize: 12,color:kPrimaryDark ,
          ),
          ),

        ],

      ),


    ],
  );
  }


}
