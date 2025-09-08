import 'package:ShopSphere/navigation_menu.dart';
import 'package:ShopSphere/utils/logging/log.dart';
import 'package:ShopSphere/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intelligence_sign3/flutter_intelligence_sign3.dart';
import 'package:flutter_intelligence_sign3/model/options.dart';
import 'package:flutter_intelligence_sign3/model/update_options.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboard_screen.dart';

/// Stateless
class App extends StatelessWidget {
  const App({super.key});

  Future<void> initializeSDK() async {
    await initSign3Sdk();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeSDK(),
      builder: (context, snapshot) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: SAppTheme.lightTheme,
          darkTheme: SAppTheme.darkTheme,
          home: const OnBoardingScreen(),
        );
      },
    );
  }

  Options getOptions() {
    Options options = OptionsBuilder()
        .setClientId("test_tenant_flutter")
        .setClientSecret("secret-3c23efa9-22af-47ff-bd64-42b266d4bf55")
        .setEnvironment(Environment.PROD)
        .build();
    return options;
  }

  Future<void> initSign3Sdk() async {
    // var initAsync = await Sign3Intelligence.initAsync(getOptions());
    // Log.i("TAG_INIT_ASYNC", initAsync.toString());
    Log.i("TAG_INIT_ASYNC", Sign3Intelligence.isSdkInitialized().toString());
    var stopResult = await Sign3Intelligence.stop();
    Log.i("TAG_STOP", stopResult.toString());
    var id = await Sign3Intelligence.getSessionId();
    Log.i("TAG_INIT_SESSION_ID", id.toString());

    Fluttertoast.showToast(
      msg: "SessionId: $id",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}


/// Stateful
// class App extends StatefulWidget {
//   const App({super.key});
//
//   @override
//   State<App> createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//
//   @override
//   void initState() {
//     super.initState();
//     initSign3Sdk();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.system,
//       theme: SAppTheme.lightTheme,
//       darkTheme: SAppTheme.darkTheme,
//       home: const OnBoardingScreen(),
//       // home: const NavigationMenu(),
//     );
//   }
//
//   void showCustomDialog(BuildContext context) {
//     TextEditingController phoneController = TextEditingController();
//     TextEditingController idController = TextEditingController();
//
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Update Options'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: phoneController,
//                 decoration: const InputDecoration(
//                   labelText: 'Set Phone Number',
//                 ),
//                 keyboardType: TextInputType.number, // Set to number input type
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: idController,
//                 decoration: const InputDecoration(
//                   labelText: 'Set ID',
//                 ),
//                 keyboardType: TextInputType.number, // Set to number input type
//               ),
//             ],
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () async {
//                 if (phoneController.text.isEmpty || idController.text.isEmpty) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Both fields must be filled out.'),
//                     ),
//                   );
//                   return;
//                 }
//                 await updateOptions(getUpdatedOptions(phoneController.text, idController.text));
//                 await getIntelligence();
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Update Options'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   UpdateOptions getUpdatedOptions(String phone, String id) {
//     Map<String, String> additionalAttributes = {
//       "TRANSACTION_ID": "76381256165476154713",
//       "DEPOSIT": "5000",
//       "WITHDRAWAL": "2000",
//       "METHOD": "UPI",
//       "STATUS": "SUCCESS",
//       "CURRENCY": "INR",
//       "TIMESTAMP": DateTime.now().millisecondsSinceEpoch.toString(),
//     };
//
//     UpdateOptions updateOptions = UpdateOptionsBuilder()
//         .setPhoneNumber(phone)
//         .setUserId(id)
//         .setPhoneInputType(PhoneInputType.GOOGLE_HINT)
//         .setOtpInputType(OtpInputType.AUTO_FILLED)
//         .setUserEventType(UserEventType.TRANSACTION)
//         .setMerchantId("1234567890")
//         .setAdditionalAttributes(additionalAttributes)
//         .build();
//     return updateOptions;
//   }
//
//   Options getOptions() {
//     Options options = OptionsBuilder()
//         .setClientId("test_tenant_flutter")
//         .setClientSecret("secret-3c23efa9-22af-47ff-bd64-42b266d4bf55")
//         .setEnvironment(Environment.PROD)
//         .build();
//     return options;
//   }
//
//   Future<void> initSign3Sdk() async {
//     Log.i("TAG_INIT_ASYNC_BEFORE", "TAG_INIT_ASYNC_BEFORE");
//     var initAsync = await Sign3Intelligence.initAsync(getOptions());
//     Log.i("TAG_INIT_ASYNC", initAsync.toString());
//     // var stopResult = await Sign3Intelligence.stop();
//     // Log.i("TAG_STOP", stopResult.toString());
//     // var id = await Sign3Intelligence.getSessionId();
//     // Log.i("TAG_INIT_SESSION_ID", id.toString());
//     // setState(() {
//     //   // initValue = initAsync.toString();
//     //   stop = stopResult.toString();
//     //   sessionID = id;
//     // });
//   }
//
//   Future<void> getIntelligence() async {
//     try {
//       var init = await Sign3Intelligence.isSdkInitialized();
//       Log.i("TAG_INIT_ASYNC_RESULT", init.toString());
//       if (init){
//         var intelligence = await Sign3Intelligence.getIntelligence();
//         Log.i("TAG_GET_INTELLIGENCE", intelligence.toJson().toString());
//       }
//     } catch (e) {
//       Log.i("TAG_GET_INTELLIGENCE_ERROR", e.toString());
//     }
//   }
//
//   Future<void> updateOptions(UpdateOptions options) async {
//     await Sign3Intelligence.updateOptions(options);
//   }
// }