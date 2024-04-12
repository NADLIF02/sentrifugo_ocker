CREATE USER IF NOT EXISTS 'sentrifugo'@'%' IDENTIFIED BY 'howtoforge';
GRANT ALL ON sentrifugodb.* TO 'sentrifugo'@'%' IDENTIFIED BY 'howtoforge' WITH GRANT OPTION;
FLUSH PRIVILEGES;
