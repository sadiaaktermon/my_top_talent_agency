import 'package:flutter/material.dart';
import 'package:top_talent_agency/features/manager/widget/custom_rankcoin.dart';

class SarasRank extends StatelessWidget {
  const SarasRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: const Text(
            "Rank of managers",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none, // text  overlap
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=200',
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: -35,
                            left: 45,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff679929),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'sarah.h',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 25),

                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=200',
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: -35,
                            left: 45,
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffD08700),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'djes.yt',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?w=200',
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: -35,
                            left: 45,
                            child: const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff306B9C),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'dj_esaja',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 1,
                ),
              ),
              child: Column(
                  children: [
                    SizedBox(height: 10),
                    CustomRankcoin(
                        rank: '4', name: "djes.yt",
                        hours: '5.6h', followers: '18,000 followers',
                        coins: '1,743'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '5', name: "sarah.h",
                        hours: '5.5h', followers: '18,000 followers',
                        coins: '1,643'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '6', name: "sarah.h",
                        hours: '5.4h', followers: '18,000 followers',
                        coins: '1,543'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '7', name: "sarah.h",
                        hours: '5.3h', followers: '18,200 followers',
                        coins: '1,443'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '8', name: "sarah.h",
                        hours: '5.6h', followers: '18,200 followers',
                        coins: '1,343'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '9', name: "sarah.h",
                        hours: '5.6h', followers: '18,000 followers',
                        coins: '1,043'
                    ),
                    SizedBox(height: 20),

                    CustomRankcoin(
                        rank: '10', name: "sarah.h",
                        hours: '5.6h', followers: '18,200 followers',
                        coins: '1,043'
                    ),
                    SizedBox(height: 20),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
