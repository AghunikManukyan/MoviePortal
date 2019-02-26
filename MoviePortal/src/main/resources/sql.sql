/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - movie_portal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie_portal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `movie_portal`;

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`id`,`name`) values (1,'Melodrama'),(2,'Drama '),(3,'Comedy'),(4,'Adventure');

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `year` int(11) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `director` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

insert  into `movie`(`id`,`title`,`description`,`year`,`pic_url`,`created_date`,`director`) values (8,'Incredibles 2','Incredibles 2 is a 2018 American computer-animated superhero film produced by Pixar Animation Studios and distributed by Walt Disney Pictures. Written and directed by Brad Bird, it is a sequel to The Incredibles (2004) and the second full-length installment of the franchise. The story follows the Parr family as they try to restore the public\'s trust in superheroes while balancing their family life, only to combat a new foe who seeks to turn the populace against all superheroes. Craig T. Nelson, Holly Hunter, Sarah Vowell and Samuel L. Jackson reprise their roles from the first film; newcomers to the cast include Huckleberry Milner, Bob Odenkirk, Catherine Keener and Jonathan Banks. Michael Giacchino returned to compose the score.',2018,'1551180181929_220px-The_Incredibles_2.jpg','2019-02-26 02:23:01','John Walker'),(9,'Aladdin','Aladdin is an upcoming American musical romantic fantasy adventure film directed by Guy Ritchie, from the screenplay co-written with John August, and produced by Walt Disney Pictures. It is a live-action adaptation of Disney\'s 1992 animated film of the same name, which is in turn based on the Arabic folktale of the same name from One Thousand and One Nights and the French interpretation by Antoine Galland. The film stars Mena Massoud as the title character alongside Will Smith, Naomi Scott, Marwan Kenzari, Navid Negahban, Nasim Pedrad, Billy Magnussen, and Numan Acar.',2019,'1551180983130_download.jpg','2019-02-26 02:36:23','Guy Ritchie'),(10,'Dumbo','Dumbo is a 2019 upcoming American fantasy adventure film directed by Tim Burton, with a screenplay written by Ehren Kruger. It is loosely inspired by Walt Disney\'s 1941 animated film of the same name, itself based on the novel by Helen Aberson and Harold Pearl. The film stars Colin Farrell, Michael Keaton, Danny DeVito, Eva Green, and Alan Arkin.[3]  Plans of a live-action Dumbo remake were announced in 2014 and Burton was confirmed as director in March 2015. Much of the cast signed on in March 2017 and principal photography began in July of that year in the United Kingdom, lasting until November.',2019,'1551183499752_download.jpg','2019-02-26 03:18:19','Tim Burton');

/*Table structure for table `movie_genre` */

DROP TABLE IF EXISTS `movie_genre`;

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie_genre` */

insert  into `movie_genre`(`movie_id`,`genre_id`) values (9,1),(8,4),(9,4),(10,4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`pic_url`) values (1,'poxos','poxosyan','poxos@mail.ru','poxos','1550569306664_250px-Gatto_europeo4.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
