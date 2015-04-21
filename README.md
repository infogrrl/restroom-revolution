# restroom-revolution
*Restroom Revolution* is a mobile web site created to enable people to find gender-inclusive, accessible, and parenting-friendly restrooms on the University of Iowa campus.

This mobile web site was created by Kelly Thompson, Kassi Smith, and Bennett Magnino (listed in reverse alphabetical order) for their Mobile Web Design course in the University of Iowa School of Library and Information Science under the instruction of Dr. Haowei Hsieh. The idea for the app came from Avi Deol, a student in the University of Iowa School of Social Work. Avi started a campus-based group named Restroom Revolution in the spring of 2013 to collect data on accessbility features in campus restrooms, with an eye toward assisting community members to find bathrooms on the fly which fit their needs. You can find this group on facebook <a href="https://www.facebook.com/groups/152151204948156/">here</a>.

*PLEASE NOTE:* This app is no longer under active development.  However, we are contributing the code here so that others may reuse it under the specified license terms for the benefit of our communities.

*Technical stuff:*

This is a mobile website written in HTML with jQuery, which uses PHP to query a MySQL database.  

*What it includes:*

The HTML file which provides the pages for the mobile webiste, PHP scripts to query a relational database with restroom data, image files for the user interfaces (as .png files), and two data dumps of the test database we developed.  The data dumps are identical in content, but one is serialized as a .CSV file, and the other is a .SQL dump.

*What it requires to run:*

A LAMP server to host the HTML, PHP, and images on, and a new mysql database to restore the SQL dump into.  You will also need a Google Maps API key.

*What you need to do with the files: *

All passwords, server names, and Google Maps API key have been redacted and replaced with the word "REDACTED" in the files.  You will need to add your own credentials and addresses to the code as appropriate.  You'll need to update the database with your own data.  An entity-relationship diagram of the database is in the works and will be posted on this site when complete.
