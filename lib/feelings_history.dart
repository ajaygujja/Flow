import 'package:flow/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserfeelingsHistory extends StatefulWidget {
  const UserfeelingsHistory({Key? key}) : super(key: key);

  @override
  State<UserfeelingsHistory> createState() => _UserfeelingsHistoryState();
}

class _UserfeelingsHistoryState extends State<UserfeelingsHistory> {
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
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
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
            const Divider(
              height: 1,
              thickness: 1,
            ),
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
                  DateFormat("d MMM, yyyy")
                      .format(DateTime.now())
                      .toUpperCase(), //
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700),
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
            const Divider(
              height: 1,
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text('9 AM - 12 PM'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('Love')
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: const [
                      Text('9 AM - 12 PM'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('Love')
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: const [
                      Text('9 AM - 12 PM'),
                      SizedBox(
                        width: 32,
                      ),
                      Text('Love')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
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
          ],
        ),
      ),
    );
  }
}
