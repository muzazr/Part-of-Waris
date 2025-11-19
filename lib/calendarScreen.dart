import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeScreen.dart';
import 'chatScreen.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
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
                  onPressed: () {},
                  icon: Image.asset('assets/images/calendar-h.png'),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {
                      Get.to(() => ChatScreen());
                    },
                    icon: Image.asset('assets/images/chat-nh.png')),
                IconButton(
                    onPressed: () {
                      // Get.to(() => Profile());
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
            onPressed: () {}
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Blog.png'),
                        Text(
                          'Kalender',
                          style: TextStyle(
                              color: Color(0xff4A5568),
                              fontSize: 20,
                              fontFamily: 'Inter Bold'),
                        ),
                        Image.asset('assets/images/calendar-h.png')
                      ],
                    ),
                    SizedBox(height: 10),
                    Align(child: Image.asset('assets/images/kalender.png')),
                    SizedBox(height: 20),
                    Text(
                      'Upcoming',
                      style: TextStyle(fontFamily: 'Inter Bold', fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 90,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFAB512),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              '23',
                              style: TextStyle(
                                fontFamily: 'Inter Bold',
                                fontSize: 45,
                                color: Color(0xffFAB512),
                              ),
                            ),
                            Text(
                              'Nov',
                              style: TextStyle(
                                fontFamily: 'Inter Bold',
                                fontSize: 29,
                                color: Color(0xffFAB512),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Setor Bali 2023',
                                style: TextStyle(
                                    fontFamily: 'Inter Semi',
                                    fontSize: 20,
                                    color: Color(0xffFAB512))),
                            Text('23 Nov 2023',
                                style: TextStyle(
                                    fontFamily: 'Inter Reg',
                                    fontSize: 18,
                                    color: Color(0xffA0AEC0))),
                            OutlinedButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                size: 24.0,
                                color: Color(0xffA0AEC0),
                              ),
                              label: Text(
                                'Ingatkan Saya',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 57, 62, 70),
                                  fontFamily: 'Inter Reg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.navigate_next,
                              size: 40.0,
                            ))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 90,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3F458D),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              '28',
                              style: TextStyle(
                                fontFamily: 'Inter Bold',
                                fontSize: 45,
                                color: Color(0xff3F458D),
                              ),
                            ),
                            Text(
                              'Nov',
                              style: TextStyle(
                                fontFamily: 'Inter Bold',
                                fontSize: 29,
                                color: Color(0xff3F458D),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Setor Circle Pel...',
                                style: TextStyle(
                                    fontFamily: 'Inter Semi',
                                    fontSize: 20,
                                    color: Color(0xff3F458D))),
                            Text('28 Nov 2023',
                                style: TextStyle(
                                    fontFamily: 'Inter Reg',
                                    fontSize: 18,
                                    color: Color(0xffA0AEC0))),
                            OutlinedButton.icon(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                size: 24.0,
                                color: Color(0xffA0AEC0),
                              ),
                              label: Text(
                                'Ingatkan Saya',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 57, 62, 70),
                                  fontFamily: 'Inter Reg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: 10),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.navigate_next,
                              size: 40.0,
                            ))
                      ],
                    )
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
