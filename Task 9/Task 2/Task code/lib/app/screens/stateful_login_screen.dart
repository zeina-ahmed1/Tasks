// import 'package:flutter/material.dart';
// import 'package:flutter_application_9/app/widgets/my_button.dart';
// import 'package:flutter_application_9/app/widgets/my_container.dart';
// import 'package:flutter_svg/svg.dart';


// import '../widgets/my_sized_box.dart';
// import '../widgets/my_text_field.dart';

// class StatefulLoginScreen extends StatefulWidget {
//   const StatefulLoginScreen({super.key});

//   @override
//   State<StatefulLoginScreen> createState() => _StatefulLoginScreenState();
// }

// class _StatefulLoginScreenState extends State<StatefulLoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF141414),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Form(
//             key: ,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: CircleAvatar(
//                     backgroundColor: const Color(0xFF1F2022),
//                     child: SvgPicture.asset(
//                       'assets/icons/back.svg',
//                       width: 24,
//                     ),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 32),
//                   child: Column(
//                     children: [
//                       Text(
//                         'LET’S SIGN YOU IN',
//                         style: TextStyle(
//                           fontSize: 36,
//                           color: Colors.white,
//                           fontFamily: 'Teko',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         'Welcome back. You’ve been missed!',
//                         style: TextStyle(
//                           color: Color(0xFF808696),
//                           fontSize: 14,
//                           letterSpacing: -0.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 MyTextField(
//                   label: 'Email',
//                   keyboardType: TextInputType.emailAddress,
//                   obscureText: false,
//                 ),
//                 mySizedBox(height: 24),
//                 MyTextField(
//                   label: 'Password',
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: true, validator: (String? ) { },
//                 ),
//                 mySizedBox(height: 24),
//                 Center(
//                   child:
//                       myButton(context: context, text: 'Login', onPressed: () {}),
//                 ),
//                 mySizedBox(height: 24),
//                 const Center(
//                   child: Text(
//                     'Or login with',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFF808797),
//                     ),
//                   ),
//                 ),
//                 mySizedBox(height: 24),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     myContainer(
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/icons/google.svg',
//                           width: 24,
//                         ),
//                       ),
//                     ),
//                     mySizedBox(width: 16),
//                     myContainer(
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/icons/twitter.svg',
//                           width: 24,
//                         ),
//                       ),
//                     ),
//                     mySizedBox(width: 16),
//                     myContainer(
//                       IconButton(
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                           'assets/icons/facebook.svg',
//                           width: 24,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }