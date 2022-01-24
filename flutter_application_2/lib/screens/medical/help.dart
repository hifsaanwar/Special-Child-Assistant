

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/medical/symp.dart';

import '../../constants.dart';

class Help extends StatefulWidget {
  static String routeName = "/medical assistance";
  String? dropDownValue;

  Help(
    this.dropDownValue,
  );

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<String>? dropDownList;
  String? symptomsDropDown;

  @override
  void initState() {
    super.initState();

//   'cerebral-palsy',
//   'fragile-X-syndrome',
//   'downsyndrome',
//   'kernicterus',
//   'epilepsy',
//   'dyslexia',
//   'guchenne muscular dystrophy (DMD)'
    if (widget.dropDownValue == 'bilateral-hearing-loss') {
      dropDownList = bilateral_hearing_loss;
    } else if (widget.dropDownValue == 'fragile-X-syndrome') {
      dropDownList = fragile_X_syndrome;
    } else if (widget.dropDownValue == 'cerebral-palsy') {
      dropDownList = cerebral_palsy;
    } else if (widget.dropDownValue == 'downsyndrome') {
      dropDownList = downsyndrome;
    } else if (widget.dropDownValue == 'kernicterus') {
      dropDownList = kernicterus;
    } else if (widget.dropDownValue == 'epilepsy') {
      dropDownList = epilepsy;
    } else if (widget.dropDownValue == 'dyslexia') {
      dropDownList = dyslexia;
    } else if (widget.dropDownValue == 'guchenne muscular dystrophy (DMD)') {
      dropDownList = DMD;
    }
    symptomsDropDown = dropDownList![0];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String dropdown = widget.dropDownValue!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Medical Assistance"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StreamBuilder<QuerySnapshot>(
                // stream: FirebaseFirestore.instance
                //     .collection(widget.dropDownValue!)
                //     .snapshots(),
                stream: null,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error while loading'));
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  // if (snapshot.hasData && snapshot.data!.docs.isEmpty) {
                  //   return Center(
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(5),
                  //       child: Text('No Symptoms available'),
                  //     ),
                  //   );
                  // }
                  // var length = snapshot.data!.docs.length;
                  // DocumentSnapshot ds = snapshot.data!.docs[length - 1];
                  // symptomsDropDown = snapshot.data!.docs[0]['name'];
                  return Container(
                    height: size.height * 0.100,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        elevation: 1,
                        value: symptomsDropDown,
                        hint: Text('Choose Disease'),
                        items: dropDownList!
                            .map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,maxLines: 2,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: size.height * 0.016,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            symptomsDropDown = value!;
                          });
                        }),
                  );
                },
              ),
              //
              SizedBox(
                height: 30,
              ),
              symptomsDropDown == null
                  ? Container()
                  : StreamBuilder<DocumentSnapshot>(
                      stream: null,
                      builder: (context, snapshot) {
                        // if (snapshot.hasError) {
                        //   return Center(child: Text('Error while loading'));
                        // }
                        // if (snapshot.connectionState ==
                        //     ConnectionState.waiting) {
                        //   return Center(
                        //     child: CircularProgressIndicator(),
                        //   );
                        // }
                        // if (snapshot.hasData && !snapshot.data!.exists) {
                        //   return Center(
                        //       child: Text('No Description available'));
                        // }
                        return Column(
                          children: [
                            Text(
                              "Here's what you can  \n  do with your child",
                              style: TextStyle(
                                  color: Colors.black87.withOpacity(0.8),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(
                                child: Text("Emergency Help",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 20,
                                        //decoration: DecoratedBox(decoration: decoration),
                                        backgroundColor: Colors.lightGreen,
                                        fontWeight: FontWeight.w300))),
                            SizedBox(
                              height: 20,
                            ), //
                            // 'Reduced Hearing'
// 'Stiff Muscles', 'Tremors'
// 'Bulging Tongue',
//   'Upward Slanting Eyes',
//   'flat facial features'
// 'Difficulty in Language Processing',
//   'Unable to speak or pronounce words properly',
//   'flat facial features'
//   'Cyst', 'Lack of Oxygen', 'Stroke'
//   'Anxiety',
//   'Tempor Tantrums',
//   'self-destructive-behavior'
//   'Clumsiness', 'Headache', 'Seizures'
//   'Drowsiness', 'Paleness', 'Poor Feeding'
                            Text(
                              symptomsDropDown == 'Reduced Hearing'
                                  ? 'Use hearing aids immediately'
                                  : symptomsDropDown == 'Stiff Muscles'
                                      ? 'Physical therapy for muscle weakness'
                                      : symptomsDropDown == 'Tremors'
                                          ? 'Behavioral therapy can be used to address cognitive function '
                                          : symptomsDropDown == 'Bulging Tongue'
                                              ? 'You need to give your child an anti-inflammatory drug or an over-the-counter remedy like ibuprofen (Advil)'
                                              : symptomsDropDown ==
                                                      'Upward Slanting Eyes'
                                                  ? 'Contact a Medical Professional '
                                                  : symptomsDropDown ==
                                                          'flat facial features'
                                                      ? 'You need to take your child to the medical centre for treatment that includes the pediatric specialists across the many clinical areas your child may need.'
                                                      : symptomsDropDown ==
                                                              'Difficulty in Language Processing'
                                                          ? 'join special education classes at school'
                                                          : symptomsDropDown ==
                                                                  'Unable to speak or pronounce words properly'
                                                              ? 'work with a speech-language pathologist it will help your child improve your ability to communicate'
                                                              : symptomsDropDown ==
                                                                      'Cyst'
                                                                  ? 'Give your child some pain killer and observe symptoms '
                                                                  : symptomsDropDown ==
                                                                          'Lack of Oxygen'
                                                                      ? 'Ask your child to take deep breaths, and do mild exercise such as walking or yoga'
                                                                      : symptomsDropDown ==
                                                                              'Stroke'
                                                                          ? 'Take your child to hospital where doctors will quickly restore blood flow to your brain'
                                                                          : symptomsDropDown == 'Anxiety'
                                                                              ? 'In case of sudden anxiety attacks you need to do observed  breathing exercises with your child'
                                                                              : symptomsDropDown == 'Tempor Tantrums'
                                                                                  ? 'Use an upbeat tone when asking your child to do something. Make it sound like an invitation, not an order.'
                                                                                  : symptomsDropDown == 'self-destructive-behavior'
                                                                                      ? ' Show your care towards your child by talking to him peacefuly and try to comfort him'
                                                                                      : symptomsDropDown == 'Clumsiness'
                                                                                          ? 'Ask your child to do some exercises'
                                                                                          : symptomsDropDown == 'Headache'
                                                                                              ? 'Give your child simple pain relivers.'
                                                                                              : symptomsDropDown == 'Seizures'
                                                                                                  ? 'Loosen clothing around the child\'s neck, or roll the person on their side to keep the airway open.'
                                                                                                  : symptomsDropDown == 'Drowsiness'
                                                                                                      ? 'Get plenty of rest and distract yourself'
                                                                                                      : symptomsDropDown == 'Paleness'
                                                                                                          ? 'Call your doctor right away if you suddenly develop generalized pallor.'
                                                                                                          : symptomsDropDown == 'Poor Feeding'
                                                                                                              ? 'Seek immediate medical attention if your baby has not fed in over four hours'
                                                                                                              : 'Use hearing aids immediately',
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Text(
                                "Professional Medical Assistance ",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.8),
                                    fontSize: 20,
                                    backgroundColor: Colors.lightGreen,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              symptomsDropDown == 'Reduced Hearing'
                                  ? 'Go see a ENT specialist'
                                  : symptomsDropDown == 'Stiff Muscles'
                                      ? 'Consult Child neurologists (doctors with special training in childhood diseases of the brain, spine, and nerves).'
                                      : symptomsDropDown == 'Tremors'
                                          ? 'Beta-blocking drugs such as propranolol are normally used to treat high blood pressure but they also help treat essential tremor '
                                          : symptomsDropDown == 'Bulging Tongue'
                                              ? 'Make an appointment with your doctor if you see the telltale indentations of a scalloped tongue. '
                                              : symptomsDropDown ==
                                                      'Upward Slanting Eyes'
                                                  ? 'Contact a Medical Professional '
                                                  : symptomsDropDown ==
                                                          'Flat facial features'
                                                      ? 'Consult a surgeon with expertise in pediatric plastic and reconstructive surgery who specializes in treating this rare condition. '
                                                      : symptomsDropDown ==
                                                              'Difficulty in Language Processing'
                                                          ? 'Give your child simple and direct instructions.'
                                                          : symptomsDropDown ==
                                                                  'Unable to speak or pronounce words properly'
                                                              ? 'Ask your child to do physical exercises that focus on strengthening the muscles that produce speech sounds'
                                                              : symptomsDropDown ==
                                                                      'Cyst'
                                                                  ? 'Incase of severity, seek professional assistance '
                                                                  : symptomsDropDown ==
                                                                          'Lack of Oxygen'
                                                                      ? 'Early diagnosis and treatment can help ensure the condition does not get worse and cause dangerous complications.'
                                                                      : symptomsDropDown ==
                                                                              'Stroke'
                                                                          ? 'Immediately take your child to hospital where doctors will quickly restore blood flow to your brain'
                                                                          : symptomsDropDown == 'Anxiety'
                                                                              ? 'Cognitive behavioral therapy (CBT) is a treatment that involves changing your childs way of thinking as well as your behavioral patterns.'
                                                                              : symptomsDropDown == 'Tempor Tantrums'
                                                                                  ? 'Keep a record of your childs behavior for a few days before your doctor visit. This will help the doctor assess your childs behavior and decide if testing is needed.'
                                                                                  : symptomsDropDown == 'Self-destructive-behavior'
                                                                                      ? ' Behavioral therapy can be used for short or long term. Therapist can help your child  become more aware of triggers and how to respond in a less disruptive way.'
                                                                                      : symptomsDropDown == 'Clumsiness'
                                                                                          ? 'Give your child Anticoagulants it prevents blood clot by targeting proteins that cause clotting '
                                                                                          : symptomsDropDown == 'Headache'
                                                                                              ? 'Consult your doctor to give your child comination drugs.'
                                                                                              : symptomsDropDown == 'Seizures'
                                                                                                  ? 'Use anti-seizure medications'
                                                                                                  : symptomsDropDown == 'Drowsiness'
                                                                                                      ? 'Spend the night in the hospital or a sleep center under the observation and care of a sleep specialist'
                                                                                                      : symptomsDropDown == 'Paleness'
                                                                                                          ? 'If you develop paleness and symptoms such as fatigue and mild shortness of breath immediately consult your doctor.'
                                                                                                          : symptomsDropDown == 'Poor Feeding'
                                                                                                              ? 'Take your child to a pediatrician for evaluation'
                                                                                                              : 'Seek medical help immediately',
                            ),
                          ],
                        );
                      }),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> bilateral_hearing_loss = ['Reduced Hearing'];

List<String> cerebral_palsy = ['Stiff Muscles', 'Tremors'];
List<String> downsyndrome = [
  'Bulging Tongue',
  'Upward Slanting Eyes',
  'flat facial features'
];

List<String> dyslexia = [
  'Difficulty in Language Processing',
  'Unable to speak or pronounce words properly',
  'flat facial features'
];

List<String> epilepsy = ['Cyst', 'Lack of Oxygen', 'Stroke'];

List<String> fragile_X_syndrome = [
  'Anxiety',
  'Tempor Tantrums',
  'self-destructive-behavior'
];

List<String> DMD = ['Clumsiness', 'Headache', 'Seizures'];

List<String> kernicterus = ['Drowsiness', 'Paleness', 'Poor Feeding'];

// List<String> epilepsy = [
//   'bilateral-hearing-loss',
//   'cerebral-palsy',
//   'fragile-X-syndrome',
//   'downsyndrome',
//   'kernicterus',
//   'epilepsy',
//   'dyslexia',
//   'guchenne muscular dystrophy (DMD)'
// ];
