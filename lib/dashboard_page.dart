import 'dart:ui';

import 'package:digitalmaster/screen/dashboard_details_page.dart';
import 'package:digitalmaster/screen/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class DashBoardPage extends StatelessWidget {

  List<dynamic> motivalassets= [
    "assets/motivational/motivational1.png",
    "assets/motivational/motivational2.png",
    "assets/motivational/motivational3.png",
    "assets/motivational/motivational4.png",
    "assets/motivational/motivational5.png",
    "assets/motivational/motivational6.png",
    "assets/motivational/motivational7.png",
    "assets/motivational/motivational8.png",
    "assets/motivational/motivational9.png",
    "assets/motivational/motivational7.png",
    "assets/motivational/motivational8.png",
    "assets/motivational/motivational9.png",
  ];

  List<dynamic> upcomingfestivalassets= [
    "assets/festival1.png",
    "assets/festival2.png",
    "assets/festival3.png",
    "assets/festival4.png",
    "assets/festival5.png",
    "assets/festival6.png",
    "assets/festival7.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        )),
        automaticallyImplyLeading: false,
        leading: IconButton(
          color:const Color(0xff012132),
            onPressed: () {
            Get.to(()=>
            ProfilePage());
            },
            icon:const Icon(Icons.logo_dev,size: 50,)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 15,
              semanticContainer: true,
              shadowColor: Colors.black12,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shadowColor: Colors.white,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 10.0),
                      child: Image.asset(
                        upcomingfestivalassets[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  autoplay: true,
                  itemCount: upcomingfestivalassets.length,
                  viewportFraction: 0.9,
                  scale: 0.95,
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Upcoming Festivals",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: const Color(0xff012132),
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child:GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                      itemCount: upcomingfestivalassets.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10), itemBuilder: (context,index){
                    if(index>=6){
                      return SizedBox();
                    }
                    return  InkWell(
                      onTap: () {
                        Get.to(() => DashBoardDetailsPage(motivationasseturl: upcomingfestivalassets[index]));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            upcomingfestivalassets[index],
                          ),
                        ),
                      ),
                    );
                  })

              ),
            ),

            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Motivational Posts",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: const Color(0xff012132),
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child:GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: motivalassets.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10), itemBuilder: (context,index){
                      if(index>=6){
                        return SizedBox();
                      }
                return  InkWell(
                    onTap: () {
                      Get.to(() => DashBoardDetailsPage(motivationasseturl: motivalassets[index]));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          motivalassets[index],
                        ),
                      ),
                    ),
                  );
                })

              ),
            ),
          ],
        ),
      ),
    );
  }
}
