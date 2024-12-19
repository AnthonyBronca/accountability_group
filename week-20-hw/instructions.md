# Scenario

You want to create a database to record the bouquets created in your flower
shop. A bouquet has a name and a price, and it consists of one or more flowers.
Each flower has a color, a qualitative stem length (e.g., 'medium'), and an
association to a variety of flower (e.g., 'Rose').

The flower shop currently has two bouquets in stock with the following flowers:

* First bouquet is named 'Get Well Soon'. It has a price of $59.99 and the
  following flowers (color, stem length, variety):
  * 'yellow', 'short',  'Carnation'
  * 'white',  'short',  'Carnation'
  * 'white',  'short',  'Lily'
  * 'yellow', 'medium', 'Solidago'
  * 'yellow', 'short',  'Daisy'
* Second bouquet is named 'Mother''s Day'. It has a price of $39.99 and the
  following flowers (color, stem length, variety):
  * 'pink',             'long', 'Carnation'
  * 'purple',           'long', 'Carnation'
  * no color specified, 'long', 'Baby''s Breath'


## Mon HW

Formulate a database schema to best represent the given scenario and events.

Create the tables in __create-tables.sql__. You can have **multiple**
SQL statements in this file.

HINT: Make sure to handle these items:

- ability to drop tables when they already exist
- price should be a decimal to 2 places


## TUE HW

*NOTE*, we will want to modify this later when we learn relationships

### Step 1
Using what we learned in class, we are now going to add data to the tables you should have created during the monday HW:

Insert the data for the given scenario and events in the insert-data.sql. This file will be run before every spec for the rest of this project. You can have multiple SQL statements in this file.


### Step 2
We need to find the bouquets in a price range. Here is a new scenario:

A customer on your website wants to find the names and prices of all the
bouquets priced between $30.45 and $40.36. The bouquets found should be ordered
alphabetically by name.


By the end of HW for Monday and HW for Tuesday you should be able to do these queries to get these results:

![bouquets](./output_images/bouquets.png)

![flower_types](./output_images/flower_types.png)


*NOTE*, we will insert flowers tomorrow when we learn about relationships

If you have everything set up correctly, then running a query on bouquets priced between $30.45 and $40.36 will output:
|              |       |
| ------------ | ----- |
| Mother's Day | 39.99 |

Running a query on bouquets priced greater than $50.00 will return:
|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |

Lastly, running a query that will check bouquets between $30.00 and $60.00 will return:
|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |
| Mother's Day  | 39.99 |


### Step 3

In the tue/delete-bouquet-by-name.sql file we need to delete the bouquet based on the following scenario:

The 'Get Well Soon' bouquet is not selling well, so you decide to remove it
from your inventory.

*NOTE* we will want to modify this later once we have flowers that also need to be deleted

When all is correct, if you run a query to get all bouqets

You should see:
|              |
| ------------ |
| Mother's Day |


### Step 4
In the `/tue/find-all-bouquets.sql` file, add a query to get all bouqets where they are ordered alphabetically

### Step 5
In the `/tue/find-all-flowers.sql` file, add a query to get all flowers where they are ordered alphabetically


## WED HW

### Step 1

Go back to Monday homework and add relationships between the flowers and bouquets they belong to. Remember to use `FOREIGN KEY` and `REFERENCES`

### Step 2

Find flower by variety

A customer really likes the 'Carnation' flower variety and wants to know the
name and price of the first bouquet (alphabetically) that has at least one
'Carnation'.

You should see:

|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |







# Full Instructions

If you are redoing all of this from scratch, here are the full instructions pieced together:


-----------------------------------------------------------------------


You want to create a database to record the bouquets created in your flower
shop. A bouquet has a name and a price, and it consists of one or more flowers.
Each flower has a color, a qualitative stem length (e.g., 'medium'), and an
association to a variety of flower (e.g., 'Rose').

The flower shop currently has two bouquets in stock with the following flowers:

* First bouquet is named 'Get Well Soon'. It has a price of $59.99 and the
  following flowers (color, stem length, variety):
  * 'yellow', 'short',  'Carnation'
  * 'white',  'short',  'Carnation'
  * 'white',  'short',  'Lily'
  * 'yellow', 'medium', 'Solidago'
  * 'yellow', 'short',  'Daisy'
* Second bouquet is named 'Mother''s Day'. It has a price of $39.99 and the
  following flowers (color, stem length, variety):
  * 'pink',             'long', 'Carnation'
  * 'purple',           'long', 'Carnation'
  * no color specified, 'long', 'Baby''s Breath'

## Events

You also want your database to be able to handle the following events:

1. A customer on your website wants to find the names and prices of all the
   bouquets priced between $30.45 and $40.36. The bouquets found should be
   ordered alphabetically by name.
2. You are taking an inventory and want to know the variety, color, and stem
   length of each 'pink' or 'purple' flower. Order the flowers by their variety,
   then their color, then their stem length.
3. A customer really likes the 'Carnation' flower variety and wants to know the
   name and price of the first bouquet (alphabetically) that has at least one
   'Carnation'.
4. The 'Get Well Soon' bouquet is not selling well, so you decide to remove it
   from your inventory. You want to remove the bouquet and all its associated
   flowers.

## Step 1: Design the Database Schema

Formulate a database schema to best represent the given scenario and events.

**Important Note:** You can structure and organize your database schema in any
way that you want. You can have any number of tables and columns, and table and
column names do not matter. However, there are certain schema configurations
that are more optimal for solving the problems in each event in the given
scenario.

Create the tables in __create-tables.sql__. This file will be
run before every spec for the rest of this project. You can have **multiple**
SQL statements in this file.


## Step 2: Insert the Data

Insert the data for the given scenario and events in
__insert-data.sql__. You can have **multiple** SQL statements in this file.


## Step 3: Find the bouquets in a price range

Structure a SQL query to satisfy the **first event** mentioned above:

A customer on your website wants to find the names and prices of all the
bouquets priced between $30.45 and $40.36. The bouquets found should be ordered
alphabetically by name.

Write your SQL query in __find-bouquets-by-price.sql__. You can have
**only one** SQL statement in this file.

expected output:
all bouquets priced between $30.45 and $40.36:

|              |       |
| ------------ | ----- |
| Mother's Day | 39.99 |

To test whether or not you have truly formed the query
correctly run a query with different price values substituted for
$30.45 and $40.36. Try to replace the original numbers in your query
with 50 and 60, respectively. It should return this result:

|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |

To test whether or not your query can correctly find all bouquets
between $30 and $60, it should return this:

|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |
| Mother's Day  | 39.99 |

**Important:** Your query only needs to solve the problem with the original
price range. If you have formed the original query correctly, the subsequent
transformations should produce the correct results.

**TIP:** Check your 1) database schema, 2) create table statements, and 3)
insertion statements if you get stuck. Errors at any of these levels could cause
errors to manifest in this step.

## Step 4: Find flowers by color

Structure a SQL query to satisfy the **second event:**

You are taking an inventory and want to know the variety, color, and stem
length of each 'pink' or 'purple' flower. Order the flowers by their variety,
then by their color, then by their stem length.

Write your SQL query in __find-flowers-by-color.sql__. You can have
**only one** SQL statement in this file.



To test your query, the output for the flowers that have a color of 'pink' or 'purple' should look like this:

|           |        |      |
| --------- | ------ | ---- |
| Carnation | pink   | long |
| Carnation | purple | long |

To check whether or not you have truly formed the query
correctly, run your query with different colors substituted for 'pink' and 'purple'. Try to replace the original colors in your query with 'white' and 'yellow', respectively. Then run your query again, checking for this result:

|           |        |        |
| --------- | ------ | ------ |
| Carnation | white  | short  |
| Carnation | yellow | short  |
| Daisy     | yellow | short  |
| Lily      | white  | short  |
| Solidago  | yellow | medium |

**Important:** Your query only needs to solve the problem with the original
colors. If you have formed the original query correctly, the subsequent
transformation should produce the correct results.

**TIP:** Check your 1) database schema, 2) create table statements, and 3)
insertion statements if you get stuck. Errors at any of these levels could cause
errors to manifest in this step.

## Step 5: Find a bouquet by flower variety

Structure a SQL query for the **third event:**

A customer really likes the 'Carnation' flower variety and wants to know the
name and price of the first bouquet (alphabetically) that has at least one
'Carnation'.

Write your SQL query in __find-a-bouquet-by-flower-variety.sql__.
You can have **only one** SQL statement in this file.

Expect the following output for the first bouquet that contains at least one flower with the variety of 'Carnation':

|               |       |
| ------------- | ----- |
| Get Well Soon | 59.99 |

To check whether or not you have truly formed the query correctly run your query with a different variety than 'Carnation'. Replace the original flower variety with 'Baby''s Breath'. Then run the query, checking for this result:

|              |       |
| ------------ | ----- |
| Mother's Day | 39.99 |

**Important:** Your query only needs to solve the problem with the original
colors. If you have formed the original query correctly, the subsequent
transformation should produce the correct results.

**TIP:** Check your 1) database schema, 2) create table statements, and 3)
insertion statements if you get stuck. Errors at any of these levels could cause
errors to manifest in this step.

## Step 6: Delete a bouquet by its name

Structure a SQL delete statement for the **fourth event:**

The 'Get Well Soon' bouquet is not selling well, so you decide to remove it
from your inventory. You want to remove the bouquet and all its associated
flowers.

Write your SQL query in __delete-bouquet-by-name.sql__. You can have
**only one** SQL statement in this file.

To test:

Write the first SQL query in the __find-all-bouquets.sql__. It
should output the names of all the bouquets ordered alphabetically by name.

Write the second SQL query in __find-all-flowers.sql__. It should
output the variety, color, and stem length of all the flowers. Order the flowers
by their variety, then by their color, then by their stem length.


Your delete statement after being run, followed by running the two additional
SQL queries again should output:

The first additional SQL query should output the following:

|               |
| ------------- |
| Get Well Soon |
| Mother's Day  |

The second additional SQL query should output the following:

|               |        |        |
| ------------- | ------ | ------ |
| Baby's Breath | NULL   | long   |
| Carnation     | pink   | long   |
| Carnation     | purple | long   |
| Carnation     | white  | short  |
| Carnation     | yellow | short  |
| Daisy         | yellow | short  |
| Lily          | white  | short  |
| Solidago      | yellow | medium |

Running after the delete statement, the first additional SQL query should output the following:

|              |
| ------------ |
| Mother's Day |

The second additional SQL query should output the following:

|               |        |      |
| ------------- | ------ | ---- |
| Baby's Breath | NULL   | long |
| Carnation     | pink   | long |
| Carnation     | purple | long |


**TIP:** Check your 1) database schema, 2) create table statements, and 3)
insertion statements if you get stuck. Errors at any of these levels could cause
errors to manifest in this step.
