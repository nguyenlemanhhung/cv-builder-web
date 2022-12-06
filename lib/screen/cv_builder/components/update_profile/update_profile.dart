import 'package:cvc_builder_web/contants/colors.dart';
import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            '/images/avatar-cute-2.jpeg',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              color: Colors.grey[300],
                            ),
                            style: ButtonStyle(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Form(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: 'Họ và Tên'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
