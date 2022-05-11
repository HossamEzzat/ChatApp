import 'package:chatapp/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
var users = User.generteuser();
var me=User(const Color(0x0fffd95a), "Hossam",'assets/images/user6.png', 5,"Ezzat" );
class Message {

  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user,
      this.lastMessage,
      this.lastTime,
      {this.isContinue = false});

  static List<Message> generteHomePageMessage() {
    return [
      Message(users[0],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),
      Message(users[1],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),
      Message(users[2],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),
      Message(users[3],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),
      Message(users[4],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),
      Message(users[5],"Today is the anniversary of the publication of Robert Frost’s iconic poem Stopping by Woods on a Snowy Evening","2:15",isContinue: true),


    ];
  }
  static List<Message> generateMessageFromUser(){
    return[
      Message(
        users[5],
        "Hi,How are you now?",
        '13:20'
      ),Message(
          me,
          "I am fine ,What about you?",
          '13:21'
      ),
      Message(
          users[5],
          "I am happy to talk to you , I missed you",
          '13:24',isContinue: true,
      ),
      Message(
          me,
          "Me too my friend",
          '13:30'
      ),
      Message(
          users[5],
          "lol",
          '2:00'
      ), Message(
          users[5],
          "Hi,How are you now?",
          '13:20'
      ),Message(
          me,
          "I am fine ,What about you?",
          '13:21'
      ),
      Message(
        users[5],
        "I am happy to talk to you , I missed you",
        '13:24',isContinue: true,
      ),
      Message(
          me,
          "Me too my friend",
          '13:30'
      ),
      Message(
          users[5],
          "lol",
          '2:00'
      ),


    ];
  }




}