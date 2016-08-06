require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'PRY'
require 'csv'

page = HTTParty.get('https://portland.craigslist.org/search/mis?s=0')

Pry.start(binding)
