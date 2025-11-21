import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/animated_heading.dart';
import 'package:personal_portfolio/widgets/nav_bar.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body: SafeArea(
          child:  Column(
            children: [
              NavBar(),
              Expanded(
                  child: SingleChildScrollView(
                  child: Column(
                      children: [
                       Padding(padding: EdgeInsets.symmetric(vertical: 48, horizontal: 30),
                         child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 100 ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   AnimatedHeading(
                                     lines: const ["Hi I\'m ShabanAli Shaikh, I build Flutter apps"]
                                   ),
                                   const SizedBox(height: 24),
                                   Wrap(
                                     spacing: 12,
                                     children: [
                                       ElevatedButton(onPressed: (){} ,
                                           child: const Text('View Projects')
                                       ),
                                       OutlinedButton(
                                         onPressed: () {},
                                         child: const Text('Contact Me'),
                                       ),
                                     ],
                                   )
                                 ],
                               ),
                               if(width> 900)...[
                                 const SizedBox(width: 24),
                                 Container(
                                   height: Get.height *.4,
                                   width: Get.height *.4,
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(16),
                                     child: Image.asset('assets/person.jpg')
                                   ),
                                 )
                               ]
                             ],
                           ),
                        ),
                       ),
                      //   projects perview
                      //   about
                      //   contact
                        const SizedBox(height: 120),
                        const Text("Footer- Shaban shaikh 2025"),
                        const SizedBox(height: 40)
                      ],
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}
