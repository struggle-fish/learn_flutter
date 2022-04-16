class Post {
  final String title;
  final String author;
  final String imageUrl;

  Post({
    this.title = '',
    this.author = '',
    this.imageUrl = '',
  });


}

final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    imageUrl: 'https://club2.autoimg.cn/album/g10/M0C/62/5E/userphotos/2021/01/31/02/820_ChwEnGAVn4yAKgi6AJ3Q7JJDB0Y482.jpg',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    imageUrl: 'https://club2.autoimg.cn/album/g29/M07/F6/3E/userphotos/2021/01/31/02/820_ChsEfmAVoLCAa5P-AB5RuX-XwDA693.jpg',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    imageUrl: 'https://club2.autoimg.cn/album/g30/M06/EC/84/userphotos/2021/01/31/02/820_ChsEf2AVoUuARHRJABtXSjWe84o553.jpg'
  ),
];