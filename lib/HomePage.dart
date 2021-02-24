import 'package:b_community/WelcomePage.dart';
import 'package:b_community/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  tAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 50),
          child: Image(
            image: AssetImage('assets/b.png'),
            width: 50,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 50),
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 15, color: kWhiteColor),
          ),
        )
      ],
    );
  }
  container(){
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height / 3.7,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              color: Colors.blue.shade800,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt,color: kWhiteColor,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.edit_off,color: kWhiteColor,),
                      Icon(Icons.architecture_rounded,color: kWhiteColor,),
                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120,right: 40,left: 45),
          child: Container(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 1.7,
            decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.blue.shade700)]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.account_circle,color: kWhiteColor,size: 30,),
                  Icon(Icons.supervised_user_circle,color: kWhiteColor,size: 50),
                  Icon(Icons.support_agent,color: kWhiteColor,size: 30),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          tAppBar(),
          container(),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('Community',style: TextStyle(color: kWhiteColor,fontSize: 25,fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Lorem ipsum dolor sit consetetur \n      sadipscing elitr, sed daim',style: TextStyle(color: kWhiteColor,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: CircleAvatar(child: Icon(Icons.arrow_forward,color: Colors.blue,size: 30,),
              backgroundColor: kWhiteColor,
                radius: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}

