import 'package:flutter/material.dart';

void main() => runApp(MadrasaOnlineApp());

class MadrasaOnlineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مدرسہ آن لائن',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'NotoSans',
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    PlaceholderScreen(title: 'ہوم'),
    PlaceholderScreen(title: 'قرآن'),
    PlaceholderScreen(title: 'احادیث'),
    PlaceholderScreen(title: 'فتاویٰ'),
    PlaceholderScreen(title: 'عقائد'),
    PlaceholderScreen(title: 'وظائف و اوراد'),
    PlaceholderScreen(title: 'روحانی و طبی علاج'),
    PlaceholderScreen(title: 'دیگر'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مدرسہ آن لائن'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ہوم'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'قرآن'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'احادیث'),
          BottomNavigationBarItem(icon: Icon(Icons.gavel), label: 'فتاویٰ'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'عقائد'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'وظائف'),
          BottomNavigationBarItem(icon: Icon(Icons.healing), label: 'علاج'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'دیگر'),
        ],
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Expanded(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/logo.png', width: 160, height: 100),
                    SizedBox(height: 16),
                    Text('یہ ایک placeholder صفحہ ہے۔ یہاں اصل مواد بعد میں شامل کیا جائے گا۔', textAlign: TextAlign.center),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () { /* placeholder action */ },
                      child: Text('مزید شامل کریں'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
