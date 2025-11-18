import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController =  ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body: SafeArea(
          child:  Column(
            children: [
              NavBar(scro),
              Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                       Padding(padding: EdgeInsets.symmetric(vertical: 48, horizontal: 30),
                         child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 1100 ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Expanded(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       AnimatedHeding(
                                         lines: const ["Hi I\'m Shaban Shaikh, I build Flutter apps"]
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
                                   )


                               ),
                               if(width> 900)...[
                                 const SizedBox(width: 24),
                                 ClipRRect(
                                   borderRadius: BorderRadius.circular(16),
                                   child: Image.network(
                                     'https;//via.placeholder.com/300x300.png?text=Your+Photo',
                                     width: 300,
                                     height: 300,
                                     fit: BoxFit.cover,
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
