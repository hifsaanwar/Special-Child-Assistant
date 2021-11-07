import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:flutter_application_2/screens/medical/help.dart';

class Symptoms extends StatelessWidget {
  static String routeName = "/symptoms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("First Aid Help"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter Your Child's \n Symptoms Here",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),
              Center(child: SymptomForm()),
            ],
          ),
        ),
      ),
    );
  }
}

class SymptomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SymptomFormState();
  }
}

List<String> localData = [/*bilateral hearing loss*/'Reduced Hearing' ,/*Cerebral Palsy*/'Stiff Muscles' ,'Tremors' ,/*Fragile X syndrome*/'Tempor Tantrums' ,'Anxiety' ,'Aggressive/Self Destructive Behavior' ,'Hyperactivity' /*downsyndrome*/,'Flat Fatial Features','Bulging Toungue' ,'Upward Slanting Eyes'/*Kernicterus*/,'Fever/Drowsiness','Paleness' ,'Poor Feeding','Muscle Spasms'/*epilepsy*/,'Stroke','Lack Of Oxygen','Cyst'/*Dyslexia*/,'Difficulty in Language Processing/Learning','Unable to speak or pronounce words properly','Using a lot of "Umms" in Coversation',/*Dmd*/'Shortness of Breath','Headaches','Slow Movements','Seizures','Sleepiness','Trouble Concentrating','Clumsiness'];

class SymptomFormState extends State<SymptomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 1',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 2',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 3',
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new TextButton(
                child: const Text(
                  'Get Help',
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                },
              )),
        ],
      ),
    );
  }
}
