#!/bin/bash

mv Beauty.json Beauty.json.old
python PttWebCrawler/crawler.py -b Beauty -o $1
mongoimport --db ptt --collection beauty --type json --file Beauty.json --jsonArray --mode=upsert
