CREATE DATABASE if not exists ApplyingToCollege;
use ApplyingToCollege;
create table if not exists STUDENTS
(
    `id`               int         not null unique,
    `name`             varchar(40) not null,
    `surname`          varchar(80) not null,
    `mark`             float       not null,
    `size_high_school` int         not null,
    primary key (`id`)
) engine=InnoDB;

create table if not exists COLLEGES
(
    `name`          varchar(40) not null unique,
    `state`         varchar(2)  not null,
    `enrollment`    int         not null,
    primary key (`name`)
) engine=InnoDB;

create table if not exists APPLIES
(
    `sid`               int         not null,
    `college`           varchar(40) not null,
    `major`             varchar(40) not null,
    `decision`          boolean     not null,
    primary key (`sid`,`college`,`major`),

    index `fk_sid_students_idx` (`sid` ASC) VISIBLE,
    index `fk_college_colleges_idx` (`college` ASC) VISIBLE,

    CONSTRAINT `fk_sid_students`
    FOREIGN KEY (`sid`)
    REFERENCES `ApplyingToCollege`.`STUDENTS`(`id`)
    on update no action
    on delete no action,


    CONSTRAINT `fk_college_colleges`
    FOREIGN KEY (`college`)
    REFERENCES `ApplyingToCollege`.`COLLEGES` (`name`)
    on update no action
    on delete no action

) engine=InnoDB;


