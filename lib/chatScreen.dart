import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeScreen.dart';
import 'calendarScreen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 83,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  icon: Image.asset('assets/images/home-nh.png')),
              IconButton(
                onPressed: () {
                  Get.to(() => CalendarScreen());
                },
                icon: Image.asset('assets/images/calendar-nh.png'),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/chat-h.png')),
              IconButton(
                  onPressed: () {
                    // Get.to(() => ProfileScreen());
                  },
                  icon: Image.asset('assets/images/user-nh.png'))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            backgroundColor: Color(0xffFFCF26),
            child: Icon(Icons.add),
            onPressed: () {}),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Blog.png',
                            height: 20, width: 20),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: Color(0xff4A5568),
                              fontSize: 20,
                              fontFamily: 'Inter Bold'),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        // Get.to(() => ChatGroup());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Ellipse 5.png'),
                              SizedBox(width: 25),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Circle Pelangi',
                                    style: TextStyle(
                                        fontFamily: 'Inter Bold', fontSize: 20),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Reyhan: weh jangan lu...',
                                    style: TextStyle(fontFamily: 'Inter Reg'),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/Frame 16.png'),
                              SizedBox(height: 17),
                              Text('12.02')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bali 2023',
                                  style: TextStyle(
                                      fontFamily: 'Inter Bold', fontSize: 20),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Jazlyn: Ok.',
                                  style: TextStyle(fontFamily: 'Inter Reg'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 26,
                              width: 26,
                            ),
                            SizedBox(height: 17),
                            Text('11.49')
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Ellipse 5 (1).png'),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PDE 21',
                                  style: TextStyle(
                                      fontFamily: 'Inter Bold', fontSize: 20),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Fariz: uda 100% ges mo..',
                                  style: TextStyle(fontFamily: 'Inter Reg'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/Frame 16.png'),
                            SizedBox(height: 17),
                            Text('11.33')
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6 (1).png'),
                            SizedBox(width: 25),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tanggal Tua',
                                  style: TextStyle(
                                      fontFamily: 'inter bold', fontSize: 20),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Mel: Mo buat apa ni?',
                                  style: TextStyle(fontFamily: 'inter reg'),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 26,
                            ),
                            SizedBox(height: 17),
                            Text('11.24')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
