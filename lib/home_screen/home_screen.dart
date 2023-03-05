
import 'package:flutter/material.dart';


class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 234),
      body: 
      Column(
        children: [
          Container(
              height: 100,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 51, 33, 186)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              const Color.fromARGB(255, 51, 33, 186),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                      onPressed: () {},
                      child: const Icon(Icons.toc),
                    ),
                  ),
                  const Spacer(),
                 
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 150, 20),
                    
                    child: Text(
                      "MYAPP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)
                    ),
                  )
                ],
              )),
          Container(
            height: 50,
            //decoration: BoxDecoration(color: Color.fromARGB(255, 241, 219, 95)),
            child: Row(
              children: [
                SizedBox(
                  width: 205,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 231, 231, 234)),
                      onPressed: () {},
                      child: Text("Learning",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
                //Spacer(),

                SizedBox(
                  width: 205,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromARGB(255, 231, 231, 234)),
                        onPressed: () {},
                        child: Text(
                          "Social",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top:0),
            child: ListView.builder(itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 2),
              child: ListTile(shape: RoundedRectangleBorder(side:BorderSide(width: 1),borderRadius: BorderRadius.all(Radius.circular(5))),
                title: Text("Item {$index+1}"),
                subtitle: Text("Details"),
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.car_rental),
              ),
            )),
          ))
        ],
      ),
    );
  }
}
