#!/bin/bash

mv Beauty.json Beauty.json.old
python PttWebCrawler/crawler.py -b Beauty -o $1
mongoimport --db ptt --collection beauty --type json --file Beauty.json --jsonArray --mode merge --upsertFields  article_id


# Run this command to make artical id be unique
# db.beauty.createIndex( { "article_id": 1 }, { unique: true } )i
