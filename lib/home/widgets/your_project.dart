import 'package:flutter/material.dart';

class YourProject extends StatelessWidget {
  const YourProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/project.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
        ),
      ],
    );
  }
}
