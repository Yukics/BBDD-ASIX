insert into ApplyingToCollege.STUDENTS
values  (123,'Amy','Smith','3.9',1000),
        (234,'Bob','Taylor','3.6',1500),
        (345,'Craig','Davis','3.5',500),
        (456,'Doris','Roberts','3.9',1000),
        (543,'Craig','Wilder','3.4',2000),
        (567,'Edward','Norton','2.9',2000),
        (654,'Amy','Cooper','3.9',1000),
        (678,'Fay','Laurence','3.8',200),
        (765,'Jay','Farlong','2.9',1500),
        (789,'Gary','Oldman','3.4',800),
        (876,'Irene','Lopez','3.9',400),
        (987,'Helen','Karlson','3.7',800);

INSERT INTO COLLEGES
VALUES ('Berkeley', 'CA', 36000),
       ('Cornell', 'NY', 21000),
       ('MIT', 'MA', 10000),
       ('Stanford', 'CA', 15000),
       ('UIB', 'IB', 11500);

INSERT INTO APPLIES
VALUES (123,'Berkeley','CS',1),
       (123,'Cornell','EE',1),
       (123,'Stanford','CS',1),
       (123,'Stanford','EE',0),
       (234,'Berkeley','biology',0),
       (345,'Cornell','bioengineering',0),
       (345,'Cornell','CS',1),
       (345,'Cornell','EE',0),
       (345,'MIT','bioengineering',1),
       (543,'MIT','CS',0),
       (678,'Stanford','history',1),
       (765,'Cornell','history',0),
       (765,'Cornell','psychology',1),
       (765,'Stanford','history',1),
       (876,'MIT','biology',1),
       (876,'MIT','marine biology',0),
       (987,'Berkeley','CS',1),
       (987,'Stanford','CS',1);
