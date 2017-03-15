# attributes define info about something
# attributes has something called as precedence, which allows other attributes preference and allows us to over ride if required.
# apache is our cookbook, sites is our attribute
default["apache"]["sites"]["dineshsingh2"]  = { "site_title" => "DineshSingh2 site coming sonn","port" => 80, "domain" => "dineshsingh2.mylabserver.com"}
default["apache"]["sites"]["dineshsingh2b"] = { "site_title" => "DineshSingh2 site comming soon", "port" => 80, "domain" => "dineshsingh2b.mylabserver.com"}
default["apache"]["sites"]["dineshsingh3"]  = { "site_titel" => "DineshSingh3 site coming soon", "port" => 80, "domain" => "dineshsingh3.mylabserver.com"}

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
