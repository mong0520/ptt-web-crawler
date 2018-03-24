#!/bin/bash
for number in {501..2400..100}
do
    end=$(($number + 99))  
    mongoimport --db ptt --collection beauty --type json --file Beauty-${number}-${end}.json --jsonArray --mode merge --upsertFields  article_id
done

mongoimport --db ptt --collection beauty --type json --file Beauty-2401-2430.json.json --jsonArray --mode merge --upsertFields  article_id
