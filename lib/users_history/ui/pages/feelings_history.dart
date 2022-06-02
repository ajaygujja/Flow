import 'package:flow/common/data.dart';
import 'package:flow/controllers/app_controller.dart';
import 'package:flow/users_history/model/feelings_model.dart';
import 'package:flow/users_history/ui/widgets/date_picker_widget.dart';
import 'package:flow/users_history/ui/widgets/date_section.dart';
import 'package:flow/users_history/ui/widgets/mood_switch.dart';
import 'package:flow/users_history/ui/widgets/mood_timeline.dart';
import 'package:flow/users_history/ui/widgets/youtube_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class UserfeelingsHistory extends StatefulWidget {
  const UserfeelingsHistory({Key? key}) : super(key: key);

  @override
  State<UserfeelingsHistory> createState() => _UserfeelingsHistoryState();
}

class _UserfeelingsHistoryState extends State<UserfeelingsHistory> {
  final controller = Get.find<AppController>();

  @override
  void initState() {
    super.initState();
    _getUsersData();
  }

  _getUsersData() {
    controller.getUserFeelings();
  }

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
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            iconSize: 24.0,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Obx(
        () {
          if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (controller.exceptions?.isNotEmpty ?? false) {
            return Center(child: Text(controller.exceptions.toString()));
          }
          return UserfeelingsPage(
            userFeelingsData: controller.usersFeelings.data!,
          );
        },
      ),
    );
  }
}

class UserfeelingsPage extends StatelessWidget {
  const UserfeelingsPage({
    Key? key,
    required this.userFeelingsData,
  }) : super(key: key);

  final UserFeelingsData userFeelingsData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoodSwitch(
            feelingPercentage: userFeelingsData.feelingPercentage,
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const DateSection(),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const MoodTimeLine(),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const YoutubeSection(),
        ],
      ),
    );
  }
}
