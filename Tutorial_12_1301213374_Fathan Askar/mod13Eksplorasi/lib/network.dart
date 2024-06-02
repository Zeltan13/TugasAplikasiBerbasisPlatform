class Email {
  final int id;
  final String sender;
  final String subject;

  Email({required this.id, required this.sender, required this.subject});

  factory Email.fromJson(Map<String, dynamic> json) {
    return Email(
      id: json['id'],
      sender: json['sender'],
      subject: json['subject'],
    );
  }
}

Future<List<Email>> fetchEmails() async {
  await Future.delayed(Duration(seconds: 2));

  List<Email> emails = [
    Email(id: 1, sender: 'Fathan Askar (1301213374) IF-45-04', subject: 'Hello, how are you?'),
    Email(id: 2, sender: 'Jane Smith', subject: 'Meeting scheduled for tomorrow.'),
    Email(id: 3, sender: 'Alice Johnson', subject: 'Review the document attached.'),
    Email(id: 4, sender: 'Bob Williams', subject: 'Confirmation for the upcoming event.'),
    Email(id: 5, sender: 'Charlie Brown', subject: 'Lunch next week?'),
  ];

  return emails;
}
