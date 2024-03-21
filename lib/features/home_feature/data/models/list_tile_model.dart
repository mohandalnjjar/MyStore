class ListTileModel {
  final String title, imagePath;
  final void Function() onPressed;

  ListTileModel({
    required this.title,
    required this.imagePath,
    required this.onPressed,
  });
}
