import 'package:flow/common/data.dart';
import 'package:flow/users_history/model/feelings_model.dart';
import 'package:flutter/material.dart';

class MoodSwitch extends StatelessWidget {
  const MoodSwitch({
    Key? key,
    required this.feelingPercentage,
  }) : super(key: key);

  final FeelingPercentage feelingPercentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Your feelings from last 30 days',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: ((context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Container(
                      height: 80,
                      width: 40,
                      margin: const EdgeInsets.only(right: 10, left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffF1F2F3),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff1A000000),
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 9, right: 8, top: 16),
                            child: Text(
                              '30%',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: const Color(0xff85C454),
                            radius: 22,
                            child: Center(
                                child: Image.asset(
                              emoji.values.elementAt(index),
                              width: 20,
                              height: 20,
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    emoji.keys.elementAt(index),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              );
            }),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
