DROP TABLE IF EXISTS users, tickers;

CREATE TABLE users (
  user_id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  fav_tickers VARCHAR(50),
  PRIMARY KEY (user_id)
  FOREIGN KEY (fav_tickers)
  REFERENCES tickers (ticker_id)
);

CREATE TABLE tickers (
  ticker_id VARCHAR(50) NOT NULL,
  added_by INT,
  ticker_name VARCHAR(50),
  ticker_description VARCHAR(150),

  PRIMARY KEY (ticker_id)
  FOREIGN KEY (added_by)
  REFERENCES users (user_id)
);

INSERT INTO users
	(email, first_name, last_name, fav_tickers)
VALUES 
  ("johnnyculbrethjr@yahoo.com", "Johnny", "Culbreth", "TSLA"),
  ("testuser@gmail.com", "John", "Doe", "AAPL");
  
INSERT INTO tickers
	(added_by, ticker_name, ticker_description)
VALUES 
  ("-", "TSLA", "This is the ticker description"), 
  ("-", "AAPL", "This is the ticker description");