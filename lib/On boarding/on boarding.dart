
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Start Page.dart';
import '../Login/log.dart';

class introPage extends StatefulWidget {

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Theme.of(context).primaryColor,
        ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    index == 3 ? isLastPage = true : isLastPage = false;
                  });
                },
                controller: controller,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      color: Theme.of(context).canvasColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 350,
                              height: 350,
                              child: const Center(
                                child: Image(
                                    image: AssetImage('assets/photo_2023-01-27_15-26-50 (2).jpg')),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                              width: 300,
                              height: 300,
                              child: const Image(
                                  image:
                                  AssetImage('assets/photo_2023-01-27_15-26-48.jpg'))),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Free Advice For You",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                              width: 300,
                              height: 300,
                              child: const Image(
                                  image:
                                  AssetImage('assets/photo_2023-01-27_15-26-44.jpg'))),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Keep Care",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 350,
                            height: 350,
                            child: const Image(
                                image: AssetImage('assets/photo_2023-01-27_15-26-50.jpg'))),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Follow the instructions",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: isLastPage
              ? Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Start()));
              },
              child:Container(
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(

                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Text(
                              'GET START',style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),),

                          )),
                    ),
                  )),
            ),
          )
              : Container(
            color: Colors.grey.shade100,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16,color:Colors.teal),
                      ),
                      onPressed: () => controller.jumpToPage(3),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 4,
                        effect: WormEffect(
                            activeDotColor:
                            Colors.teal,
                            dotHeight: 5,
                            dotWidth: 10,
                            spacing: 5),
                      ),
                    ),
                    TextButton(
                      child: const Text("Next",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16,color:Colors.teal )),
                      onPressed: () => controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                    )
                  ]),
            ),
          ),
        ));
  }
}


