import 'package:flutter/material.dart';

class MoodTimeLine extends StatelessWidget {
  const MoodTimeLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
