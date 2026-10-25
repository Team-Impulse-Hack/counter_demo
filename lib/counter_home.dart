import 'package:counter_demo/shared/elevated_button.dart';
import 'package:flutter/material.dart';

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
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Counter: $counter",
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            if (counter == 10)
              Text(
                "Congratulations! you have reached 10!!!",
                style: const TextStyle(fontSize: 20, color: Colors.red),
              ),
            SizedBox(height: 20),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
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

                //   // Chain
                //   // Tap ---> Callback runs ----> Count Increases ----> setState() notifies Flutter to rebuild the widget tree ----> UI rebuilds ----> New count appears
                // ),
                CustomButton(
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
              ],
            ),
            CustomButton(
              label: 'Reset',
              buttonBgColor: Colors.teal,
              // buttonTextColor: Colors.blue,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
