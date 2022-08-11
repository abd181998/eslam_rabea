import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileContact extends StatefulWidget {
  const MobileContact({Key? key}) : super(key: key);

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  @override
  var phone = '+0201146924909';
  var whatsAppUrl ="whatsapp://send?phone=+0201146924909";

  final Uri _url = Uri.parse('https://www.facebook.com/profile.php?id=100019559312919');

  Future<void> _facebook() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
      children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  launch(whatsAppUrl);
                });

              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[200]
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.whatsapp,size: 60,color: Colors.green,),
                    Text('WhatsApp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: GestureDetector(
              onTap: _facebook,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[200]
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook,size: 60,color: Colors.blue,),
                    Text('Facebook',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  launch("tel://$phone");
                });
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[50]
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.call,size: 60,color: Colors.green,),
                    Text('Call Me',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),

]
    )
    );

  }
}



