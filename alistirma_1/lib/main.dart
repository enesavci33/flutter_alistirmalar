import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENES AVCI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Center(
        child: MyHomePage(title: 'ENES AVCI'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String combinedWords = "", Words1 = "ENES AVCI";

class _MyHomePageState extends State<MyHomePage> {
  void combine() {
    setState(() {
      combinedWords = Words1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('./lib/assets/fb.png'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Center(
                        child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: combine,
                            child: const Text("Buttona bas yandaki yazıyı gör",
                                style: TextStyle(color: Colors.black))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("./lib/assets/lacivert.png")),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          combinedWords,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(
                        child: Image(
                          image: AssetImage("./lib/assets/fenerbahce.gif"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Image.asset('./lib/assets/yazilim.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(
                        child: Text(
                          "1.bölüm",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "1.bölüm üst",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "2.bölüm alt",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
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
