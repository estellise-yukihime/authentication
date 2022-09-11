import 'package:flutter/material.dart';

class Logo1 extends StatelessWidget {
  const Logo1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.hardEdge,
            height: double.infinity,
            width: double.infinity,
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/logo/logo.png'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
              ),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
