import 'package:ShopSphere/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:fraud_sdk_flutter/fraud_sdk_flutter.dart';
import 'package:fraud_sdk_flutter/model/options.dart';
import 'package:get/get.dart';
import 'features/authentication/screens/onboarding/onboard_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    // You don't need to call the stop function, as it's specific to the Native Android Application class. When the isolated service starts, it calls the Android Application class's onCreate method. However, in Flutter, there is no Application class, so there's no need to call it.
    // Sign3IntelligencePlugin.cancelAllWorkers();
    // var stopResult = (await Sign3IntelligencePlugin.stop());
    // if(stopResult) {
    //   Log.i("TAG_STOP: ", "$stopResult");
    //   return;
    // }else{
    //   Log.i("TAG_STOP: ", "$stopResult");
    // }
    var init = await Sign3IntelligencePlugin.initAsync(getOptions().toMap());
    print("TAG_INIT:  $init");
    var id = await Sign3IntelligencePlugin.getSessionId();
    print("TAG_SESSION_ID: $id");
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      // home: const NavigationMenu(),
    );
  }



  Options getOptions() {
    Options options = OptionsBuilder()
        .setClientId('test_tenant')
        .setClientSecret("secret-295OzNJj9L3nVUWQq56ACCN6f6zUiYGQlN8G7256")
        .setEnvironment(Environment.DEV) // Assume 'Environment' enum exists
        .build();
    return options;
  }
}