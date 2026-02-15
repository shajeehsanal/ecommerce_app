import 'package:ecommerce_app/common/constants/asset_constants.dart';
import 'package:ecommerce_app/features/login/get_started_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const GetStartedPage(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.2),
          Center(child: Image.asset(AssetConstants.appIcon)),
          SizedBox(height: height * 0.25),
          const CircularProgressIndicator(color: Colors.white),
        ],
      ),
    );
  }
}
