import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:top_talent_agency/features/manager/screen/manager_details_screen.dart';

class CustomSortview extends StatelessWidget {
  const CustomSortview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 318,
      width: 382,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 48,
                  height: 48,
                  color: Colors.grey[300],
                  child: Container(
                    width: 48,
                    height: 48,
                    color: Colors.grey[300],
                    child: Image.network(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=200',
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
              ),
               SizedBox(width: 12),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManagerDetailsScreen()));
                },
                child: Expanded(
                  child: Row(
                    children:[ Text(
                      'Sarah Johnson',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                      SizedBox(width: 120),
                      Icon(Icons.chevron_right, color: Colors.black, size: 28),

                    ]
                  ),
                ),
              ),
            ],
          ),
           SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                },
                child: Container(
                  width: 111,
                  height: 56,
                  color: Colors.blue[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '120',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff1C398E)),
                      ),
                      Text(
                        'Creators',
                        style: TextStyle(fontSize: 12, color: Color(0xff1C398E)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 111,
                height: 56,
                color: Colors.green[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff0D542B)),
                    ),
                    Text(
                      'Excellent',
                      style: TextStyle(fontSize: 12, color: Color(0xff0D542B)),
                    ),
                  ],
                ),
              ),
              Container(
                width: 111,
                height: 56,
                color: Colors.red[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '48',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff82181A)),
                    ),
                    Text(
                      'At Risk',
                      style: TextStyle(fontSize: 12, color: Color(0xff82181A)),
                    ),
                  ],
                ),
              ),
            ],
          ),
            SizedBox(height: 10),
          Container(
            height: 48,
            width: 349,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SvgPicture.asset(
                  'assets/user.svg',
                  width: 16,
                  height: 16,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Example Text',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
