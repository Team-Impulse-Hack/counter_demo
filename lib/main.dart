import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      //debugShowCheckedModeBanner: true,
      home: CounterDemo(),
    ),
  );
}

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f172a),
      appBar: AppBar(title: const Text('COUNTER X', style: TextStyle(fontSize: 40,color: Colors.white)),
      
      backgroundColor: Color(0xff0f172a),
      ),
    
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Text("Counter: $counter", style: const TextStyle(fontSize: 40,color: Colors.white)),
            if (counter ==10 ) Text("Congratulations! you have reached 10!!!", style: const TextStyle(fontSize: 20, color: Colors.red)),
            SizedBox(height: 20),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF90ee90),foregroundColor: Color(0xffffffff) ),
                  child: Text('Increment', style: TextStyle(fontSize: 20), ),
                  onPressed: () {
                    // Increment the counter and update the UI
                    setState(() {
                     counter++;
                    });
                  },
                
                  // Chain
                  // Tap ---> Callback runs ----> Count Increases ----> setState() notifies Flutter to rebuild the widget tree ----> UI rebuilds ----> New count appears
                ),
              
            
             ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFffbf00),foregroundColor: Color(0xffffffff)),
              child: Text('Decrement', style: TextStyle(fontSize: 20)),
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
             ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xffff0000),foregroundColor: Color(0xffffffff)),
              child: Text('Reset', style: TextStyle(fontSize: 20)),
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

// =>
// {
// }
