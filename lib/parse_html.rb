require 'nokogiri'
require 'open-uri'

#opens network connection to webpage, reads contents, parses HTML content using HTML method, and passes a Nokogiri DOM object
page = Nokogiri::HTML(open("http://rubyfu.net/content"))
#selects specific CSS elements in page object and extracts text content, removes spaces, tabs, and newline characters
page.css(".book .book-summary ul.summary li a, .book .book-summary ul.summary li span") {|css| puts css.text.strip.squeeze.gsub("\n", '')}
