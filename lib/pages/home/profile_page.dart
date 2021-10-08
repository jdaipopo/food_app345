import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Container(
                  width: 160.0,
                  height: 160.0,
                  child: Image.asset('assets/images/profile2.jpg'),
                )
            ),
            Text("Sorawich Nitart",style: TextStyle(fontSize: 50.0),),
            Text("nitrat_s@silpakorn.edu",style: TextStyle(fontSize: 25.0),),
          ],
        ),
      ),
    );
  }
}
