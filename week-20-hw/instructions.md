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


## Step 1: Design the Database Schema

Formulate a database schema to best represent the given scenario and events.

**Important Note:** You can structure and organize your database schema in any
way that you want. You can have any number of tables and columns, and table and
column names do not matter. However, there are certain schema configurations
that are more optimal for solving the problems in each event in the given
scenario.

Create the tables in __sql-files/01-create-tables.js__. This file will be
run before every spec for the rest of this project. You can have **multiple**
SQL statements in this file.
