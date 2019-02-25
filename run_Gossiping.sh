#!/bin/bash

mv Gossiping.json Gossiping.json.old
python3 PttWebCrawler/crawler.py -b Gossiping -o $1
mongoimport --db ptt --collection Gossiping --type json --file Gossiping.json --jsonArray --mode merge --upsertFields  article_id


# Run this command to make artical id be unique
# db.beauty.createIndex( { "article_id": 1 }, { unique: true } )i
