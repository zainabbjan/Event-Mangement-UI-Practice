class BooksData {
  final String title;
  final String imageUrl;
  final String subtitle;
  BooksData({required this.imageUrl,required this.subtitle, required this.title});
}

List<BooksData> booksdata = [
BooksData(imageUrl: 'asset/z.png', subtitle: 'Sally Roonkey', title: 'George Bellairs'),
BooksData(imageUrl: 'asset/a.png', subtitle: 'Sally Roonkey', title: 'Normal People'),
BooksData(imageUrl: 'asset/fashion.png', subtitle: 'Dana Thomas', title: 'Fashionopolis'),

];
