import 'package:flutter/material.dart';



class BestReviewerScreen extends StatefulWidget {
  const BestReviewerScreen({super.key});

  @override
  State<BestReviewerScreen> createState() => _BestReviewerScreenState();
}

class _BestReviewerScreenState extends State<BestReviewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Color(0xffD7D7D7),
              height: 1.0,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "랭킹 1위",
              style: TextStyle(fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff868686),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\n베스트 리뷰어',
                  style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1D1D1D),
                  ),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Profile Section
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/name1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                 ),
            ),
           /* CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://your-image-url.com/cat.jpg'),
            ),*/
            const SizedBox(height: 10),
            const Text(
              'Name01',
              style: TextStyle(fontSize: 20,  fontWeight: FontWeight.w500,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageIcon(
                  color: Color(0xffFFD233),
                  AssetImage('assets/images/crown.png'),
                  size: 26,
                ),
                SizedBox(width: 5),
                Text(
                  '골드',
                  style: TextStyle(fontSize: 16, color: Colors.amber, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            // Review Section


            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  child:RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "작성한 리뷰",
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1D1D1D),
                        ),

                        children: <TextSpan>[
                          TextSpan(
                            text: '총 35개',
                            style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff616161),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Spacer(),
                AbsorbPointer(
                  absorbing: true,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
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
                            DropdownMenuItem(value: 'KOR', child: Text('최신순')),
                            DropdownMenuItem(value: 'ENG', child: Text('최신순')),
                          ],
                          isDense: true,
                          onChanged: (value) {},
                          style: const TextStyle( color: Color(0xff868686)),
                          underline: Container(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(height: 10,thickness: 2, color: Color(0xffF0F0F0)),
            reviewCard(),
             Padding(
               padding: const EdgeInsets.only(left: 12.0,right: 12.0),
               child: Divider(height: 10,thickness: 2, color: Color(0xffF0F0F0)),
             ),
            ListTile(
              leading:  Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/name1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              title: Text(
                "Name01",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 14, // Make the "Sign In" text stand out
                ),
              ),
              subtitle:  Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star_border, color: Colors.orange, size: 18),
                  SizedBox(width: 5),
                  Text('2022.12.09', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff868686),
                    fontSize: 12, // Make the "Sign In" text stand out
                  ),),
                ],
              ),
              trailing: Icon(
                Icons.bookmark_outline_sharp,
                color: Color(0xff868686),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  menuItem('“가격 저렴해요”'),

                  menuItem('“CPU온도 고온”'),

                  menuItem('“서멀작업 가능해요”'),

                  menuItem('“게임 잘 돌아가요”'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ListTile(
              leading:  Icon(
                Icons.flash_on_sharp,
                color: Color(0xff3E3DC5),
              ),
              title: Text(
                "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 14, // Make the "Sign In" text stand out
                ),
              ),

            ),
            const SizedBox(height: 10),
            ListTile(
              leading:  Icon(
                Icons.flash_on_sharp,
                color: Color(0xffD7D7D7),
              ),
              title: Text(
                "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  fontSize: 14, // Make the "Sign In" text stand out
                ),
              ),

            ),
            const SizedBox(height: 10),
            ListTile(
                leading:  Icon(
                  Icons.flash_on_sharp,
                  color: Color(0xffFFFFFF),
                ),
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: 120,
                    width: 100,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                              fit: BoxFit.fill,
                              'assets/images/row1.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: 120,
                    width: 100,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                              fit: BoxFit.fill,
                              'assets/images/row2.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: 120,
                    width: 100,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                              fit: BoxFit.fill,
                              'assets/images/row3.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0,right: 12.0),
              child: Divider(height: 10,thickness: 2, color: Color(0xffF0F0F0)),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget reviewCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
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
                      Expanded(
                        child: Image.asset(
                            fit: BoxFit.fill,
                            'assets/images/ryzen.png'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'AMD 라이젠 5 5600X 버미어 \n정품 멀티팩',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          Icon(Icons.star_half, color: Colors.orange, size: 18),
                          Icon(Icons.star_border, color: Colors.orange, size: 18),
                          SizedBox(width: 5),
                          Text('4.07', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget menuItem(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400,  color: Color(0xff868686),),
    );
  }

  Widget separator() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text('|', style: TextStyle(fontSize: 14,color: Color(0xff868686),)),
    );
  }
}
