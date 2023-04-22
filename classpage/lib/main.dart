
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassDetailsPage(),
    );
  }
}

class ClassDetailsPage extends StatefulWidget {
  ClassDetailsPage({Key? key}) : super(key: key);

  @override
  ClassDetailsPageState createState() => ClassDetailsPageState();
}

class ClassDetailsPageState extends State<ClassDetailsPage> {
  final classdetailscontroller = TextEditingController();
  final rollnodetailscontroller = TextEditingController();
  String printdata = '';

  void _setText() {
    setState(() {
      printdata = classdetailscontroller.text;
      printdata = rollnodetailscontroller.text;
    });
  }
 //void _setTexts() {
   // setState(() {
     // printdata = rollnodetailscontroller.text;
    //});
  //}
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF363E51),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0x34C8E8),
                        const Color(0xFF4E4AF2),
                      ],
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Class Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 51,
                width: 282,
                margin: const EdgeInsets.only(
                  left: 58,
                  top: 199,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF404C4F),
                      Color.fromARGB(255, 65, 84, 126),
                    ],
                  ),
                ),
                child: TextField(
                  controller: classdetailscontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter Class Name',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 51,
                width: 282,
                margin: const EdgeInsets.only(
                  left: 58,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF404C4F),
                      Color.fromARGB(255, 65, 84, 126),
                    ],
                  ),
                ),
                child: TextField(
                  controller: rollnodetailscontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter Roll Number',
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    
        SizedBox(width: 100,
          height: 90),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _setText,
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 65, 84, 126),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(100, 90),
            ),
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(width: 100,
          height: 90
          ,),
          ElevatedButton(
            onPressed: () {
            // TODO: implement save button logic
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 65, 84, 126),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(100, 90),
            ),
            child: Text(
              'Edit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
       Expanded(
  child: ListView.builder(
    shrinkWrap: true,
    itemCount: 1,
    itemBuilder: (context, index) => ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' ${classdetailscontroller.text}'),
          SizedBox(height: 8),
          Text('${rollnodetailscontroller.text}'),
        ],
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
//code not complete
