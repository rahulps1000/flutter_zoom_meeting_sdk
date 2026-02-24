/// Request params for [ActionType.joinMeeting]
class ZoomMeetingSdkRequest {
  /// The meeting number
  final String meetingNumber;

  /// The password for the meeting
  final String password;

  /// The display name for the meeting
  final String displayName;

  /// Optional. The webinar token for the meeting, required for webinar & registered meetings
  final String? webinarToken;

  /// Optional. The ZAK (Zoom Access Key) token for authenticating as a Zoom user (host).
  /// When provided, the meeting will be started as the host using the ZAK token
  /// instead of joining as a participant.
  final String? zakToken;

  ZoomMeetingSdkRequest({
    required this.meetingNumber,
    required this.password,
    required this.displayName,
    this.webinarToken,
    this.zakToken,
  });

  // Factory method to create the object from a Map
  factory ZoomMeetingSdkRequest.fromMap(Map<String, dynamic> map) {
    return ZoomMeetingSdkRequest(
      meetingNumber: map['meetingNumber'] ?? '',
      password: map['password'] ?? '',
      displayName: map['displayName'] ?? '',
      webinarToken: map['webinarToken'],
      zakToken: map['zakToken'],
    );
  }

  // Optional: toDictionary method if you want to send data back from Flutter to Swift
  Map<String, dynamic> toMap() {
    return {
      'meetingNumber': meetingNumber,
      'password': password,
      'displayName': displayName,
      'webinarToken': webinarToken,
      'zakToken': zakToken,
    };
  }
}
