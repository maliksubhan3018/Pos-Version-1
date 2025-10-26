import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:posversion1/widgets/custom_button.dart';
import 'package:posversion1/widgets/mycolors.dart';
import 'package:posversion1/widgets/myimages.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[20],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/myimages/image 293.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 0.5,
                        color: Color.fromARGB(255, 143, 204, 232),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Store Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blue,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '+92 34242648484 | Store Address',
                          style: TextStyle(color: AppColors.gray, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(MyImages.shoppinglogo, height: 60),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Enter Your Secret PIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.gray,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 55,
                  fieldWidth: 50,
                  inactiveColor: AppColors.gray.withAlpha(77),
                  selectedColor: AppColors.blue,
                  activeColor: AppColors.gray.withAlpha(77),
                ),
                textStyle: TextStyle(fontSize: 20),
                enableActiveFill: false,
                onChanged: (value) {},
                onCompleted: (value) {
                  debugPrint("PIN entered: $value");
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: 'Login',
                onPressed: () {},
                isSubmit: true,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Remember PIN? ",
                  style: TextStyle(color: AppColors.gray),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Reset PIN",
                    style: TextStyle(color: AppColors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 189, 192, 194),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(Icons.fingerprint, color: AppColors.gray, size: 30),
            ),
            SizedBox(height: 40),
             Text(
              'Version 1.15.25  by  POS offer',
              style: TextStyle(color: AppColors.gray, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
