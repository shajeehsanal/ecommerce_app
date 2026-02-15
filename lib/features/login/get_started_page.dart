import 'package:ecommerce_app/features/login/on_boarding_screen.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: Center(
              child: OnBoardingContent(
                title: 'Welcome to SwiftMart',
                subtitle: 'Your one-stop shop for all your needs',
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CustomButton(
                  text: 'Get Started',
                  onPressed: () {},
                  textColor: Colors.white,
                  buttonColor: Colors.black,
                  icon: Icons.navigate_next,
                  iconAlignment: IconAlignment.end,
                  height: height * 0.06,
                  width: width * 0.8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
