import 'package:cvc_builder_web/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewCv extends StatelessWidget {
  const ViewCv({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Container(
        color: secondaryGrey,
      ),
    );
  }
}
