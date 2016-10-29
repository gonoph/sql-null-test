create database temp_17985;
\c temp_17985

create table states ( ID integer, name varchar(25), active boolean);
insert into
       states
values (1, 'Ready', true)
     , (2, 'Set', true)
     , (3, 'Go', true)
     , (4, 'Wait', false)
     , (5, 'Stop', false)
     , (6, 'Unknown', NULL)
     , (NULL, 'Invalid', NULL);

\qecho select count(*) from states;
select count(*) from states;
\qecho select count(*) from states where active <> true or active <> false;
select count(*) from states where active <> true or active <> false;
\qecho select count(*) from states where active is null;
select count(*) from states where active is null;
\qecho select count(*) from states where active <> true AND active <> false;
select count(*) from states where active <> true AND active <> false;
select NULL IS NULL as "IsNull", NULL = NULL as "equalsNull", NULL <> NULL as "notEqualsNull", NULL IS NOT NULL as "notIsNull";
