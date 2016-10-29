# sql-null-test
Simple Dockerfile to show the different ways that NULL messes with your SQL.

## OVERVIEW OF USAGE
by Billy Holmes <billy@gonoph.net>

To use: build the docker image, then run it.

    $ docker build -t sql-null-test .
    $ docker run --rm sql-null-test

### Sample output:

    select count(*) from states;
     count
    -------
	 7
    (1 row)

    select count(*) from states where active <> true or active <> false;
     count
    -------
	 5
    (1 row)

    select count(*) from states where active is null;
     count
    -------
	 2
    (1 row)

    select count(*) from states where active <> true AND active <> false;
     count
    -------
	 0
    (1 row)

     IsNull | equalsNull | notEqualsNull | notIsNull
    --------+------------+---------------+-----------
     t      |            |               | f
    (1 row)

