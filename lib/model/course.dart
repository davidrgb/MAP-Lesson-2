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
    number: 'CMSC 1613',
    title: 'Programming I',
    prereq: 'CMSC 1513',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ),
  Course (
    number: 'CMSC 2613',
    title: 'Programming II',
    prereq: 'CMSC 1613',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ),
  Course (
    number: 'CMSC 3613',
    title: 'Data Structures & Algorithms',
    prereq: 'CMSC 1613',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ),
  Course (
    number: 'SE 3103',
    title: 'Object Oriented SW Design',
    prereq: 'CMSC 2613',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ),
  Course (
    number: 'CMSC 4303',
    title: 'Mobile Apps Programming',
    prereq: 'SE 3103',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ), 
  Course (
    number: 'CMSC 4373',
    title: 'Web Server Programming',
    prereq: 'SE 3103',
    imageURL: 'https://images-na.ssl-images-amazon.com/images/I/517rMbNEp+L._SX258_BO1,204,203,200_.jpg',
  ), 
];
