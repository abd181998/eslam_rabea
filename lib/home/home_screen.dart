import 'package:eslam_rabea/home/widgets/about/disktop.dart';
import 'package:eslam_rabea/home/widgets/about/mobile.dart';
import 'package:eslam_rabea/home/widgets/contact/disktop_contact.dart';
import 'package:eslam_rabea/home/widgets/contact/mobile_contact.dart';
import 'package:eslam_rabea/home/widgets/your_dreams.dart';
import 'package:eslam_rabea/home/widgets/your_project.dart';
import 'package:eslam_rabea/home/widgets/your_skills.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      key: scaffoldKey,
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'About',
                ),
              ),
              Tab(
                child: Text(
                  'My Projects',
                  maxLines: 2,
                  style: TextStyle(
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'My Dreams',
                  maxLines: 2,
                ),
              ),
              Tab(
                child: Text(
                  'My Skills',
                  maxLines: 2,

                ),
              ),
              Tab(
                child: Text(
                  'My Contact',
                  maxLines: 2,
                  style: TextStyle(
                fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Builder(builder: (BuildContext context){
              if(MediaQuery.of(context).size.width.toInt() <= 560) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 0.7
                  ),
                  child: const About_Mobile(),

                );
              }
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 1.25
                  ),
                  child: const About_Disktop());
            }),
            const YourProject(),
            const YourDreams(),
            const YourSkills(),
            Builder(builder: (BuildContext context){
              if(MediaQuery.of(context).size.width.toInt() <= 560) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 0.7
                  ),
                  child: const MobileContact(),

                );
              }
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 1.25
                  ),
                  child:  Disktp_Contact());
            }),
          ],
        ),
      ),
    );
  }
}
