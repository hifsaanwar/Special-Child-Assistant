import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_application_2/components/contact_list_tile.dart';
import 'package:flutter_application_2/screens/jobs/jobs.dart';
import 'package:flutter_application_2/screens/messages/message_screen.dart';
import 'package:uuid/uuid.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({Key? key}) : super(key: key);
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<NewGroupScreen> {
  List<Contact> selectedContacts = [];
  Iterable<Contact>? _contacts;

  void InformMembers(String groupId) {
    var usersRef = FirebaseDatabase.instance.reference().child("Users");
    var groupsRef = FirebaseDatabase.instance.reference().child("Groups");
    Map values = new Map<dynamic, dynamic>();
    usersRef.once().then((snapshot) => {
          values = snapshot.value,
          values.forEach((key, value) {
            selectedContacts.forEach((member) {
              String email = member.emails.elementAt(0).value;
              String currentUserEmail =
                  FirebaseAuth.instance.currentUser!.email.toString();
              print("current user: ${currentUserEmail}");
              String currentUserUid =
                  FirebaseAuth.instance.currentUser!.uid.toString();
              var groups;
              if (value["groups"] == null) {
                groups = [];
              } else {
                groups = new List<dynamic>.from(value["groups"]);
              }
              if (value["email"] == email) {
                print("match found");
                groups.add(groupId);
                usersRef.child(key).child("groups").set(groups);
              }

              if (value["email"] == currentUserEmail) {
                print("match found");
                groups.add(groupId);
                usersRef.child(currentUserUid).child("groups").set(groups);
              }
            });
          })
        });
  }

  void SwapMemberEmailsWithIDs() {}

  @override
  void initState() {
    getContacts();
    super.initState();
  }

  Future<void> getContacts() async {
    //Make sure we already have permissions for contacts when we get to this
    //page, so we can just retrieve it
    final Iterable<Contact> contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Contacts')),
        actions: [
          TextButton(
            onPressed: () {
              createGroup(context);
            },
            child: Text("Create"),
            style: TextButton.styleFrom(primary: Colors.white),
          )
        ],
      ),
      body: _contacts != null
          //Build a list view of all contacts, displaying their avatar and
          // display name
          ? ListView.builder(
              itemCount: _contacts?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                Contact? contact = _contacts?.elementAt(index);
                final isSelected = selectedContacts.contains(contact);

                return ContactListTileWidget(
                    contact: contact!,
                    isSelected: isSelected,
                    onSelectedContact: selectContact);
              },
            )
          : Center(child: const CircularProgressIndicator()),
    );
  }

  void selectContact(Contact contact) {
    final isSelected = selectedContacts.contains(contact);
    setState(() => isSelected
        ? selectedContacts.remove(contact)
        : selectedContacts.add(contact));
  }

  late String groupName;
  TextEditingController _textFieldController = TextEditingController();

  Future<void> createGroup(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField in Dialog'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  groupName = value;
                });
              },
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              FlatButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                  var uuid = Uuid();
                  var groupId = uuid.v1();
                  List<String> memberEmails = [];
                  for (Contact c in selectedContacts) {
                    memberEmails.add(c.emails.elementAt(0).value);
                  }
                  var currentUserEmail =
                      FirebaseAuth.instance.currentUser!.email.toString();
                  memberEmails.add(currentUserEmail);
                  var ref = FirebaseDatabase.instance
                      .reference()
                      .child("Groups")
                      .child(groupId);

                  ref.child("name").set(groupName);
                  ref.child("members").set(memberEmails);

                  InformMembers(groupId);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MessagesScreen(
                            //members: selectedContacts,
                            groupName: groupName,
                            groupId: groupId)),
                  );
                },
              ),
            ],
          );
        });
  }
}
