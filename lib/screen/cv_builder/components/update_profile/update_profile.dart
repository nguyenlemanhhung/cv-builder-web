import 'package:cvc_builder_web/contants/colors.dart';
import 'package:cvc_builder_web/data/choicechip_data.dart';
import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: secondaryGrey2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Form(
                        child: GridView.count(
                          childAspectRatio: 4 / 1,
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'H??? v?? T??n'),
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Ch???c Danh'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'C???p b???c hi???n t???i'),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'S??? N??m Kinh Nghi???m'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DesiredJob(),
            Container(),
          ],
        ),
      ),
    );
  }
}

class DesiredJob extends StatefulWidget {
  const DesiredJob({
    Key? key,
  }) : super(key: key);

  @override
  State<DesiredJob> createState() => _DesiredJobState();
}

class _DesiredJobState extends State<DesiredJob> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: secondaryGrey2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Top 5 Ph??c L???i T??i Mu???n Nh???t'),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: chipList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 2 / 1,
              ),
              itemBuilder: (context, index) => ChoiceChip(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                label: Column(
                  children: [
                    Icon(chipList[index].icon),
                    Text(chipList[index].title),
                  ],
                ),
                selected: isSelected,
                selectedColor: Colors.amber,
                onSelected: (value) {
                  setState(() {
                    isSelected = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
