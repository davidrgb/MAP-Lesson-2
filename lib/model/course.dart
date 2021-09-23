class Course {
  late String number;
  late String title;
  late String prereq;
  late String imageURL;

  Course({
    required this.number,
    required this.title,
    required this.prereq,
    required this.imageURL,
  });
}

var courseList = [
  Course (
    number: 'CMSC 0000',
    title: 'Programming 0',
    prereq: 'CMSC 1513',
    imageURL: 'http://cs.uco.edu/files/lion.jpg',
  ),
  Course (
    number: 'CMSC 1613',
    title: 'Programming I',
    prereq: 'CMSC 1513',
    imageURL: 'https://m.media-amazon.com/images/I/517rMbNEp+L._AC_UY218_.jpg',
  ),
  Course (
    number: 'CMSC 2613',
    title: 'Programming II',
    prereq: 'CMSC 1613',
    imageURL: 'https://m.media-amazon.com/images/I/81V8Icx0SzL._AC_UY218_.jpg',
  ),
  Course (
    number: 'CMSC 3613',
    title: 'Data Structures & Algorithms',
    prereq: 'CMSC 1613',
    imageURL: 'https://m.media-amazon.com/images/I/51Xi-xuW8DL._AC_UY218_.jpg',
  ),
  Course (
    number: 'SE 3103',
    title: 'Object Oriented SW Design',
    prereq: 'CMSC 2613',
    imageURL: 'https://m.media-amazon.com/images/I/41Ji8X2MzGL._AC_UY218_.jpg',
  ),
  Course (
    number: 'CMSC 4303',
    title: 'Mobile Apps Programming',
    prereq: 'SE 3103',
    imageURL: 'https://m.media-amazon.com/images/I/61IwXwjf4VL._AC_UY218_.jpg',
  ), 
  Course (
    number: 'CMSC 4373',
    title: 'Web Server Programming',
    prereq: 'SE 3103',
    imageURL: 'https://m.media-amazon.com/images/I/71AjIOiBfbL._AC_UY218_.jpg',
  ), 
];
