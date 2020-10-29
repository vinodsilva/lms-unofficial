import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

void launchWebsite(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {
    print("Couldn't launch the url");
  }
}

class MorePage extends StatelessWidget with NavigationStates  {

  final String youtubelink = "https://www.youtube.com/channel/UC7e2er7vSKvXgJFpt5xsYzA";
  final String podcastlink = "https://anchor.fm/srilluminati";

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
                Center(
                  child: Image.asset(
                    'assets/ict.jpeg',
                    scale: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                ),

                Center(
                  child: Text(
                    "More",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ContactCard(
                      name: "YouTube",
                      link: youtubelink,
                      image: AssetImage('assets/youtube.jpeg'),
                    ),
                    ContactCard(
                      name: "Podcast",
                      link: podcastlink,
                      image: AssetImage('assets/podcast.jpeg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Center(
                  child: Text(
                    "Thank you!",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
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
          height: size.width * 0.4,
          width: size.width * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: size.width * 0.13,
                backgroundImage: image,
              ),
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