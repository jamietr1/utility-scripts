#!/bin/sh

# Setup some variables
TO_READ="/Users/jamietr/Dropbox/todo/toread.txt"
ARTICLE_CFG="/Users/jamietr/.articles.cfg"
TODO="/opt/homebrew/bin/todo.sh"

# How many lines in the toread.txt file?
task_len=$(wc -l < $TO_READ)

# Choose a random article from the list
article_line=$($TODO -d $ARTICLE_CFG list | head -n $task_len | /opt/homebrew/bin/shuf -n1)

# Grab information about the selected article
task_num=$(echo "$article_line" | sed -E 's/([0-9]+).*/\1/') 
article_title=$(echo "$article_line" | sed -E 's/[0-9]+[[:space:]](.*)/\1/')

# Move the article to the read.txt list
$TODO -d $ARTICLE_CFG do "$task_num" > /dev/null

# Display the selected article in the output
echo "Today's article is: $article_title"

#/opt/homebrew/bin/mutt -F /Users/jamietr/.mutt/.muttrc -s "Today's article is $article_title" jamietoddrubin@gmail.com </dev/null
