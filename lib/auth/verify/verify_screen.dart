import 'package:flutter/material.dart';
import 'package:top_talent_agency/auth/custom_screen.dart';
import 'package:top_talent_agency/auth/reset/reset_screen.dart';
import 'package:top_talent_agency/auth/verify/custom_code.dart';
import 'package:top_talent_agency/common/custom_button.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          svgPath: 'assets/Group.svg',
          svgHeight: 180,
          svgWidth: 130,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 25),
            Center(

              child: Text(
                "Check your email",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "We have sent a 6 digit code to your gmail. \nPlease enter it below to verify your identity",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCode(controller: TextEditingController()),
                      SizedBox(width: 12),
                      CustomCode(controller: TextEditingController()),
                      SizedBox(width: 12),
                      CustomCode(controller: TextEditingController()),
                      SizedBox(width: 12),
                      CustomCode(controller: TextEditingController()),
                      SizedBox(width: 12),
                      CustomCode(controller: TextEditingController()),
                      SizedBox(width: 12),
                      CustomCode(controller: TextEditingController()),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Resend OTP",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 2),
                        Container(
                          width: 83,
                          height: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomButton(text: "Verify code", onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const ResetScreen()));
                  })

                ]
          ),
          ),
      ),
    );
  }
}
