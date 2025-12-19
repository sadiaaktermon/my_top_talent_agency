import 'package:flutter/material.dart';
import 'package:top_talent_agency/features/manager/widget/custom_rankcoin.dart';

class ManagerRank extends StatefulWidget {
  const ManagerRank({super.key});

  @override
  State<ManagerRank> createState() => _ManagerRankState();
}

class _ManagerRankState extends State<ManagerRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F7),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
        ),
        title: const Text(
          "Rank of managers",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                                '1',
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
                        'Sophie Kihm',
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
                                '2',
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
                        'Lisa Anderson',
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
                        'Van Dijk',
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
                    rank: '4', name: "Sarah Johnson",
                    hours: '5.6h', followers: '18,200 followers',
                    coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '5', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '6', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '7', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '8', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '9', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
                  ),
                  SizedBox(height: 20),

                  CustomRankcoin(
                      rank: '10', name: "Sarah Johnson",
                      hours: '5.6h', followers: '18,200 followers',
                      coins: '1,743'
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
