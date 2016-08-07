# about
Scrape a web page to quickly populate a dataset.

# requirements
You need Ruby and the ability to install gems. I'm using Ruby 2.3.1 installed with [homebrew](http://brew.sh/) & [rbenv](http://rbenv.org/)

# use
Clone repo.
Make sure you have these gems:

    gem install nokogiri
    gem install httparty
    gem install pry

Then run from the project root:

    Ruby web_scraper.rb

__data.csv__ will be updated with whatever your dataset is targeting.
See code comments in __web_scraper.rb__ for more info.

# thanks
created by following [this tutorial](https://www.distilled.net/resources/web-scraping-with-ruby-and-nokogiri-for-beginners/)
