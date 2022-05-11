import 'package:chatapp/screens/detail/widgets/contact_info.dart';
import 'package:chatapp/screens/detail/widgets/detail_app.dart';
import 'package:chatapp/screens/detail/widgets/detail_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/colors.dart';
import '../../models/message.dart';

class DetailPage extends StatelessWidget {

final Message message;
DetailPage(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kPrimary,
      body:Column(
        children:  [
         DetailAppBar(),
       ContactInfo(message),
          Expanded(child: DetailMessages()),
        ],
      )
    );
  }
}
