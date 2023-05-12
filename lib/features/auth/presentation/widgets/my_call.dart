import 'package:flutter/material.dart';
import 'package:videocall/features/auth/presentation/screen/login_screen.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../../../../core/apis/api_const.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Const
          .appid, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Const
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: LoginScreen.idControler.text,
      userName: LoginScreen.nameControler.text,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
