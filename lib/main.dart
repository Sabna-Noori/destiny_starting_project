
import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destiny());

class Destiny extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late StoryBrain storyBrain;
   @override
  void initState() {
     super .initState();
     storyBrain = StoryBrain();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [
               Colors.grey[300]!,
               Colors.pink[900]!,
               Colors.deepPurple,
             ],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
           ),
    ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(
    'موتر شما در جاده ای پر پیچ و خم، در میانۀ ناکجاآباد تایر ترکانده و ساحه خارج از محدوده ی پوشش شبکه هاست. شما تصمیم میگیرید که از موتر های دیگر درخواست لیفت کنید. یک وانت زنگ زده به ایستگاهی در کنار شما می‌پیچد. مردی با کلاه لبه‌ پهن و چشمان بی‌روح در مسافر را به روی شما باز می‌کند و می‌پرسد: «میخواهی جایی برسانمت، پسر؟».',
    ),
                textDirection:
               TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                   setState((){
                     storyBrain.nextStory(1);
                   });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple[700],
                  shape:
                      RoundedRectangleBorder(
                        borderRadius:
                          BorderRadius.circular(22.0),),
                      ),
                  child: Text(
                    storyBrain.getChoice1(
                    'حد اقل بخاطر صادق بودنش سوار میشم.'
                    ),
                   textDirection:
                       TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    ),
                ),
              ),
                SizedBox(height: 30.0),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible:
                  storyBrain.buttonShouldBeVisible(),
                child: TextButton(
                  onPressed: () {
                setState((){
               storyBrain.nextStory(2);
               });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(22.0),),),
                  child: Text(
                  storyBrain.getChoice2(
                    'یک لحظه، بلدم تایر موتر را عوض کنم.',
                  ),
                  textDirection:
                   TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
