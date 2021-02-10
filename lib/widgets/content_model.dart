class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Search for fevourite foods near you',
      image: 'assets/images/splash2.png',
      discription: "Discover the foods from over 3250 restaurants"),
  UnbordingContent(
      title: 'Fast delivery to your place',
      image: 'assets/images/splash3.png',
      discription: "Fast delivery to your home, office and wharever you are"),
  UnbordingContent(
      title: 'Tracking shipper on the map',
      image: 'assets/images/splash1.png',
      discription: "The best way to see your food delivered in time"),
];
