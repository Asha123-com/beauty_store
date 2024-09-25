import 'package:beauty/google%20font.dart';
import 'package:beauty/pages/nagivation%20button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Beauty extends StatelessWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [BG, BG2],
                ),
              ),
              child: Column(
                children: [
                  Gap(20),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/fell.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Gap(10),
                  Container(
                    width: double.infinity,
                    height: 490,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/green_perfume-removebg-preview (1).png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Choose our products to make your skin more beautiful and gorgeous",
                      style: style(20, third),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => CustomBottomNavBar()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: third, width: 4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Let's Choose", style: myStyle(25, third)),
                          Icon(Icons.arrow_forward, color: third, size: 25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}