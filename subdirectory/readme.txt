https://www.kaggle.com/datasets/ayushchandramaurya/animation-movies

Table creation -

-> We downloaded our dataset from above which is a CSV file and used the first 5000 rows for our database.
-> We created separate CSV files for each of the tables we got after normalizing the functional dependencies into BCNF form.
-> The dataset has 4 columns that have multiple values in a single block which we handled accordingly by dividing them into different rows.
-> For these four columns after the row separation, we created two CSV files, among which one is creating a unique ID for each unique value by encoding it and then another CSV for the ID and the ID of the unique value.-
->The code used for this is named 'phase2code'. 
-> Then we created all the tables using create queries and imported the data into the tables using the import option given by PostgreSQL which we also mentioned in our video presentation.

