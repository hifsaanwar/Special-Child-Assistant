class Hospital {
  String id, Name;
  double latitude, longitude, distance;
  //List<Contact> members;
  Hospital({
    //required this.members,
    this.id = '',
    this.Name = '',
    this.latitude = 0,
    this.longitude = 0,
    this.distance = 0,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) => Hospital(
        id: json["id"],
        Name: json["name"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        distance: 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": Name,
        "latitude": latitude,
        "longitude": longitude,
        "distance": distance,
      };
}
