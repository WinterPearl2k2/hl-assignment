import 'package:flutter/material.dart';
import 'package:jokee_single_serving/application/utils/color_util.dart';

class JokeView extends StatelessWidget {
  const JokeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.only(left: 10),
          child: Image.network(
            'https://d3hi6wehcrq5by.cloudfront.net/companies/9fa9f1376020e189322010ffb60ef782.png?v=1714633906',
            width: 45,
            height: 45,
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Handicrafted by',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Jim HLS',
                    ),
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://scontent-hkg1-2.xx.fbcdn.net/v/t39.30808-1/306766438_148599597872418_5060080553964043972_n.jpg?stp=cp0_dst-jpg_p40x40&_nc_cat=102&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=sHON8SH4dA8Q7kNvgFAdUHz&_nc_ht=scontent-hkg1-2.xx&oh=00_AYDY1l1NwCfcZ6PB1BHT-pB1VG5JMPpOD_dbZCXUNVpMYQ&oe=66AD0F3B',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: ColorUtil.greenColor,
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'A joke a day keeps the doctor away',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'If you joke wrong way, your teeth have to play. (Serious)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                right: 25,
                left: 25,
                bottom: 90,
              ),
              child: Text(
                'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults anda made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were mon- keys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
                style: TextStyle(
                  color: ColorUtil.greyColor,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    color: ColorUtil.blueColor,
                    constraints: const BoxConstraints(
                      minWidth: 130,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: const Text(
                      'This is Funny!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    color: ColorUtil.greenColor,
                    constraints: const BoxConstraints(
                      minWidth: 130,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: const Text(
                      'This is not Funny.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              color: ColorUtil.greyColor.withOpacity(.5),
              width: double.infinity,
              height: .5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Text(
                'This appis created as part of Hisolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorUtil.greyColor,
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              alignment: Alignment.center,
              child: const Text(
                'Coppyright 2021 HLS',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
