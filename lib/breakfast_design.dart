import 'package:flutter/material.dart';
import 'package:flutter_application_1/database.dart';

class BreakfastDesignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, 
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(156, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: Center(
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(156, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white,width: 3),
                      ),
                      child: Center(
                        child: Text(
                          "Items",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(156, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_bag_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:5),


                Center(
                  child: Text(
                    "Breakfast",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),

                GridView.builder(
                  shrinkWrap: true, 
                  physics: NeverScrollableScrollPhysics(), 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: Database.mylist.length, 
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Database.mylist[index]['image']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          Text(
                            Database.mylist[index]['name'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            ],
                          ),
                        
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                          
                                   
                                Text(
                                  
                              "24oz",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                                
                              ],
                            ),
                        
                          
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        
                            children: [
                              Icon(Icons.attach_money,size: 19,),
                          Text(
                            Database.mylist[index]['price'],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                           CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.add,color: Colors.white,),
                            
                           ),
                          SizedBox(height: 10),
                            ],
                          ),
                        
                        ],
                      ),
                    );
                  },
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
