<% if mountable? -%>
<%= camelized %>::Engine.routes.draw do
	if defined?(Rout) != nil
		Rout.find_each do |f|
			if (f.req_type == "get")
				get "#{f.path_name}"  => '#{f.path_source}'
			elsif (f.req_type == "post")
				post "#{f.path_name}"  => '#{f.path_source}'
			end
		end
	end
<% else -%>
Rails.application.routes.draw do
<% end -%>
end
