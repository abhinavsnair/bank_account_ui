import 'package:bank_account_ui/card.dart';
import 'package:bank_account_ui/tran.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: NewGradientAppBar(
        elevation: 0,
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 228, 103, 95),
          Color.fromARGB(255, 77, 175, 255)
        ]),
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome! ',
              style: GoogleFonts.raleway(fontSize: 18),
            ),
            Text('ABHINAV',
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold))
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(
            width: 7,
          ),
          Text('')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 170,
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 243, 59, 45),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: const CircleAvatar(
                                    radius: 55,
                                    backgroundImage: NetworkImage(
                                        'https://i.pinimg.com/564x/24/f6/7a/24f67a4fda211f4d673b00e86099437e.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Abhinav S Nair',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'INR. 1,00,999.56',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      '546784567857332',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                            // Container(
                            //   height: 10,
                            //   width: 10,
                            //   decoration: BoxDecoration(
                            //       color: Colors.blue,
                            //       borderRadius: BorderRadius.circular(10)),
                            // )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/189/189666.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'WOULD YOU LIKE TO?',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardItem(
                    image:
                        "https://cdn-icons-png.flaticon.com/512/4108/4108841.png",
                    category: 'My Accont'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/512/5029/5029959.png',
                    category: "Load eSewa"),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/512/3080/3080541.png',
                    category: 'Payment'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/512/2787/2787531.png',
                    category: 'Fund Transfer'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/512/489/489950.png',
                    category: 'Schedule Payment'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/512/7202/7202963.png',
                    category: 'Scan to Pay'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/189/189666.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'LAST TRANSACTIONS',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Transactions(date: '10-03-2022', amount: '15000'),
            const Transactions(date: '9-03-2022', amount: '8000'),
            const Transactions(date: '9-03-2022', amount: '6800'),
          ],
        ),
      ),
    );
  }
}
