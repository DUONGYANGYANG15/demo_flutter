import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Thêm const ở đây
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Thêm constructor chuẩn cho Flutter 3.x

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Sử dụng giao diện Material 3 mới nhất cho đẹp
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Test Flutter"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Bạn đã nhấn số lần:', style: TextStyle(fontSize: 18)),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1", // Thêm tag để không bị lỗi Hero
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16), // Khoảng cách rộng hơn chút cho dễ bấm
          FloatingActionButton(
            heroTag: "btn2", // Thêm tag để không bị lỗi Hero
            onPressed: _decrementCounter,
            backgroundColor:
                Colors.redAccent, // Đổi màu nút trừ cho dễ phân biệt
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
