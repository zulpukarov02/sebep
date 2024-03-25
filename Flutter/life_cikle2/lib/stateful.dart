import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // bashkaruu.dispose();
    super.dispose();
  }

  TextEditingController bashkaruu = TextEditingController();
  String text1 = '';
  // bir ozgormo jaryialandy bool tibinde ,istrue dep al birinchi maanisi  true;
  bool istrue = false;
  bool tusTyozgort = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tusTyozgort ? Colors.amber : Colors.blue,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Switch(
              // birinchi kelgende true
              value: istrue,

              onChanged: (ozgormo) {
                // istrue true bolup keldi = !istrue  falsego ailandy
                istrue = !istrue;
                // setState(() {}); bashynan kurup berdi
                setState(() {});
              },
            ),
            Checkbox(
              value: tusTyozgort,
              onChanged: (val) {
                // setState(() {});
                // tusTyozgort = !tusTyozgort;
                setState(() {
                  tusTyozgort = !tusTyozgort;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //enabled bul daiar proparti
                // istrue bul ozgormo
                enabled: istrue,
                onChanged: (val) {
                  text1 = val;
                  setState(() {});
                },
                // onSubmitted: (value) {
                //   setState(() {});
                // },
                controller: bashkaruu,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 10))),
              ),
            ),
            Text(
              bashkaruu.text,
              style: TextStyle(color: Colors.amber, fontSize: 20),
            ),
            FloatingActionButton(
              onPressed: istrue
                  ? () {
                      _counter++;
                      setState(() {});
                    }
                  : null,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
