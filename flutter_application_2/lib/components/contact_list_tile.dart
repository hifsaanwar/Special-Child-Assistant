import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactListTileWidget extends StatelessWidget {
  final Contact contact;
  final bool isSelected;
  final ValueChanged<Contact> onSelectedContact;

  const ContactListTileWidget({
    Key? key,
    required this.contact,
    required this.isSelected,
    required this.onSelectedContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).primaryColor;
    final style = isSelected
        ? TextStyle(
            fontSize: 18,
            color: selectedColor,
            fontWeight: FontWeight.bold,
          )
        : TextStyle(fontSize: 18);

    return ListTile(
      onTap: () => onSelectedContact(contact),
      leading: (contact.avatar != null && contact.avatar.isNotEmpty)
          ? CircleAvatar(
              backgroundImage: MemoryImage(contact.avatar),
            )
          : CircleAvatar(
              child: Text(contact.initials()),
              backgroundColor: Theme.of(context).accentColor,
            ),
      title: Text(
        contact.displayName,
        style: style,
      ),
      trailing:
          isSelected ? Icon(Icons.check, color: selectedColor, size: 26) : null,
    );
  }
}
