class Post {
  final String title;
  final String author;
  final String imageUrl;
  final String description;


  Post({
    this.title = '',
    this.author = '',
    this.imageUrl = '',
    this.description = '',
  });

  bool selected = false;
}

final List<Post>  posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://club2.autoimg.cn/album/g10/M0C/62/5E/userphotos/2021/01/31/02/820_ChwEnGAVn4yAKgi6AJ3Q7JJDB0Y482.jpg',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://club2.autoimg.cn/album/g29/M07/F6/3E/userphotos/2021/01/31/02/820_ChsEfmAVoLCAa5P-AB5RuX-XwDA693.jpg',
  ),
  Post(
    title: '媳妇当车模',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://club2.autoimg.cn/album/g30/M06/EC/84/userphotos/2021/01/31/02/820_ChsEf2AVoUuARHRJABtXSjWe84o553.jpg'
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://club2.autoimg.cn/album/g30/M02/09/49/userphotos/2020/06/24/18/820_ChsEf17zMcKAMFTQAAdsRanDnbI542.jpg'
  ),
  Post(
      title: 'Childhood picture',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
      imageUrl: 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg'
  ),
  Post(
      title: 'Childhood in a picture',
      author: 'Mohamed Chahin',
      imageUrl: 'https://club2.autoimg.cn/album/g30/M04/43/95/userphotos/2020/06/24/18/820_ChwFlF7zMcWADUDBAAdpVQMxviw176.jpg'
  ),
  Post(
      title: 'Childhood a picture',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',

      imageUrl: 'https://club2.autoimg.cn/album/g30/M04/43/95/userphotos/2020/06/24/18/820_ChwFlF7zMcaALA5SAAeB40MGrq8569.jpg'
  ),
  Post(
      title: 'Childhood picture',
      author: 'Mohamed Chahin',
      imageUrl: 'https://club2.autoimg.cn/album/g30/M06/1F/CF/userphotos/2020/06/28/12/820_ChsEoF74IeiAPUHgAAPFUILo9lE781.jpg'
  ),
  Post(
    title: 'Childhood',
    author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',

      imageUrl: 'https://club2.autoimg.cn/album/g27/M09/6C/F8/userphotos/2020/01/19/10/820_ChsEfF4juqaAUAR4AAQcRbKsGC0796.jpg'
  ),
  Post(
      title: 'Candy Shop',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',

      imageUrl: 'https://club2.autoimg.cn/album/g28/M07/FC/BC/userphotos/2019/11/01/23/820_ChsEnl28SR-AL_pwAAgViiyUy_I977.jpg'
  )
];