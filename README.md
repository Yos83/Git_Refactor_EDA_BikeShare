### 1. Git version control-refactor and merge- US Bikeshare database
The purpose of this project is to simulate a realistic workflow to refactor the previous US BikeShare project using Git.  
The US Bikeshare project and description is available at my EDA-USBikeshare repository.

### Based on Advanced Exploratory Data Analysis
This project focuses on pandas library usage and simple statistics methods to perform descriptive analysis on the bikeshare data from three major U.S. cities - Chicago, Washington, and New York City - to display information such as most popular days or most common stations. These insights are used to inform traffic and frequent visited sites to inform users volumnes and to track supply issues.

Running the program
You can input 'python bikeshare.py' on your terminal to run this program. I use Anaconda's command prompt on a Windows 10 machine.

Program Details
The program takes user input for the city (e.g. Chicago), month for which the user wants to view data (e.g. January; also includes an 'all' option), and day for which the user wants to view data (e.g. Monday; also includes an 'all' option).

Upon receiving the user input, it goes ahead and asks the user if they want to view the raw data (5 rows of data initially) or not. Following the input received, the program prints the following details:

Most popular month Most popular day Most popular hour Most popular start station Most popular end station Most popular combination of start and end stations Total trip duration Average trip duration Types of users by number Types of users by gender (if available) The oldest user (if available) The youngest user (if available) The most common birth year amongst users (if available) Finally, the user is prompted with the choice of restarting the program or not.

Requirements Language: Python 3.6 or above Libraries: pandas, numpy, time Project Data new_york_city.csv - Dataset containing all bikeshare information for the city of New York provided by Udacity. washington.csv - Dataset containing all bikeshare information for the city of Washington provided by Udacity. Note: This does not include the 'Gender' or 'Birth Year' data. chicago.csv - Stored in the data folder, the chicago.csv file is the dataset containing all bikeshare information for the city of Chicago provided by Udacity. Built with Python 3.6.6 - The language used to develop this. pandas - One of the libraries used for this. numpy - One of the libraries used for this. time - One of the libraries used for this. Author Yosmery Gonzalez https://github.com/Yos83

Acknowledgements xhlow - xhlow's repository helped with understanding the structure and details of certain functions. philribbens - philribben's repository also added to better understanding of the structure for this project. pandas docs - pandas documentation was immensely helpful in understanding the implemention of pandas methods used in this project. Udacity - Udacity's Data Analyst Nanodegree program and their instructors were extremely helpful while I was pursuing this project.

