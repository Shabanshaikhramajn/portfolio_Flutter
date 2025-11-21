import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
       child: ConstrainedBox(
           constraints: const BoxConstraints(maxWidth: 1200),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Shaban Shaikh', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
              Row(
                children: [
                  TextButton(onPressed: (){}, child: const Text('About')),
                  TextButton(onPressed: (){}, child: const Text('Projects')),
                  TextButton(onPressed: (){}, child: const Text('Contact'))
                ],
              )
           ],
         ),
       ),
    );
  }
}
