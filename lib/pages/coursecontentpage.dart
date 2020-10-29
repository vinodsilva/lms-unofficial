import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

void launchWebsite(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {
    print("Couldn't launch the url");
  }
}

class CourseContentPage extends StatelessWidget with NavigationStates  {

  final String Maths1 = "https://drive.google.com/drive/folders/1H1ejBMIsvidL453pToNI_2dfyzotuwW9";
  final String Maths2 = "https://drive.google.com/drive/folders/1V3hWKzsOjQYUq8x2FhAkwxSZVCYVsBa-";
  final String Phy1 = "https://drive.google.com/drive/folders/127PA5C69k69LiGL4lyDdaeH5YcRXlRfa";
  final String Phy2 = "https://drive.google.com/drive/folders/1fL_0pFq5QtSrG50ePgyJ1ppI_Vaujzsa";
  final String Ict1= "https://drive.google.com/drive/folders/1-1qo__CGy49LjFGDXggftFsp_KVVOKHn";
  final String Ict2= "https://drive.google.com/drive/folders/19dozAjaTfxdZRDl4buVguXP1lWTdRLCw";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.1,
                ),
                Center(
                  child: Text(
                    "Subjects",
                    style: TextStyle(fontSize:40, fontWeight: FontWeight.w800, decoration: TextDecoration.underline,),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Center(
                  child: Text(
                    "MATHEMATICS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ContactCard(
                      name: "MATHS-SEM/01",
                      link: Maths1,
                    ),
                    ContactCard(
                      name: "MATHS-SEM/02",
                      link: Maths2,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Center(
                  child: Text(
                    "PHYSICS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ContactCard(
                      name: "PHY-SEM/01",
                      link: Phy1,
                    ),
                    ContactCard(
                      name: "PHY-SEM/02",
                      link: Phy2,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Center(
                  child: Text(
                    "ICT",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ContactCard(
                      name: "ICT-SEM/01",
                      link: Ict1,
                    ),
                    ContactCard(
                      name: "ICT-SEM/01",
                      link: Ict2,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String link;
  final String name;
  final AssetImage image;

  const ContactCard({Key key, this.link, this.name, this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => launchWebsite(link),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        elevation: 10.0,
        child: Container(
          margin: EdgeInsets.all(8.0),
          height: size.width * 0.2,
          width: size.width * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Tap for more',
                style: TextStyle(color: Colors.grey[700], fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}