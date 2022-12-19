# JS311-VPP-Checkpoint2

## VOLUME PRECEDES PRICE

### Purpose
>> Volume Precedes Price will be a Stock Market volume flow application intended to help retail traders track unusual volume moves in the Market. This app will be used to CREATE a profile/log-in, READ live volume data, UPDATE their preferred tickers/watch list and DELETE unwanted or old data.

### Data Needs
>> The primary data needed for this project will be Users, Watch Lists (stock tickers) and live market data (outsourced market API, TBD). Within the Watch List table there must CRUD ability.

### Tables, Fields, and Relationships
>> users (One)
    >> Columns - user_id (PK), email, first_name, last_name, fav_tickers (FK: ticker_id)
>> tickers (Many)
    >> Columns - ticker_id (FK), added_by (FK: user_id), ticker_name, ticker_description
>> watch_list (Join Table)
    >> Columns - watchlist_user_id, watchlist_ticker_id