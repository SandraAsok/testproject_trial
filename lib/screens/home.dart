import 'package:flutter/material.dart';
import 'package:testproject_trial/core/constants.dart';
import 'package:testproject_trial/widgets/container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showNextButton = true;

  //part 1
  bool showFormA = false;
  bool showFormB = false;
  bool showFormC = false;

  //part 2
  bool showBackSubmitButtons = false;
  bool showPersonalDetails = true;
  bool showFormPage = false;
  bool showCareerPage = false;
  bool showSubmit = false;

  //part 3
  bool showFormD = false;
  bool showFormE = false;
  bool showFormF = false;

// elevated button style
  buttonStyle(bool isSelected) {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      backgroundColor: isSelected ? orange : lightgrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }

  buttonStyle2(bool isSelected) {
    return ElevatedButton.styleFrom(
      backgroundColor: isSelected ? orange : lightgrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Container(color: darkgrey, height: 15),
          Container(
            color: white,
            height: height / 2,
            child: Row(
              children: [
// part 1
                Container(
                  height: height / 2,
                  width: width / 4,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border(
                      right: BorderSide(color: black, width: 4.0),
                      bottom: BorderSide(color: black, width: 4.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showFormB = false;
                            showFormC = false;
                            showFormD = false;
                            showFormE = false;
                            showFormF = false;
                            showBackSubmitButtons = false;
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showSubmit = false;
                            showFormA = true;
                          });
                        },
                        // style: ElevatedButton.styleFrom(
                        //   backgroundColor: lightgrey,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0),
                        //   ),
                        // ),
                        style: buttonStyle(showFormA),
                        child: Text(
                          "Form A",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showFormA = false;
                            showFormC = false;
                            showFormD = false;
                            showFormE = false;
                            showFormF = false;
                            showBackSubmitButtons = false;
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showSubmit = false;
                            showFormB = true;
                          });
                        },
                        style: buttonStyle(showFormB),
                        child: Text(
                          "Form B",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showFormA = false;
                            showFormB = false;
                            showFormD = false;
                            showFormE = false;
                            showFormF = false;
                            showBackSubmitButtons = false;
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showSubmit = false;
                            showFormC = true;
                          });
                        },
                        style: buttonStyle(showFormC),
                        child: Text(
                          "Form C",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                    ],
                  ),
                ),
//Part 2
                Container(
                  height: height / 2,
                  width: width / 2,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: black, width: 4.0),
                  )),
                  child: Column(
                    children: [
                      Container(
                        height: height / 14.7,
                        width: width / 2,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(color: black, width: 3.0),
                        )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showFormA = false;
                                  showFormB = false;
                                  showFormC = false;
                                  showFormD = false;
                                  showFormE = false;
                                  showFormF = false;
                                  showFormPage = false;
                                  showCareerPage = false;
                                  showSubmit = false;
                                  showPersonalDetails = true;
                                });
                              },
                              style: buttonStyle2(showPersonalDetails),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    color: white, fontSize: fixedsize),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showFormA = false;
                                  showFormB = false;
                                  showFormC = false;
                                  showFormD = false;
                                  showFormE = false;
                                  showFormF = false;
                                  showPersonalDetails = false;
                                  showCareerPage = false;
                                  showSubmit = false;
                                  showFormPage = true;
                                });
                              },
                              style: buttonStyle2(showFormPage),
                              child: Text(
                                "Form",
                                style: TextStyle(
                                    color: white, fontSize: fixedsize),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showFormA = false;
                                  showFormB = false;
                                  showFormC = false;
                                  showFormD = false;
                                  showFormE = false;
                                  showFormF = false;
                                  showPersonalDetails = false;
                                  showFormPage = false;
                                  showSubmit = false;
                                  showCareerPage = true;
                                });
                              },
                              style: buttonStyle2(showCareerPage),
                              child: Text(
                                "Career",
                                style: TextStyle(
                                    color: white, fontSize: fixedsize),
                              ),
                            ),
                          ],
                        ),
                      ),
//part 3
                      if (showPersonalDetails)
                        Container(
                          height: height / 2.34,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: black, width: 4.0))),
                          child: Column(
                            children: [
                              kheight10,
                              Text(
                                "Personal Details",
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                              kheight10,
                              Row(
                                children: [
                                  kwidth10,
                                  Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                    ],
                                  ),
                                  //blank space
                                  const Spacer(),
                                  Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: fixedsize),
                                        ),
                                      ),
                                      kheight10,
                                    ],
                                  ),
                                  kwidth10,
                                ],
                              ),
                              kheight10,
                              Center(
                                child: showNextButton
                                    ? ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            showNextButton = false;
                                            showBackSubmitButtons = true;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: lightgrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Next",
                                          style: TextStyle(color: white),
                                        ),
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                showNextButton = true;
                                                showBackSubmitButtons = false;
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: lightgrey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Back",
                                              style: TextStyle(color: white),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                showFormB = false;
                                                showFormC = false;
                                                showFormD = false;
                                                showFormE = false;
                                                showFormF = false;
                                                showBackSubmitButtons = false;
                                                showPersonalDetails = false;
                                                showFormPage = false;
                                                showCareerPage = false;
                                                showFormA = false;
                                                showNextButton = true;
                                                showBackSubmitButtons = false;
                                                showSubmit = true;
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: lightgrey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(color: white),
                                            ),
                                          )
                                        ],
                                      ),
                              ),
                            ],
                          ),
                        ),
                      if (showSubmit)
                        Container(
                          height: height / 2.34,
                          color: white,
                          child: Center(
                            child: Text(
                              "Successfully Submitted",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      if (showFormPage)
                        ChangingContainer(
                            height: height,
                            color: orange,
                            content: "Form Page"),
                      if (showCareerPage)
                        ChangingContainer(
                            height: height,
                            color: redAccent,
                            content: "Career Page"),
                      if (showFormA)
                        ChangingContainer(
                            height: height, color: blue, content: "Form A"),
                      if (showFormB)
                        ChangingContainer(
                            height: height, color: yellow, content: "Form B"),
                      if (showFormC)
                        Container(
                          height: height / 2.34,
                          decoration: BoxDecoration(
                              color: black,
                              border: Border(
                                  bottom:
                                      BorderSide(color: black, width: 4.0))),
                          child: Center(
                            child: Text(
                              "Form C",
                              style: TextStyle(
                                  color: white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      if (showFormD)
                        Container(
                          height: height / 2.34,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 33, 75, 243),
                              border: Border(
                                  bottom:
                                      BorderSide(color: black, width: 4.0))),
                          child: Center(
                            child: Text(
                              "Form D",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      if (showFormE)
                        Container(
                          height: height / 2.34,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 5, 164, 227),
                              border: Border(
                                  bottom:
                                      BorderSide(color: black, width: 4.0))),
                          child: Center(
                            child: Text(
                              "Form E",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      if (showFormF)
                        Container(
                          height: height / 2.34,
                          decoration: BoxDecoration(
                              color: blue,
                              border: Border(
                                  bottom:
                                      BorderSide(color: black, width: 4.0))),
                          child: Center(
                            child: Text(
                              "Form F",
                              style: TextStyle(
                                  color: black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                //part 3
                Container(
                  height: height / 2,
                  width: width / 4,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border(
                      left: BorderSide(color: black, width: 4.0),
                      bottom: BorderSide(color: black, width: 4.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showFormA = false;
                            showFormB = false;
                            showFormC = false;
                            showFormE = false;
                            showFormF = false;
                            showSubmit = false;
                            showFormD = true;
                          });
                        },
                        style: buttonStyle(showFormD),
                        child: Text(
                          "Form D",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showFormA = false;
                            showFormB = false;
                            showFormC = false;
                            showFormD = false;
                            showFormF = false;
                            showSubmit = false;
                            showFormE = true;
                          });
                        },
                        style: buttonStyle(showFormE),
                        child: Text(
                          "Form E",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showPersonalDetails = false;
                            showFormPage = false;
                            showCareerPage = false;
                            showFormA = false;
                            showFormB = false;
                            showFormC = false;
                            showFormE = false;
                            showFormD = false;
                            showSubmit = false;
                            showFormF = true;
                          });
                        },
                        style: buttonStyle(showFormF),
                        child: Text(
                          "Form F",
                          style: TextStyle(color: white, fontSize: fixedsize),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
