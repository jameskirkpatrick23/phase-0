SELECT * FROM states;

SELECT * FROM regions;

SELECT state_name,population FROM states;

SELECT state_name,population FROM states ORDER BY population DESC;

SELECT state_name FROM states WHERE region_id = 7;

SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

SELECT  state_name FROM states WHERE population > 1000000 AND population < 150000;

SELECT state_name, region_id FROM states ORDER BY region_id ASC;

SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON regions.id=states.region_id ORDER BY region_id ASC;

![schema image](8-4-schema.png?raw=true "Schema")
<!--
What are databases for?
They are used in storing huge amounts of information

What is a one-to-many relationship?
where one ID or field maps to several different fields or data tables

What is a primary key? What is a foreign key? How can you determine which is which?
a primary key is the information that essentially sorts the information, and becomes the identifier in a computer. foriegn key is similar, however it maps itself to a different data table and can be useful in connecting various data structures to each other. You can determine which is which by looking at your schema and data structures

How can you select information out of a SQL database? What are some general guidelines for that?
probably the easiest way is to use the SELECT command, where you type in what you are looking for, and then refine your query with further identifiers. General guidelines are to try to say out loud what you are actually looking for as it will help you to write your query
-->
