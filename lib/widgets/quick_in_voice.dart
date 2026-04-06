import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_in_voice_header.dart';

class QuickInVoice extends StatelessWidget {
  const QuickInVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInVoiceHeader(),
          const SizedBox(height: 24),
          LatestTransaction(),
        ],
      ),
    );
  }
}
