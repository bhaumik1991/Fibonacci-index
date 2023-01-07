import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final num1 = TextEditingController();
  String getResult = "0";


  int findIndex(int n) {
    if (n <= 1) {
      return n;
    }
    int a = 0, b = 1, c = 1;
    int res = 1;
    while (c < n) {
      c = a + b;
      res++;
      a = b;
      b = c;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the number"
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  setState((){
                    int result = findIndex(int.parse(num1.text));
                    getResult = result.toString();
                    print(getResult);
                  });
                },
                child: Text("Get Result")
            ),
            SizedBox(height: 20,),
            Text("The index of the fibonacci number is : $getResult"),
          ],
        ),
      ),
    );
  }
}
