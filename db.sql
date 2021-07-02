/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - userbehaviour
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`userbehaviour` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `userbehaviour`;

/*Table structure for table `accountdetails` */

DROP TABLE IF EXISTS `accountdetails`;

CREATE TABLE `accountdetails` (
  `username` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accountdetails` */

insert  into `accountdetails`(`username`,`branch`,`email`,`address`,`mobile`,`amount`) values ('ramu','ameerpet','ramu@gmail.com','Ameerpet','9052016340',68000),('shiva','ameerpet','shiva@gmail.com','hyd','9875641230',35000);

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `analyst` */

DROP TABLE IF EXISTS `analyst`;

CREATE TABLE `analyst` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `analyst` */

insert  into `analyst`(`username`,`password`) values ('admin','admin');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `book_name` varchar(100) DEFAULT NULL,
  `book_desc` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`book_name`,`book_desc`,`id`) values ('java','hi',1),('python','The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that r',2);

/*Table structure for table `cancelledproducts` */

DROP TABLE IF EXISTS `cancelledproducts`;

CREATE TABLE `cancelledproducts` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cancelledproducts` */

insert  into `cancelledproducts`(`username`,`category`,`productname`,`price`,`image`) values ('ramu','Laptops','dell laptop',25000,'dell.jpeg');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category`) values (1,'Sports'),(2,'Mobiles'),(3,'Laptops'),(4,'sarees');

/*Table structure for table `filters` */

DROP TABLE IF EXISTS `filters`;

CREATE TABLE `filters` (
  `words` varchar(100) DEFAULT NULL,
  `Value` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filters` */

insert  into `filters`(`words`,`Value`) values ('wonderful',1),('good',1),('supportive',1),('inspiring',1),('amazing',1),('motivative',1),('helpful',1),('beautiful',1),('friendly',1),('excellent',1),('awesome',1),('unbelieviable',1),('super',1),('tarrific',1),('well done',1),('delightful',1),('super',1),('fantastic',1),('brilliant',1),('beautiful',1),('nice',1),('verynice',1),('verygood',1),('bad',3),('verybad',3),('worst',3),('disappointing',3),('irritating',3),('ugly',3),('useless',3),('weak',3),('unwilling',3),('unintersted',3),('refusing',3),('sad',3),('awful',3),('poor',3),('cool',1),('kill you',2),('fool',2),('stupid',2),('idot',2),('bleady',2);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(40) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`category`,`productname`,`description`,`price`,`brand`,`image`) values (3,'Mobiles','Samsung J7','sfdfrgfd',6000,'Samsung','hp lap.jpeg');

/*Table structure for table `purchasedproducts` */

DROP TABLE IF EXISTS `purchasedproducts`;

CREATE TABLE `purchasedproducts` (
  `username` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `dt` text,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchasedproducts` */

insert  into `purchasedproducts`(`username`,`category`,`productname`,`price`,`dt`,`image`) values ('ramu','Mobiles','Samsung J7',6000,'2018:23:21 12:23:30','hp lap.jpeg'),('ramu','Mobiles','Samsung J7',6000,'2018:29:21 01:29:04','hp lap.jpeg'),('shiva','Laptops','dell laptop',25000,'2018:55:21 02:55:19','dell.jpeg'),('ramu','Mobiles','Samsung J7',6000,'2018:01:21 03:01:49','hp lap.jpeg');

/*Table structure for table `recommends` */

DROP TABLE IF EXISTS `recommends`;

CREATE TABLE `recommends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `productname` varchar(40) DEFAULT NULL,
  `recommendto` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `recommends` */

insert  into `recommends`(`id`,`username`,`productname`,`recommendto`,`description`) values (4,'ramu','Samsung J7','shiva','sfdfrgfd');

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `username` varchar(100) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `sentiment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviews` */

insert  into `reviews`(`username`,`productname`,`category`,`review`,`rating`,`sentiment`) values ('chotu','Samsung J7','Mobiles','screen is broken product is not good','1','negitive');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `bookid` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `book_desc` varchar(10000) DEFAULT NULL,
  `book_from` varchar(100) DEFAULT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `image` varchar(10000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`bookid`,`author`,`book_desc`,`book_from`,`book_title`,`image`,`price`) values ('2','J.K. Rowling|Mary GrandPré','hi','Paperback','Harry Potter and the Order of the Phoenix','https://images.gr-assets.com/books/1255614970l/2.jpg','870'),('3','Harper Lee','The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.','Paperback','To Kill a Mockingbird','https://images.gr-assets.com/books/1361975680l/2657.jpg','324'),('5','Markus Zusak','Trying to make sense of the horrors of World War II, Death relates the story of Liesel--a young German girl whose book-stealing and story-telling talents help sustain her family and the Jewish man they are hiding, as well as their neighbors.','Hardcover','The Book Thief','https://images.gr-assets.com/books/1522157426l/19063.jpg','552'),('6','C.S. Lewis|Pauline Baynes','Journeys to the end of the world, fantastic creatures, and epic battles between good and evil—what more could any reader ask for in one book? The book that has it all is The Lion, the Witch and the Wardrobe, written in 1949 by Clive Staples Lewis. But Lewis did not stop there. Six more books followed, and together they became known as The Chronicles of Narnia.For the past fifty years, The Chronicles of Narnia have transcended the fantasy genre to become part of the canon of classic literature. Each of the seven books is a masterpiece, drawing the reader into a land where magic meets reality, and the result is a fictional world whose scope has fascinated generations.This edition presents all seven books—unabridged—in one impressive volume. The books are presented here in chronlogical order, each chapter graced with an illustration by the original artist, Pauline Baynes. Deceptively simple and direct, The Chronicles of Narnia continue to captivate fans with adventures, characters, and truths that speak to readers of all ages, even fifty years after they were first published.','Paperback','The Chronicles of Narnia','https://images.gr-assets.com/books/1449868701l/11127.jpg','767'),('12','Dan Brown','An ingenious code hidden in the works of Leonardo da Vinci.A desperate race through the cathedrals and castles of Europe.An astonishing truth concealed for centuries . . . unveiled at last.While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.Even more startling, the late curator was involved in the Priory of Sion—a secret society whose members included Sir Isaac Newton, Victor Hugo, and Da Vinci—and he guarded a breathtaking historical secret. Unless Langdon and Neveu can decipher the labyrinthine puzzle—while avoiding the faceless adversary who shadows their every move—the explosive, ancient truth will be lost forever.','Paperback','The Da Vinci Code','https://images.gr-assets.com/books/1303252999l/968.jpg','481'),('16','Victor Hugo|Lee Fahnestock|Norman MacAfee','Introducing one of the most famous characters in literature, Jean Valjean—the noble peasant imprisoned for stealing a loaf of bread—Les Misérables ranks among the greatest novels of all time. In it, Victor Hugo takes readers deep into the Parisian underworld, immerses them in a battle between good and evil, and carries them to the barricades during the uprising of 1832 with a breathtaking realism that is unsurpassed in modern prose. Within his dramatic story are themes that capture the intellect and the emotions: crime and punishment, the relentless persecution of Valjean by Inspector Javert, the desperation of the prostitute Fantine, the amorality of the rogue Thénardier, and the universal desire to escape the prisons of our own minds. Les Misérables gave Victor Hugo a canvas upon which he portrayed his criticism of the French political and judicial systems, but the portrait that resulted is larger than life, epic in scope—an extravagant spectacle that dazzles the senses even as it touches the heart.','Mass Market Paperback','Les Misérables','https://images.gr-assets.com/books/1525303092l/24280.jpg','1463');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`dob`,`gender`,`address`,`mobile`,`status`) values (2,'ramu','ramu','ramu@gmail.com','1994-10-10','MALE','Ameerpet','9052016340','Activated'),(3,'shiva','shiva','shiva@gmail.com','1993-10-10','MALE','Ameerpet','9876541230','Activated');

/*Table structure for table `userintention` */

DROP TABLE IF EXISTS `userintention`;

CREATE TABLE `userintention` (
  `username` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userintention` */

insert  into `userintention`(`username`,`category`,`productname`,`status`) values ('ramu','Mobiles','Samsung J7','Canceled'),('ramu','Mobiles','Mi','Canceled'),('shiva','Laptops','dell laptop','No'),('shiva','Laptops','dell laptop','Added'),('shiva','Laptops','dell laptop','Purchased'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','Added'),('ramu','Mobiles','Samsung J7','Purchased'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No'),('ramu','Mobiles','Samsung J7','No');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
