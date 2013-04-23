require 'rubygems'
require 'mechanize'

agent = Mechanize.new {  |agent|
	agent.user_agent_alias = 'Mac Safari'
}

agent.get("http://rs.xidian.edu.cn/forum.php?mod=forumdisplay&fid=110")  do |page|
	page.links_with(:dom_class => "xst").each do	|link|
         puts  link.text
         puts  link.href
	end
end