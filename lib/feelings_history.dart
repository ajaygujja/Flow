import 'package:flow/data.dart';
import 'package:flow/date_picker_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserfeelingsHistory extends StatefulWidget {
  const UserfeelingsHistory({Key? key}) : super(key: key);

  @override
  State<UserfeelingsHistory> createState() => _UserfeelingsHistoryState();
}

class _UserfeelingsHistoryState extends State<UserfeelingsHistory> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Your Feelings History',
          style: TextStyle(color: Colors.black, fontSize: 20),
          // textAlign: TextAlign.center,
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            iconSize: 24.0,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MoodSwitch(),
            Divider(
              height: 1,
              thickness: 1,
            ),
            DateSection(),
            Divider(
              height: 1,
              thickness: 1,
            ),
            MoodTimeLine(),
            Divider(
              height: 1,
              thickness: 1,
            ),
            YoutubeSection(),
          ],
        ),
      ),
    );
  }
}

class DateSection extends StatelessWidget {
  const DateSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xffC6E5F7),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              DateFormat("d MMM, yyyy").format(DateTime.now()).toUpperCase(), //
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: const Color(0xff4F4F4F),
            selectedTextColor: Colors.white,
            dateTextStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
            dayTextStyle: const TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
            onDateChange: (date) {},
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class MoodTimeLine extends StatelessWidget {
  const MoodTimeLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              const Text('9 AM - 12 PM'),
              const SizedBox(
                width: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/smile.png',
                    width: 15,
                    height: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Love'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            children: [
              const Text('1 PM - 4 PM'),
              const SizedBox(
                width: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/angry.png',
                    width: 15,
                    height: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Angry'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            children: [
              const Text('4 PM - 6 PM'),
              const SizedBox(
                width: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/angry.png',
                    width: 15,
                    height: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Angry'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}

class YoutubeSection extends StatelessWidget {
  const YoutubeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        const Text(
          'You May Find This Interesting',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit euismod risus elementum magna scelerisque nunc sed varius. Tellus quis tristique adipiscing sed metus, sit ac adipiscing. Leo aenean sed eu purus maecenas posuere '),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 208,
                height: 128,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff1A000000),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(gym_photos[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Image.asset(
                  'assets/images/youtube.png',
                  cacheWidth: 35,
                  cacheHeight: 35,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class MoodSwitch extends StatelessWidget {
  const MoodSwitch({
    Key? key,
  }) : super(key: key);

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
