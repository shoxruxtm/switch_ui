import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;

  void onChanged(value){
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: isChecked
                ? const AssetImage("assets/images/photo-1640455101286-255daa5e1fea.jpg")
                : const AssetImage(
            "assets/images/photo-1640455101309-b01291172e71.jpg"),
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              ListBody(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: ColoredBox(
                      color: Colors.blueAccent,
                      child: SizedBox(
                        height: 60,
                        child: ListTile(
                          title:isChecked ? const Text(
                            "Dark Mode",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                          :const Text(
                            "Light Mode",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing:  Switch(
                            value: isChecked,
                            inactiveThumbImage: const AssetImage("assets/images/sun_PNG13424.png"),
                            activeThumbImage:const AssetImage("assets/images/png-transparent-moon-computer-icons-half-moon-s-atmosphere-astronomical-object-moon-thumbnail.png"),
                            onChanged: onChanged,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
