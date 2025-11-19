// lib/welcome.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ambil instance controller jika sudah didaftarkan di main, jika belum maka daftarkan sekarang.

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffFFC727), Color(0xffFAB512)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 170, 10, 130),
            child: _WelcomeContent(),
          ),
        ),
      ),
    );
  }
}

class _WelcomeContent extends StatelessWidget {
  const _WelcomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Mask group.png"),
          const Text(
            'WARIS',
            style: TextStyle(
              fontFamily: 'Jockey',
              color: Colors.white,
              fontSize: 76,
            ),
          ),
          const Text(
            'Nabung Lebih Mudah Bersama Teman',
            style: TextStyle(
              fontFamily: 'Inter Reg',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FilledButton(
                onPressed: () {
                  // set token dummy (frontend-only)
                  // c.getToken();

                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0)),
                    ),
                    builder: (context) {
                      return SingleChildScrollView(
                        reverse: true,
                        child: SizedBox(
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 24, right: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Login Waris',
                                  style: TextStyle(
                                      fontFamily: 'Inter bold', fontSize: 28),
                                ),
                                const SizedBox(height: 16),
                                const SizedBox(height: 16),
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Belum Punya akun?'),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text('Daftar'),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: FilledButton(
                                      onPressed: () {
                                        // login action
                                        Get.to(() => HomeScreen());
                                      },
                                      style: FilledButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffFAB512)),
                                      child: const Text(
                                        'Login',
                                        style: TextStyle(
                                          fontFamily: 'Inter Bold',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Get Started!',
                  style: TextStyle(
                    fontFamily: 'Inter Bold',
                    fontSize: 20,
                    color: Color(0xffFFC727),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
