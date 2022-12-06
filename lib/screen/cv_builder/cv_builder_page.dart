import 'package:flutter/material.dart';

import 'components/update_profile/update_profile.dart';
import 'components/view_cv/view_cv.dart';

class CvBuilderPage extends StatelessWidget {
  const CvBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            UpdateProfile(),
            ViewCv(),
          ],
        ),
      ),
    );
  }
}
