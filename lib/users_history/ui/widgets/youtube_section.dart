import 'package:flow/common/data.dart';
import 'package:flutter/material.dart';

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
