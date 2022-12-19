# JS311-VPP-Checkpoint2

## VOLUME PRECEDES PRICE

### Purpose
>> Volume Precedes Price will be a Stock Market volume flow application intended to help retail traders track unusual volume moves in the Market. This app will be used to CREATE a profile/log-in, READ live volume data, UPDATE their preferred tickers/watch list and DELETE unwanted or old data.

### Data Needs
>> The primary data needed for this project will be Users, Watch Lists (stock tickers) and live market data (outsourced market API, TBD). Within the Watch List table there must CRUD ability.

### Tables, Fields, and Relationships
* users (One)
    * Columns - user_id (PK), email, first_name, last_name, fav_tickers (FK: ticker_id)
* tickers (Many)
    * Columns - ticker_id (FK), added_by (FK: user_id), ticker_name, ticker_description
* watch_list (Join Table)
    * Columns - watchlist_user_id, watchlist_ticker_id

### Setting up DB + Connecting to Workbench + Seeding with Data
>> FOR GOOGLE CLOUD
* Take a look at the navigation menu (top-left) on the dashboard. You should see a lot of options.
* Locate the heading that reads "STORAGE" and click the "SQL" option.
* Click "CREATE INSTANCE" near the top of the page.
* Select "MySQL" from the two options.
* Fill out the form with the following information
* Instance ID: "your-instance-name"
* Root password: a password of your choice
* All other defaults can be left alone
* Click "Create" and wait for the instance to be set up. This can take a few minutes.
* When the instance is ready there will be a green checkmark next to it. Click on the name "first-instance" to see an overview.
* In this overview screen, look for a menu option called "DATABASES" and click it.
* Create a database called "admin".
>> We're almost done . . . we just need to allow the database instance to be accessed from outside of this console. To do that we need to whitelist our IP address.
Navigate to the "CONNECTIONS" tab.
* Look for the checkbox by "Public IP", we need to add a network.
* Find your IP address here and enter it into the dialog box with a name.
* Note that you will need to do this for each network you want to access the database from (home, work, ACA, Starbucks, wherever . . .)
* Make sure to click the save button. We're ready to go! We have a database set up in Google Cloud that can be accessed from anywhere.