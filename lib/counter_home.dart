import 'package:counter_demo/shared/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterHome> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'COUNTER X',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Counter: $counter",
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            if (counter == 10)
              Text(
                "Congratulations! you have reached 10!!!",
                style: const TextStyle(fontSize: 20, color: Colors.red),
              ),
            //SizedBox(height: 20),

            const SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomButton(
                      icon: SvgPicture.asset(
                        "assets/training-achievement-medal-svgrepo-com.svg",
                        fit: BoxFit.contain,
                      ),
                      label: 'Increment',
                      buttonBgColor: Colors.green,
                      // buttonTextColor: Colors.blue,
                      onPressed: () {
                        // Increment the counter and update the UI
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),

                  Expanded(
                    child: CustomButton(
                      icon: SvgPicture.asset(
                        "assets/training-achievement-medal-svgrepo-com.svg",
                        fit: BoxFit.contain,
                      ),
                      label: 'Reset',
                      buttonBgColor: Colors.teal,
                      // buttonTextColor: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  //   // Chain
                  //   // Tap ---> Callback runs ----> Count Increases ----> setState() notifies Flutter to rebuild the widget tree ----> UI rebuilds ----> New count appears
                  // ),
                  Expanded(
                    child: CustomButton(
                      icon: SvgPicture.asset(
                        "assets/training-achievement-medal-svgrepo-com.svg",
                        fit: BoxFit.contain,
                      ),
                      label: 'Decrement',
                      buttonBgColor: Colors.blue,
                      // buttonTextColor: Colors.blue,
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            counter--;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
