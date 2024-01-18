import 'package:flutter/material.dart';
import 'package:flutter_education/screens/credentials/signup_screen.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/typography.dart' as app_typo;
import 'package:flutter_education/utils/images.dart' as app_img;
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(app_img.imgOnBoarding), fit: BoxFit.cover)),
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EDUCATION',
                textAlign: TextAlign.center,
                style: app_typo.heading1.copyWith(color: app_color.white),
              ),
              Column(
                children: [
                  Image.asset(app_img.imgBooks),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi',
                    style:
                        app_typo.titleText16.copyWith(color: app_color.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreen();
                        },
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: app_color.white,
                          borderRadius: BorderRadius.circular(32)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                      child: Text(
                        'START',
                        style: app_typo.heading3,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: app_color.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: app_color.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: app_color.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// WITH INTRODUCTION SCREEN PAGINATE

// final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final pageDecoration = PageDecoration(
//         bodyTextStyle: app_typo.titleText16.copyWith(
//           color: app_color.white,
//           fontWeight: FontWeight.w400,
//         ),
//         imagePadding: const EdgeInsets.only(top: 0));

//     return Scaffold(
//       backgroundColor: app_color.primary,
//       body: Container(
//         width: screenWidth,
//         height: screenHeight,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(
//               app_img.imgOnBoarding,
//             ),
//           ),
//         ),
//         child: IntroductionScreen(
//           globalBackgroundColor: app_color.primary,
//           onDone: () {},

//           showSkipButton: false,
//           showNextButton: false,
//           showDoneButton: true,
//           back: const Icon(Icons.arrow_back),
//           // skip: Text("Skip",
//           //     style: app_typo.labelText.copyWith(color: app_color.white)),
//           // next: Text("Next",
//           //     style: app_typo.labelText.copyWith(color: app_color.white)),
//           done: Text("Done",
//               style: app_typo.labelText.copyWith(color: app_color.white)),
//           dotsDecorator: const DotsDecorator(
//             size: Size(4, 4),
//             color: app_color.black,
//             activeColor: app_color.white,
//           ),
//           dotsFlex: 3,
//           pages: [
//             PageViewModel(
//                 title: "",
//                 body:
//                     "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
//                 image: Image.asset(app_img.imgBooks),
//                 decoration: pageDecoration),
//             PageViewModel(
//                 title: "",
//                 body:
//                     "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
//                 image: Image.asset(app_img.imgBooks2),
//                 decoration: pageDecoration),
//             PageViewModel(
//                 title: "",
//                 body:
//                     "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
//                 image: Image.asset(app_img.imgBooks3),
//                 decoration: pageDecoration),
//           ],
//         ),
//       ),
//     );
