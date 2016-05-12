require 'rubygems'
require './parse/rss'
require 'benchmark'

puts Benchmark.measure {
  url = "http://golangweekly.com/rss/1g2bo910"
  parserss = Parse::Rss.new(url)

  puts("The Title is: #{parserss.get_title}\n")
  puts("The Description is: #{parserss.get_description}\n")
  puts("The Link is: #{parserss.get_link}\n")

  categories = parserss.get_categories
  categories.each do |category|
    puts("The Categories is #{category}\n")
  end

  puts("The total of Items is: #{parserss.get_total_items}\n\n")
}
