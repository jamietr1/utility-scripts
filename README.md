# utility-scripts

## daily-article.sh
### Overview
Uses Gina Trapani's [todo.txt](http://todotxt.org/), this script selects 1 random article from my toread.txt file, displays the selected article, and then moves the article to the read.txt file.

### How I use this
- each time I get a magazine in the mail (or a new one arrives for my online subscriptions), I enter all of the **feature** articles into my toread.txt file using the todo.sh command.
- each morning, I run my `daily-article` script to select a random feature article to read that morning; the script picks and article and then automatically removes it from the toread.txt file and moves it to the read.txt file using todo.txt commands

### Future enhancements
- have the script email me the article name/source via mutt or similar
- add the script to launchd so that it runs overnight and I wake up with my random feature article in my inbox