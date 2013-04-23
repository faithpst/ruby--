require 'rubygems'
require 'mechanize'
require 'logger'

agent = Mechanize.new
agent.log = Logger.new "mech.log"
agent.user_agent_alias = 'Linux Mozilla'

page = agent.get "http://www.google.com/"
search_form = page.form_with :name => "f"
search_form.field_with(:name => "q").value = "hello"

search_results = agent.submit search_form

puts search_results.body
