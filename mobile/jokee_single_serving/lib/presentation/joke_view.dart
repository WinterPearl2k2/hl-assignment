import 'package:flutter/material.dart';
import 'package:jokee_single_serving/application/utils/color_util.dart';
import 'package:jokee_single_serving/domain/model/joke_model.dart';

class JokeView extends StatefulWidget {
  const JokeView({super.key});

  @override
  _JokeViewState createState() => _JokeViewState();
}

class _JokeViewState extends State<JokeView> {
  List<Joke> jokes = [
    Joke(
        'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were mon-keys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."'),
    Joke(
        'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!'),
    Joke(
        'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, I am going to eat that pussy once Jimmy leaves for school today!"'),
    Joke(
        'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it\'s either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"'),
    Joke('I would avoid the sushi if I was you. It’s a little fishy.'),
    Joke('Want to hear a joke about construction? I’m still working on it.'),
    Joke('I used to play piano by ear, but now I use my hands.'),
    Joke('I don’t trust stairs because they’re always up to something.'),
    Joke('Why don’t scientists trust atoms? Because they make up everything!'),
    Joke(
        'Why did the scarecrow win an award? Because he was outstanding in his field.'),
    Joke(
        'Parallel lines have so much in common. It’s a shame they’ll never meet.'),
    Joke(
        'Two hunters are out in the woods when one of them collapses. He’s not breathing and his eyes are glazed. The other guy whips out his phone and calls the emergency services. He gasps, "My friend is dead! What can I do?" The operator says, "Calm down. I can help. First, let’s make sure he’s dead." There’s a silence, then a gunshot is heard. Back on the phone, the guy says, "OK, now what?"'),
    Joke(
        'A wife complains to her husband that he’s not romantic anymore. So he comes home with a bottle of wine, a blanket, and a bunch of roses. They have a picnic in the living room and then make love on the blanket. She says, "Why don’t we do this more often?" He replies, "Because I hate getting up in the middle of the night to pee in a bush."'),
    Joke(
        'Sherlock Holmes and Dr. Watson are on a camping trip. After a good dinner and a bottle of wine, they retire for the night and go to sleep. Some hours later, Holmes wakes up and nudges his faithful friend. "Watson, look up at the sky and tell me what you see." Watson replies, "I see millions and millions of stars." "What does that tell you?" Holmes asks. Watson ponders for a minute. "Astronomically, it tells me that there are millions of galaxies and potentially billions of planets. Astrologically, I observe that Saturn is in Leo. Horologically, I deduce that the time is approximately a quarter past three. Theologically, I can see that God is all powerful and that we are small and insignificant. Meteorologically, I suspect that we will have a beautiful day tomorrow. What does it tell you?" Holmes is silent for a moment. "Watson, you idiot," he says. "Someone has stolen our tent!"'),
    Joke(
        'A man and a woman who have never met before find themselves in the same sleeping carriage of a train. After the initial embarrassment, they both manage to get to sleep; the woman on the top bunk, the man on the lower. In the middle of the night, the woman leans over and says, "I’m sorry to bother you, but I’m awfully cold and I was wondering if you could possibly pass me another blanket." The man leans out and, with a glint in his eye, says, "I’ve got a better idea… let’s pretend we’re married." "Why not," giggles the woman. "Good," he replies. "Get your own blanket."'),
    Joke(
        'A young boy enters a barber shop and the barber whispers to his customer, "This is the dumbest kid in the world. Watch while I prove it to you." The barber puts a dollar bill in one hand and two quarters in the other, then calls the boy over and asks, "Which do you want, son?" The boy takes the quarters and leaves. "What did I tell you?" said the barber. "That kid never learns!" Later, when the customer leaves, he sees the same young boy coming out of the ice cream store. "Hey, son! May I ask you a question? Why did you take the quarters instead of the dollar bill?" The boy licked his cone and replied, "Because the day I take the dollar, the game is over!"'),
  ];

  int currentIndex = 0;

  void nextJoke() {
    setState(() {
      if (currentIndex < jokes.length - 1) {
        currentIndex++;
      } else {
        currentIndex = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/logo.png',
            width: 50,
            height: 50,
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
                  margin: const EdgeInsets.symmetric(horizontal: 10),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'A joke a day keeps the doctor away',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
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
            Container(
              padding: const EdgeInsets.only(
                top: 40,
                right: 25,
                left: 25,
              ),
              height: 350,
              child: SingleChildScrollView(
                child: Text(
                  currentIndex == -1
                      ? "That's all the jokes for today! Come back another day!"
                      : jokes[currentIndex].text,
                  style: TextStyle(
                    color: ColorUtil.greyColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: currentIndex == -1
                      ? null
                      : () {
                          nextJoke();
                        },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorUtil.blueColor
                          .withOpacity(currentIndex == -1 ? 0.5 : 1),
                    ),
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
                  onPressed: currentIndex == -1
                      ? null
                      : () {
                          nextJoke();
                        },
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorUtil.greenColor
                          .withOpacity(currentIndex == -1 ? 0.5 : 1),
                    ),
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
              padding: const EdgeInsets.all(10),
              child: Text(
                'This appis created as part of Hisolutions program. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor-mation contained on this site.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorUtil.greyColor,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              alignment: Alignment.center,
              child: Text(
                'Coppyright 2021 HLS',
                style: TextStyle(
                  color: ColorUtil.greyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
