module MyFlexboxHelper
	
	["md","xs","lg","sm"].each do |device|
		1..13.times do |val|
			define_method("grid_#{device}_#{val}") do |args = {}, &block|
				args[:class] = args.has_key? :class ? "#{args[:class]} col-#{device}-#{val}" : "col-#{device}-#{val}"
				attrs = args.map {|k,v| "#{k}=#{v}" }.join(" ")
				html= "<div #{args}"
				html+= "<div class='box'>"
				html+= capture(&block)
				html+= "</div></div>"
				html.html_safe
			end
		end
	end
end