import 'package:flutter/material.dart';
import 'package:portfolio/thank_you.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //titleTextStyle: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('My Portfolio', style: TextStyle(color: Colors.white)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/myimage.jpg'),
              )
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 30),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/myimage.jpg'),
                  ),
                ),
                const Text(
                  'Anuja Jadhav',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 32,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'I am Anuja Jadhav from JSPM,Wagholi. I am a final year engineering student. I am doing app development since 4 years. I work as a flutter freelancer.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.blue,
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.blue,
                      tileColor: Colors.white,
                      title: Text('LinkedIn'),
                      subtitle: Text('My LinkedIn Profile'),
                      leading: Icon(
                        Icons.account_box_outlined,
                        size: 35,
                      ),
                      trailing: Icon(
                        Icons.launch,
                        size: 35,
                      ),
                      onTap: (){
                        launchUrl(Uri.parse('https://www.linkedin.com/in/anuja-jadhav-06111217b/'));
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.yellow,
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      iconColor: Colors.yellow,
                      tileColor: Colors.white,
                      title: Text('Instagram'),
                      subtitle: Text('My Instagram Profile'),
                      leading: Icon(
                        Icons.account_box_outlined,
                        size: 35,
                      ),
                      trailing: Icon(
                        Icons.launch,
                        size: 35,
                      ),
                      onTap: (){
                        launchUrl(Uri.parse('https://www.instagram.com/anuja_jadhav_2512/'));
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                 Card(
                  color: Colors.red,
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: Colors.white,
                      iconColor: Colors.red,
                      title: Text('Youtube'),
                      subtitle: Text('My Youtube Profile'),
                      leading: Icon(
                        Icons.account_box_outlined,
                        size: 35,
                      ),
                      trailing: Icon(
                        Icons.launch,
                        size: 35,
                      ),
                      onTap: (){
                        launchUrl(Uri.parse('https://www.youtube.com/channel/UCiZzenIzUkbTEnMSbMf07Ow'));
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThankYou()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        elevation: 5.0),
                    child: const Text(
                      'Greetings To Everyone!',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
