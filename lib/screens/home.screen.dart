import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

import '../controller/home.screen.controller.dart';
import 'best.reviewer.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('LOGO',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Enter name";
                  return null;
                },
                decoration: InputDecoration(
                    suffixIconConstraints: BoxConstraints(
                      minWidth: 2,
                      minHeight: 2,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                          child: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.blue,
                          ),
                          onTap: () {}),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    hintText: "검색어를 입력하세요",
                    border: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        width: 2,
                        gradient: LinearGradient(
                            colors: [Color(0xff74FBDE), Color(0xff3C41BF)]))),
              ),
            ),
            SizedBox(
              height: 300,
              child: AnotherCarousel(
                boxFit: BoxFit.fill,
                images: [
                  AssetImage('assets/images/slider2.jpeg'),
                  AssetImage('assets/images/slider1.jpeg'),
                  AssetImage('assets/images/slider3.png'),
                ],
                dotPosition: DotPosition.bottomCenter,
                autoplay: false,
                dotColor: Colors.grey,
                dotBgColor: Colors.transparent,
                dotSize: 5.0,
                dotSpacing: 20.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "제일 핫한 리뷰를 만나보세요",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff616161),
                  fontSize: 12, // Make the "Sign In" text stand out
                ),
              ),
              subtitle: Text(
                "리뷰️ 랭킹⭐ top 3",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 18, // Make the "Sign In" text stand out
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: homeScreenController.items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xffCECECE)),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ImageIcon(
                                  color: homeScreenController
                                      .items[index].statusColor,
                                  AssetImage('assets/images/crown.png'),
                                  size: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Image.asset(
                                  fit: BoxFit.fill,
                                  homeScreenController
                                      .items[index].speakerImageUrl),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  homeScreenController.items[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    fontSize:
                                        14, // Make the "Sign In" text stand out
                                  ),
                                ),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: '• ',
                                    style: TextStyle(
                                        color: Color(0xff1D1D1D), fontSize: 20),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: homeScreenController
                                            .items[index].speakerName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff1D1D1D),
                                          fontSize:
                                              12, // Make the "Sign In" text stand out
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: '• ',
                                    style: TextStyle(
                                        color: Color(0xff1D1D1D), fontSize: 20),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: homeScreenController
                                            .items[index].speakerTitle,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff1D1D1D),
                                          fontSize:
                                              12, // Make the "Sign In" text stand out
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text:
                                        "⭐${homeScreenController.items[index].starRate}",
                                    style: TextStyle(
                                      color: Color(0xffFFD233),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: homeScreenController
                                            .items[index].starCount,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffC4C4C4),
                                          fontSize:
                                              10, // Make the "Sign In" text stand out
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffF0F0F0),
                                            border: Border.all(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(6, 5, 6, 5),
                                          child: Text(
                                            homeScreenController
                                                .items[index].location,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffF0F0F0),
                                            border: Border.all(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6))),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(6, 5, 6, 5),
                                          child: Text(
                                            homeScreenController
                                                .items[index].status,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Text("",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text(
                "골드 계급 사용자들이예요",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff616161),
                  fontSize: 12, // Make the "Sign In" text stand out
                ),
              ),
              subtitle: Text(
                "베스트 리뷰어 🏆 Top10",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 18, // Make the "Sign In" text stand out
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeScreenController.horizitems.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    print(index);
                    if(index==0){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BestReviewerScreen()));
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 62.0,
                                width: 62.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(homeScreenController
                                          .horizitems[index].image),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                    border: index == 0
                                        ? Border.all(
                                            width: 3, color: Color(0xffFFD233))
                                        : null),
                              ),
                            ),
                            index == 0
                                ? Positioned(
                                    left: 5.0,
                                    child: ImageIcon(
                                      color: Color(0xffFFD233),
                                      AssetImage('assets/images/crown.png'),
                                      size: 20,
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      Text(
                        homeScreenController.horizitems[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff616161),
                          fontSize: 14,
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'LOGO Inc.',
                          style: TextStyle(
                              color: Color(0xff868686),
                              fontSize: 14, fontWeight: FontWeight.w500,),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            menuItem('회사 소개'),
                            separator(),
                            menuItem('인재 채용'),
                            separator(),
                            menuItem('기술 블로그'),
                            separator(),
                            menuItem('리뷰 저작권'),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.arrow_forward, size: 16, color: Colors.grey),
                                const SizedBox(width: 5),
                                const Text(
                                  'review@logo.com',
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,  color: Color(0xff868686),),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Color(0xff868686), style: BorderStyle.solid, width: 0.80),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: 'KOR',

                                  items: const [
                                    DropdownMenuItem(value: 'KOR', child: Text('KOR')),
                                    DropdownMenuItem(value: 'ENG', child: Text('ENG')),
                                  ],
                                  isDense: true,
                                  onChanged: (value) {},
                                  style: const TextStyle( color: Color(0xff868686)),
                                  underline: Container(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(height: 20, color: Colors.grey),
                        const Text(
                          '@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,  color: Color(0xff868686),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ),

            SizedBox(
              height: 10,
            ),
          ]),
        ));
  }

  Widget menuItem(String title) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w400,  color: Color(0xff868686),),
    );
  }

  Widget separator() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text('|', style: TextStyle(fontSize: 14,color: Color(0xff868686),)),
    );
  }
}
