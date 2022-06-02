import 'package:flow/users_history/ui/widgets/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSection extends StatelessWidget {
  const DateSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
                DateFormat("d MMM, yyyy")
                    .format(DateTime.now())
                    .toUpperCase(), //
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
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
      ),
    );
  }
}
