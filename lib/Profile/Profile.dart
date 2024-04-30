import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/style/Style.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextSize(context),),
        backgroundColor: Colors.white,
        titleSpacing: 100,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        centerTitle:true ,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12,top: 30,bottom: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(

                radius: width<650 ? 70 : 100 ,
                backgroundImage: AssetImage('asset/profile.jpg'),
              ),
              SizedBox(height: 12),
              Text(
                'John Doe ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'john.doe@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
