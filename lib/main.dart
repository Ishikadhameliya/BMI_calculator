import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  double height = 180;
  double weight = 60;
  double age = 28;
  double bmi = 0;
  double bmiHeight = 0;
  Color maleContainerColor = const Color(0xff1d1e33);
  Color femaleContainerColor = const Color(0xff1d1e33);
  Color maleIconTextColor = Colors.white;
  Color femaleIconTextColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: const Color(0xff090e21),
      ),
//backgroundColor: Colors.transparent,
      body: Container(
        color: const Color(0xff090e21),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
//female and male
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          femaleContainerColor = const Color(0xff3b3c4d);
                          maleContainerColor = const Color(0xff1d1e33);
                          femaleIconTextColor = const Color(0xffeb1555);
                          maleIconTextColor = Colors.white;
                        });
                      },
                      child: Ink(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: femaleContainerColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.female_sharp,
                                  size: 120, color: femaleIconTextColor),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: femaleIconTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            maleIconTextColor = const Color(0xffeb1555);
                            femaleIconTextColor = Colors.white;
                            maleContainerColor = const Color(0xff3b3c4d);
                            femaleContainerColor = const Color(0xff1d1e33);
                          });
                        },
                        child: Ink(
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: maleContainerColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.male,
                                    size: 120, color: maleIconTextColor),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: maleIconTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
//height
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "HEIGHT",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "${height.toInt()}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                    )),
                                const TextSpan(
                                    text: " cm",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                          ),
                          Slider(
                            min: 0,
                            max: 500,
                            activeColor: const Color(0xfff5c1d1),
                            thumbColor: const Color(0xffeb1555),
                            inactiveColor: const Color(0xff555555),
                            value: height,
                            divisions: 500,
                            onChanged: (val) {
                              setState(() {
                                height = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
//weight and age
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${weight.toInt()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4c4f5e),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                        color: Color(0xfffffff),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color:  Color(0xff6e6f7a),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      "+",
                                      style:  TextStyle(
                                        color: Color(0xfff67fa4),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1d1e33),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${age.toInt()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
//age//
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4c4f5e),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                        color: Color(0xfffffff),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              InkWell(
// splashColor: Colors.lightBlue,
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Ink(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff6e6f7a),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                        color: Color(0xfff67fa4),
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "BMI = ${bmi.toStringAsFixed(2)} kg/m²",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
//calculate
              InkWell(
                onTap: () {
                  setState(() {
                    bmiHeight = height / 100;
                    bmi = weight / (bmiHeight * bmiHeight);
                  });
                },
                child: Ink(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xffeb1555),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Calculate",
                      style: TextStyle(fontSize: 25, color: Colors.white),
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
