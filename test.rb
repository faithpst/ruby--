require 'rubygems'
require 'mechanize'

agent = Mechanize.new
uri = URI 'http://http://www.google.com.hk/'

page = agent.get(uri)

puts page.body