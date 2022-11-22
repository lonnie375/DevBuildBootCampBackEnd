drop database if exists bootcampstudybuddy; 
create database bootcampstudybuddy;
use bootcampstudybuddy;
create table studyqa (
	id int NOT NULL auto_increment, 
    question varchar(1000), 
    answer varchar(1000), 
    primary key (id)
); 

create table favoriteqa (
	id int NOT NULL auto_increment, 
    question varchar(1000), 
    answer varchar(1000), 
    userid varchar(100) NOT NULL,
    primary key (id)
);

insert into studyqa (id, question, answer) values (1, 'What is ASP.Net?', 'It is a framework developed by Microsoft on which we can develop new generation web sites using web forms(aspx), MVC, HTML, Javascript, CSS etc. Its successor of Microsoft Active Server Pages(ASP).');
insert into studyqa (id, question, answer) values (2, 'What is an object?', 'An object is a class instance that can be used to access class methods. The "New" keyword can be used to construct an object.');
insert into studyqa (id, question, answer) values (3, ' What is the difference between out and ref parameters?', 'When an argument is passed as a ref, it must be initialized before it can be passed to the method. An out parameter, on the other hand, need not to be initialized before passing to a method.');
insert into studyqa (id, question, answer) values (4, 'Can “this” command be used within a static method?', 'No. This is because only static variables/methods can be used in a static method.');
insert into studyqa (id, question, answer) values (5, 'Is it possible for a private virtual method to be overridden?', 'A private virtual method cannot be overridden as it can’t be accessed outside the class.');
insert into studyqa (id, question, answer) values (6, 'How can the Array elements be sorted in descending order?', 'You can use the Using Sort() methods and then Reverse() method.');
insert into studyqa (id, question, answer) values (7, 'What are generics in C# .NET?', 'In order to reduce code redundancy, raise type safety, and performance, generics can be used in order to make code classes that can be reused. Collection classes can be created using generics.');
insert into studyqa (id, question, answer) values (8, 'What are Custom Exceptions?', 'In some cases, errors have to be handled according to user requirements. Custom exceptions are used in such cases.');
insert into studyqa (id, question, answer) values (9, 'How do you inherit a class into another class in C#?', 'In C#, colon can be used as an inheritance operator. You need to place a colon and follow it with the class name.');
insert into studyqa (id, question, answer) values (10, 'What is the difference between a Struct and a Class?', 'Structs are essentially value-type variables, whereas classes would be reference types.');


