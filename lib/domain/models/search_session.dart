class SearchSession {
  final String requestId;
  final String status;

  SearchSession({
    required this.requestId,
    required this.status,
  });

  factory SearchSession.fromJson(Map<String, dynamic> json) {
    return SearchSession(
      requestId: json['request_id'],
      status: json['status'],
    );
  }
}
