class UserFields {
  static final String message = 'message';

  static List<String> getFields() => [message];
}

class User {
  final String message;

  const User({
    required this.message,
  });

  Map<String, dynamic> toJson() => {
        UserFields.message: message,
      };
}
