import 'package:flutter/material.dart';
import 'package:healthcare_app/screens/appointments.dart';
import 'package:healthcare_app/screens/navbar_roots.dart';

class HomeScreen extends StatelessWidget {
  final List symptoms = ["Temperature", "Snuffle", "Fever", "Cough", "Cold"];

  final List imgs = [
    "doctor 1.jpg",
    "doctor 2.png",
    "doctor 3.jpg",
        "doctor 4.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello Alex',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/doctor 1.jpg'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: const Color(0xFF7165D5),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 4,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    color: Colors.white, shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFF7165D6),
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Clinic Visit',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Make an appointment',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 4,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFF0EEFA),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.home_filled,
                                  color: Color(0xFF7165D6),
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Home Visit',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Call the doctor home',
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'What are your symptoms?',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                  height: 70,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: symptoms.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: const Color(0xFFF4F6FA),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Center(
                            child: Text(
                              symptoms[index],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          ),
                        );
                           }
                            )
                    ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Popular Doctors',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
              ),
                  itemCount: 4,
               shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
               itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Appointments()));
                  },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]
                      ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         CircleAvatar(
                           radius: 35,
                           backgroundImage:AssetImage('assets/images/${imgs[index]}'),
                         ),
                         const Text(
                          'Dr. Doctor Name',
                           style: TextStyle(
                             fontWeight: FontWeight.w500,
                             fontSize: 18,
                             color: Colors.black54,
                           ),
                         ),
                         const Text('Therapist',
                         style: TextStyle(
                           color: Colors.black45
                         ),),
                         const Row(
                           mainAxisSize: MainAxisSize.min,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                             ),
                             Text('4.9', style: TextStyle(color: Colors.black45),)
                           ],
      
                         )
      
                       ],
                     ) ,
                    ),
                );
              },)
            ],
          ),
      ),
    );
  }
}
