import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height *.6,
       width: Get.width,
       child: SingleChildScrollView(
           child: Row(
             children: [
               Container(

               )
             ],
           )
       ),
    );
  }
}
