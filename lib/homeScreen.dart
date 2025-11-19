import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // approximate card width used previously: 155, plus horizontal padding
    final horizontalPadding =
        16.0 * 2; // we'll use 16 px left/right padding for body
    final crossAxisSpacing = 16.0;
    // compute aspect ratio so cards keep similar look (adjust if needed)
    final cardWidth = (screenWidth - horizontalPadding - crossAxisSpacing) / 2;
    final cardHeight = 171.0;
    final childAspectRatio = cardWidth / cardHeight;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 83,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/home-h.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/calendar-nh.png')),
                const SizedBox(width: 30),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/chat-nh.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/user-nh.png')),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: const Color(0xffFFCF26),
            child: const Icon(Icons.add),
            onPressed: () => setState(() {
            }),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header: left icon, centered title, right notif icon
                Row(
                  children: [
                    Image.asset('assets/images/Blog.png',
                        height: 20, width: 20),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Circle Anda',
                          style: TextStyle(
                            color: Color(0xff4A5568),
                            fontSize: 20,
                            fontFamily: 'Inter Bold',
                          ),
                        ),
                      ),
                    ),
                    Image.asset('assets/images/Notif.png',
                        height: 20, width: 20),
                  ],
                ),

                const SizedBox(height: 24),

                // Greeting row: avatar + greeting (use Expanded so layout stays centered)
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffFFCF26),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 1,
                          color: const Color.fromARGB(107, 0, 0, 0),
                        )
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Ellipse 9.png',
                          height: 48, width: 48, fit: BoxFit.cover,
                          ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Halo, Muhammad Zaki Azhar',
                              style: TextStyle(
                                  fontFamily: 'Inter Reg', fontSize: 13),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Selamat Siang',
                              style: TextStyle(
                                  fontFamily: 'Inter Semi', fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Grid of cards — each child is ONE card (not a Row of two cards)
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: childAspectRatio,
                  children: [
                    _buildStaticCard(
                        'Bali 2023', 'assets/images/Ellipse 6.png', 0.65),
                    _buildStaticCard(
                        'Circle Pelangi', 'assets/images/Ellipse 5.png', 0.22),
                    _buildStaticCard(
                        'Tanggal Tua', 'assets/images/Ellipse 6 (1).png', 0.45),
                    _buildStaticCard(
                        'PDE 21', 'assets/images/Ellipse 5 (1).png', 0.82),
                    _buildJoinCard(),
                    // add a placeholder empty card to keep grid balanced if you want
                    Container(),
                  ],
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStaticCard(String title, String assetPath, double percent) {
    return GestureDetector(
      onTap: () {
        // navigate if needed
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 1,
                color: const Color.fromARGB(107, 0, 0, 0),
              )
            ]),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 45,
              lineWidth: 8,
              percent: percent.clamp(0.0, 1.0),
              animation: true,
              progressColor: const Color(0xffFFCF26),
              circularStrokeCap: CircularStrokeCap.round,
              animationDuration: 1200,
              backgroundColor: const Color(0xffFFEBA4),
              center: Image.asset(assetPath, height: 60, width: 60),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Inter Bold',
                  fontSize: 17,
                  color: Color(0xff4A5568)),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 28.png',
                    height: 16, width: 16),
                const SizedBox(width: 6),
                const Text('You & others',
                    style: TextStyle(fontFamily: 'Inter Reg', fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJoinCard() {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffCBD5E0),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              // offset: Offset(1, 2),
              blurRadius: 5,
              color: const Color.fromARGB(41, 0, 0, 0),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(
            onPressed: () {},
            fillColor: const Color(0xfff7fafc),
            child: const Icon(Icons.add),
            shape: const CircleBorder(),
            elevation: 0,
          ),
          const SizedBox(height: 8),
          const Text(
            'Join or Create',
            style: TextStyle(
                fontFamily: 'Inter Bold',
                fontSize: 14,
                color: Color(0xff4A5568)),
          ),
        ],
      ),
    );
  }
}
