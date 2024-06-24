class FeedbackForm {
  String message;

  FeedbackForm({
    required this.message,
  });

  String toParams() => "?message=$message";
}
