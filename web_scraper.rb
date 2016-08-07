require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'csv'

# this is how we request the page we're going to scrape
page = HTTParty.get('https://portland.craigslist.org/search/bar?s=100')

# transform our http response into nokogiri object
parse_page = Nokogiri::HTML(page)

# empty array to store the data we want from the scrape
page_array = []

# examine page to see where the data you want is located in the dom
# parse that data and push to usable array
parse_page.css('.content').css('.row').css('.hdrlnk').map do |a|
    post_name = a.text
    page_array.push(post_name)
end

# push the array into a CSV file
CSV.open('data.csv', 'w') do |csv|
    csv << page_array
end
