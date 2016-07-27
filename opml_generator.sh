#!/bin/bash

echo '<?xml version="1.0" encoding="UTF-8"?>'
echo '<opml version="1.0">'
echo '  <head>'
echo '    <title>RSS subscriptions for hisaaki_isihara@yahoo.co.jp</title>'
echo "    <dateCreated>`LANG=C date`</dateCreated>"
echo '    <ownerEmail>nobody@example.com</ownerEmail>'
echo '  </head>'
echo '  <body>'
echo '  <outline text="Craigslist Search Results" title="Craigslist Search Results">'

while read QUERY; do
  ENCODED_QUERIES=`echo $QUERY|perl -MURI::Escape -lne 'print uri_escape($_)'`
  while read REGION; do
    echo "    <outline text=\"Craigslist $REGION\" title=\"Craigslist $ENCODED_QUERIES\" type=\"rss\" xmlUrl=\"http://$REGION.craigslist.org/search/mca?format=rss&amp;query=$ENCODED_QUERIES\" htmlUrl=\"https://$REGION.craigslist.org/search/mca?&amp;query=$ENCODED_QUERIES\" />"
  done < regions.txt
done < queries.txt | sort

echo '    </outline>'
echo '  </body>'
echo '</opml>'
