import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class About_Disktop extends StatelessWidget {
  const About_Disktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/img.jpg',),
                    fit: BoxFit.fill
                ),
              ),

            ),
          )),
Expanded(
  flex: 2,
  child:Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: const [
        ListTile(
          leading: Text('Name:  '),
          title: Text('Eslam Rabea Ali'),
        ),
        ListTile(
          leading: Text('AGE:  '),
          title: Text('23 years old'),
        ),
        ListTile(
          leading: Text('Adress:  '),
          title: Text('Beni Suef Governorate',
            maxLines: 3,
          ),
        ),
        ListTile(
          leading: Text('phone:  '),
          title: Text('01146924909',

            maxLines: 2, ),
        ),
        ListTile(
          leading: Text('email:  '),
          title: Text('eslamrapie3110@gmail.com',

            maxLines: 2, ),
        ),
        ListTile(
          title: AutoSizeText(
            'The Egyptian Korean University, Networking Department',
            style: TextStyle(fontSize: 16),
            minFontSize: 18,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
          leading: Text('University'),
        ),
      ],
    ),
  ),
)
        ],
      ),
    );
  }
}
