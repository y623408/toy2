
class States { 
  final String name,image;
  int id;
  States({
    required this.name,
    required this.image,
    required this.id,
  });
}

List<States> states = [
  States(name: "Sikkim", image: "assets/images/states/sikkim.jpg", id: 1),
  States(name: "West Bengal", image: "assets/images/states/westBengal.jpg", id: 2),
  States(name: "Chhattisgarh", image: "assets/images/states/chhattisgarh.jpg", id: 3),
  States(name: "Goa", image: "assets/images/states/goa.jpg", id: 4),
  States(name: "Haryana", image: "assets/images/states/haryana.jpg", id: 5),
  States(name: "Jharkhand", image: "assets/images/states/jharkhand.jpg", id: 6),
  States(name: "Meghalaya", image: "assets/images/states/meghalaya.jpg", id: 7),
  States(name: "Madhya Pradesh", image: "assets/images/states/madhyaPradesh.jpg", id: 8),
  States(name: "Odisha", image: "assets/images/states/odisha.jpg", id: 9),
  States(name: "Punjab", image: "assets/images/states/punjab.jpg", id: 10),
];