class ListTileModel {
  final String title, imagePath;
  final String approuter;
  final void Function()? onpressed;

  const ListTileModel({
    this.onpressed,
    required this.title,
    required this.imagePath,
    required this.approuter,
  });
}
