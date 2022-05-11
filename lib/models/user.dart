import 'package:flutter/material.dart';

class User{

  late num id;
  String  firstName;
  String  lastName;
  String  iconUrl;
  Color   bgColor;
  User(
      this.bgColor,this.firstName,this.iconUrl,this.id,this.lastName
      );
  static List<User> generteuser(){
    return [
      User(const Color(0xfffdbec8),"Gana",'assets/images/user1.png',1,"Ahmed"),
      User(const Color(0xB9DB0F0F),"Taha",'assets/images/user2.png',2,"Mohamed"),
      User(const Color(0xffa8e4f2),"Moka",'assets/images/user3.png',3,"Ahmed"),
      User(const Color(0xffffe5a7),"Omar",'assets/images/user4.png',4,"Mohamed"),
      User(const Color(0xffc3c1e6),"Heba",'assets/images/user5.png',5,"Esam"),
      User(const Color(0x0fffd95a),"Hossam",'assets/images/user6.png',6,"Ezzat"),

    ];
  }



}